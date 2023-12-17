import 'package:au2rides/features/download_screen/data/models/acquisition_types/acquisition_types_model.dart';
import 'package:au2rides/features/download_screen/data/models/fuel_brands/fuel_brands_model.dart';
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/clear_fuel_brands_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/get_all_fuel_brands_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/save_fuel_brands_in_local_db_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';
import '../../../domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart';
import '../../../domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart';

part 'fuel_brands_state.dart';

part 'fuel_brands_cubit.freezed.dart';

@injectable
class FuelBrandsCubit extends Cubit<FuelBrandsState> {
  FuelBrandsCubit(this.clearFuelBrandsUseCase,
      this.getAllFuelBrandUseCase, this.saveFuelBrandInLocalDbUseCase)
      : super(const FuelBrandsState.initial());
  ClearFuelBrandsUseCase clearFuelBrandsUseCase;
  GetAllFuelBrandUseCase getAllFuelBrandUseCase;
  SaveFuelBrandInLocalDbUseCase saveFuelBrandInLocalDbUseCase;

  Future clearFuelBrandsInLocalDatabase(
      {required String tableName, required languageId}) async {
    try {
      await clearFuelBrandsUseCase(param: [tableName, languageId]);
    } catch (e) {
      print(e);
    }
  }

  Future getAllAcquisitionTypesFromNetworkDB(
      {required String appLang, required tableDefinitions}) async {
    try {
      tableDefinitions =
          (tableDefinitions as CheckPrimaryDataBodyModel).toJson();
      final response = await getAllFuelBrandUseCase(
          param: [appLang, tableDefinitions]);
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => FuelBrandsModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }
  }

  Future saveAllAcquisitionTypesInLocalDB(
      {required String tableName, required values}) async {
    try {
      final response = await saveFuelBrandInLocalDbUseCase(
          param: [tableName, values]);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
