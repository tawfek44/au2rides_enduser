import 'package:au2rides/features/download_screen/data/models/fuel_consumption_unit_types/fuel_consumption_unit_types_model.dart';
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/clear_fuel_consumption_unit_types_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/get_all_fuel_consumption_unit_types_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/save_fuel_consumption_unit_types_in_local_db_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';
part 'fuel_consumption_unit_types_state.dart';

part 'fuel_consumption_unit_types_cubit.freezed.dart';

@injectable
class FuelConsumptionUnitTypesCubit extends Cubit<FuelConsumptionUnitTypesState> {
  FuelConsumptionUnitTypesCubit(
      this.clearFuelConsumptionUnitTypesUseCase,
      this.getAllFuelConsumptionUnitTypesUseCase,
      this.saveFuelConsumptionUnitTypesInLocalDbUseCase)
      : super(const FuelConsumptionUnitTypesState.initial());
  ClearFuelConsumptionUnitTypesUseCase clearFuelConsumptionUnitTypesUseCase;
  GetAllFuelConsumptionUnitTypesUseCase getAllFuelConsumptionUnitTypesUseCase;
  SaveFuelConsumptionUnitTypesInLocalDbUseCase saveFuelConsumptionUnitTypesInLocalDbUseCase;


  Future clearFuelConsumptionUnitTypesInLocalDatabase({required String tableName,required languageId}) async {
    try {
      await clearFuelConsumptionUnitTypesUseCase(param: [tableName,languageId]);
    } catch (e) {
      print(e);
    }
  }

  Future getAllFuelConsumptionUnitTypesFromNetworkDB({required String appLang,required tableDefinitions}) async {
    try {
      tableDefinitions = (tableDefinitions as CheckPrimaryDataBodyModel).toJson();
      final response = await getAllFuelConsumptionUnitTypesUseCase(param: [appLang,tableDefinitions]);
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => FuelConsumptionUnitTypesModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }
  }

  Future saveAllFuelConsumptionUnitTypesInLocalDB({required String tableName,required values}) async {
    try {
      final response =await saveFuelConsumptionUnitTypesInLocalDbUseCase(param: [tableName,values]);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
