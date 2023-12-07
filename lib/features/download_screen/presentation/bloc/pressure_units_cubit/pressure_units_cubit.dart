import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/features/download_screen/data/models/pressure_units/pressure_units_model.dart';
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/clear_all_pressure_units_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/get_all_pressure_units_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/save_pressure_units_in_local_db_usecase.dart';
import 'package:au2rides/features/splash_screen/data/models/check_primary_data_body_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../data/models/country/country_model.dart';
import '../../../domain/usecase/country/country_usecase.dart';

part 'pressure_units_state.dart';

part 'pressure_units_cubit.freezed.dart';

@injectable
class PressureUnitsCubit extends Cubit<PressureUnitsState> {
  PressureUnitsCubit(
      this.countryUseCase,
      this.savePressureUnitsInLocalDbUseCase,
      this.clearPressureUnitsUseCase,
      this.getAllPressureUnitsUseCase,)
      : super(const PressureUnitsState.initial());
  CountryUseCase countryUseCase;
  SavePressureUnitsInLocalDbUseCase savePressureUnitsInLocalDbUseCase;
  ClearPressureUnitsUseCase clearPressureUnitsUseCase;
  GetAllPressureUnitsUseCase getAllPressureUnitsUseCase;

  Future getAllPressureUnitsData({required String lang,required tableDefinitions}) async {
    try {
      emit(const PressureUnitsState.loading());
      tableDefinitions = (tableDefinitions as CheckPrimaryDataBodyModel).toJson();
      final response = await getAllPressureUnitsUseCase(param: [lang,tableDefinitions]);
      emit(PressureUnitsState.loaded(response));
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => PressureUnitsModel.fromJson(e))
          .toList();
    } catch (e) {
      emit(PressureUnitsState.error(e));
    }
  }

  Future savePressureUnitsInLocalDatabase({required dynamic values, required tableName}) async {
    try {
      return await savePressureUnitsInLocalDbUseCase(param: [tableName,values]);
      //emit(const CountryState.savedInLocalDB());
    } catch (e) {
      //emit(CountryState.error(e));
    }
  }

  Future clearPressureUnitsInLocalDatabase({required String tableName}) async {
    try {
      await clearPressureUnitsUseCase(param: tableName);
    } catch (e) {
      print(e);
    }
  }




}
