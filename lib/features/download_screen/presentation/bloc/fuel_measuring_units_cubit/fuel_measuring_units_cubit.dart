import 'package:au2rides/features/download_screen/data/models/acquisition_types/acquisition_types_model.dart';
import 'package:au2rides/features/download_screen/data/models/fuel_measuring_units/fuel_measuring_units_model.dart';
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/fuel_measuring_units/clear_fuel_measuring_units_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/fuel_measuring_units/get_all_fuel_measuring_units_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/fuel_measuring_units/save_fuel_measuring_units_in_local_db_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';
import '../../../domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart';
import '../../../domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart';

part 'fuel_measuring_units_state.dart';

part 'fuel_measuring_units_cubit.freezed.dart';

@injectable
class FuelMeasuringUnitsCubit extends Cubit<FuelMeasuringUnitsState> {
  FuelMeasuringUnitsCubit(
      this.clearFuelMeasuringUnitsUseCase,
      this.getAllFuelMeasuringUnitsUseCase,
      this.saveFuelMeasuringUnitsInLocalDbUseCase)
      : super(const FuelMeasuringUnitsState.initial());
  ClearFuelMeasuringUnitsUseCase clearFuelMeasuringUnitsUseCase;
  GetAllFuelMeasuringUnitsUseCase getAllFuelMeasuringUnitsUseCase;
  SaveFuelMeasuringUnitsInLocalDbUseCase saveFuelMeasuringUnitsInLocalDbUseCase;


  Future clearFuelMeasuringUnitsInLocalDatabase({required String tableName,required languageId}) async {
    try {
      await clearFuelMeasuringUnitsUseCase(param: [tableName,languageId]);
    } catch (e) {
      print(e);
    }
  }

  Future getAllFuelMeasuringUnitsFromNetworkDB({required String appLang,required tableDefinitions}) async {
    try {
      tableDefinitions = (tableDefinitions as CheckPrimaryDataBodyModel).toJson();
      final response = await getAllFuelMeasuringUnitsUseCase(param: [appLang,tableDefinitions]);
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => FuelMeasuringUnitsModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }
  }

  Future saveFuelMeasuringUnitsInLocalDB({required String tableName,required values}) async {
    try {
      final response =await saveFuelMeasuringUnitsInLocalDbUseCase(param: [tableName,values]);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
