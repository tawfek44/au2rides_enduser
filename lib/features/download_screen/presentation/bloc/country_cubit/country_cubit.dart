import 'package:au2rides/features/splash_screen/data/models/check_primary_data_body_model.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/storage/local/sqlite.dart';
import '../../../data/models/country/country_model.dart';
import '../../../domain/usecase/country/clear_all_data_country_usecase.dart';
import '../../../domain/usecase/country/country_usecase.dart';
import '../../../domain/usecase/country/save_country_usecase.dart';
import '../../../domain/usecase/currency/currency_usecase.dart';

part 'country_state.dart';

part 'country_cubit.freezed.dart';

@injectable
class CountryCubit extends Cubit<CountryState> {
  CountryCubit(
      this.countryUseCase,
      this.saveCountryUseCase,
      this.clearCountryUseCase,)
      : super(const CountryState.initial());
  CountryUseCase countryUseCase;
  SaveCountriesUseCase saveCountryUseCase;
  ClearCountryUseCase clearCountryUseCase;

  Future getAllCountries({required String lang,required tableDefinitions}) async {
    try {
      emit(const CountryState.loading());
      tableDefinitions = (tableDefinitions as CheckPrimaryDataBodyModel).toJson();
      final response = await countryUseCase(param: [lang,tableDefinitions]);
      if(!(response is Left)){
        emit(CountryState.loaded(response));
        return response.data["data_rows"]
            .cast<Map<String, dynamic>>()
            .map((e) => CountryModel.fromJson(e))
            .toList();
      }
      else{
        return Left(response);
      }

    } catch (e) {
      emit(CountryState.error(e));
    }
  }

  Future updateUserLanguageTable({required appLanguage}) async {
    try {
      await Au2ridesDatabase.instance.updateData(
          queryText:
              "UPDATE $languageTableName SET is_downloaded = ? WHERE language_code = ?",
          values: [1, appLanguage]);
    } catch (e) {
      print(e);
    }
  }

  Future updateTableDefinitionTable({required table}) async {
    try {
      await Au2ridesDatabase.instance.updateData(
          queryText:
              "UPDATE $tableDefinitionsTableName SET table_id = ?, table_name = ?, language_id = ?, schema_version = ?, data_version = ? WHERE table_name = ?",
          values: [
            table.tableId,
            table.tableName,
            table.languageId,
            table.schemaVersion,
            table.dataVersion,
            table.tableName
          ]);
    } catch (e) {
      print(e);
    }
  }

  Future saveCountriesInLocalDatabase({required dynamic values}) async {
    try {
      return await saveCountryUseCase(param: values);
      //emit(const CountryState.savedInLocalDB());
    } catch (e) {
      emit(CountryState.error(e));
    }
  }

  Future clearCountriesInLocalDatabase({required String tableName,required languageId}) async {
    try {
      await clearCountryUseCase(param: [tableName,languageId]);
    } catch (e) {
      print(e);
    }
  }




}
