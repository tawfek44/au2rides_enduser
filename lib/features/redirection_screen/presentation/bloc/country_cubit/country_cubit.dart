import 'package:au2rides/core/resources/data_state.dart';
import 'package:au2rides/features/language_screen/domain/entities/language_entity.dart';
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart';
import 'package:au2rides/features/language_screen/domain/use_cases/language_use_case.dart';
import 'package:au2rides/features/redirection_screen/domain/entity/country_entity.dart';
import 'package:au2rides/features/redirection_screen/domain/usecase/clear_all_data_country_usecase.dart';
import 'package:au2rides/features/redirection_screen/domain/usecase/country_usecase.dart';
import 'package:au2rides/features/redirection_screen/domain/usecase/currency_usecase.dart';
import 'package:au2rides/features/redirection_screen/domain/usecase/get_all_currencies_usecase.dart';
import 'package:au2rides/features/redirection_screen/domain/usecase/save_country_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/storage/local/sqlite.dart';
import '../../../data/models/country_model.dart';
import '../../../domain/usecase/save_currencies_in_local_db_usecase.dart';

part 'country_state.dart';

part 'country_cubit.freezed.dart';

@injectable
class CountryCubit extends Cubit<CountryState> {
  CountryCubit(
      this.countryUseCase,
      this.saveCountryUseCase,
      this.clearCountryUseCase,
      this.clearCurrencyUseCase,
      this.getAllCurrencyUseCase,
      this.saveCurrenciesInLocalDbUseCase)
      : super(const CountryState.initial());
  CountryUseCase countryUseCase;
  SaveCountriesUseCase saveCountryUseCase;
  ClearCountryUseCase clearCountryUseCase;
  ClearCurrencyUseCase clearCurrencyUseCase;
  GetAllCurrencyUseCase getAllCurrencyUseCase;
  SaveCurrenciesInLocalDbUseCase saveCurrenciesInLocalDbUseCase;

  Future getAllCountries({required String lang}) async {
    try {
      emit(const CountryState.loading());
      final response = await countryUseCase(param: lang);
      emit(CountryState.loaded(response));
      return response.data
          .cast<Map<String, dynamic>>()
          .map((e) => CountryModel.fromJson(e))
          .toList();
    } catch (e) {
      emit(CountryState.error(e));
    }
  }

  Future updateUserLanguageTable({required appLanguage}) async {
    try {
      await Au2ridesDatabase.instance.updateData(
          queryText:
              "UPDATE $languageTableName SET is_downloaded = ? WHERE language_code = ?",
          values: [true, appLanguage]);
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

  Future clearCountriesInLocalDatabase({required String tableName}) async {
    try {
      await clearCountryUseCase(param: tableName);
    } catch (e) {
      print(e);
    }
  }




}
