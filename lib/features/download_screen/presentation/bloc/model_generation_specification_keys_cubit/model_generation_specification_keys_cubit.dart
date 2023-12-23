import 'package:au2rides/features/download_screen/data/models/model_generation_specification_keys/model_generation_specification_keys_model.dart';
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/clear_model_generation_specification_keys_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/get_all_model_generation_specification_keys_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/save_model_generation_specification_keys_in_local_db_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';

part 'model_generation_specification_keys_state.dart';

part 'model_generation_specification_keys_cubit.freezed.dart';

@injectable
class ModelGenerationSpecificationKeysCubit
    extends Cubit<ModelGenerationSpecificationKeysState> {
  ModelGenerationSpecificationKeysCubit(
      this.clearModelGenerationSpecificationKeysUseCase,
      this.getAllModelGenerationSpecificationKeysUseCase,
      this.saveModelGenerationSpecificationKeysInLocalDbUseCase)
      : super(const ModelGenerationSpecificationKeysState.initial());
  ClearModelGenerationSpecificationKeysUseCase
      clearModelGenerationSpecificationKeysUseCase;
  GetAllModelGenerationSpecificationKeysUseCase
      getAllModelGenerationSpecificationKeysUseCase;
  SaveModelGenerationSpecificationKeysInLocalDbUseCase
      saveModelGenerationSpecificationKeysInLocalDbUseCase;

  Future clearModelGenerationSpecificationKeysInLocalDatabase(
      {required String tableName, required languageId}) async {
    try {
      await clearModelGenerationSpecificationKeysUseCase(
          param: [tableName, languageId]);
    } catch (e) {
      print(e);
    }
  }

  Future getAllModelGenerationSpecificationKeysFromNetworkDB(
      {required String appLang, required tableDefinitions}) async {
    try {
      tableDefinitions =
          (tableDefinitions as CheckPrimaryDataBodyModel).toJson();
      final response = await getAllModelGenerationSpecificationKeysUseCase(
          param: [appLang, tableDefinitions]);
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => ModelGenerationSpecificationKeysModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }
  }

  Future saveAllModelGenerationSpecificationKeysInLocalDB(
      {required String tableName, required values}) async {
    try {
      final response =
          await saveModelGenerationSpecificationKeysInLocalDbUseCase(
              param: [tableName, values]);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
