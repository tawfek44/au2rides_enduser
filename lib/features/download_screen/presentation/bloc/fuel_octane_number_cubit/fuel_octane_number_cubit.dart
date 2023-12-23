import 'package:au2rides/features/download_screen/data/models/acquisition_types/acquisition_types_model.dart';
import 'package:au2rides/features/download_screen/data/models/fuel_octane_number/fuel_octane_number_model.dart';
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/engine_transmission_types_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/get_all_engine_transmission_types_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/clear_fuel_octane_number_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/get_all_fuel_octane_number_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/save_fuel_octane_number_in_local_db_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';
import '../../../data/models/currency/currency_model.dart';
import '../../../domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart';
import '../../../domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart';
import '../../../domain/usecase/currency/currency_usecase.dart';
import '../../../domain/usecase/currency/get_all_currencies_usecase.dart';
import '../../../domain/usecase/currency/save_currencies_in_local_db_usecase.dart';

part 'fuel_octane_number_state.dart';

part 'fuel_octane_number_cubit.freezed.dart';

@injectable
class FuelOctaneNumberCubit extends Cubit<FuelOctaneNumberState> {
  FuelOctaneNumberCubit(
      this.clearFuelOctaneNumberUseCase,
      this.getAllFuelOctaneNumberUseCase,
      this.saveFuelOctaneNumberInLocalDbUseCase)
      : super(const FuelOctaneNumberState.initial());
  ClearFuelOctaneNumberUseCase clearFuelOctaneNumberUseCase;
  GetAllFuelOctaneNumberUseCase getAllFuelOctaneNumberUseCase;
  SaveFuelOctaneNumberInLocalDbUseCase saveFuelOctaneNumberInLocalDbUseCase;


  Future clearFuelOctaneNumberInLocalDatabase({required String tableName,required languageId}) async {
    try {
      await clearFuelOctaneNumberUseCase(param: [tableName,languageId]);
    } catch (e) {
      print(e);
    }
  }

  Future getAllFuelOctaneNumberFromNetworkDB({required String appLang,required tableDefinitions}) async {
    try {
      tableDefinitions = (tableDefinitions as CheckPrimaryDataBodyModel).toJson();
      final response = await getAllFuelOctaneNumberUseCase(param: [appLang,tableDefinitions]);
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => FuelOctaneNumberModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }
  }

  Future saveAllFuelOctaneNumberInLocalDB({required String tableName,required values}) async {
    try {
      final response =await saveFuelOctaneNumberInLocalDbUseCase(param: [tableName,values]);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
