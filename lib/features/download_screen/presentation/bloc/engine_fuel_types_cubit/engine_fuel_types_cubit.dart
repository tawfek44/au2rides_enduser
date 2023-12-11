import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';
import '../../../data/models/engine_fuel_types/engine_fuel_types_model.dart';
import '../../../domain/usecase/engine_fuel_types/engine_fuel_types_usecase.dart';
import '../../../domain/usecase/engine_fuel_types/get_all_engine_fuel_types_usecase.dart';
import '../../../domain/usecase/engine_fuel_types/save_engine_fuel_types_in_local_db_usecase.dart';

part 'engine_fuel_types_state.dart';

part 'engine_fuel_types_cubit.freezed.dart';

@injectable
class EngineFuelTypesCubit extends Cubit<EngineFuelTypesState> {
  EngineFuelTypesCubit(
      this.clearEngineFuelTypesUseCase,
      this.getAllEngineFuelTypesUseCase,
      this.saveEngineFuelTypesInLocalDbUseCase)
      : super(const EngineFuelTypesState.initial());
  ClearEngineFuelTypesUseCase clearEngineFuelTypesUseCase;
  GetAllEngineFuelTypesUseCase getAllEngineFuelTypesUseCase;
  SaveEngineFuelTypesInLocalDbUseCase saveEngineFuelTypesInLocalDbUseCase;


  Future clearEngineFuelTypesInLocalDatabase({required String tableName,required languageId}) async {
    try {
      await clearEngineFuelTypesUseCase(param: [tableName,languageId]);
    } catch (e) {
      print(e);
    }
  }

  Future getAllEngineFuelTypesFromNetworkDB({required String appLang,required tableDefinitions}) async {
    try {
      tableDefinitions = (tableDefinitions as CheckPrimaryDataBodyModel).toJson();
      final response = await getAllEngineFuelTypesUseCase(param: [appLang,tableDefinitions]);
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => EngineFuelTypesModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }
  }

  Future saveAllEngineFuelTypesInLocalDB({required String tableName,required values}) async {
    try {
      final response =await saveEngineFuelTypesInLocalDbUseCase(param: [tableName,values]);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
