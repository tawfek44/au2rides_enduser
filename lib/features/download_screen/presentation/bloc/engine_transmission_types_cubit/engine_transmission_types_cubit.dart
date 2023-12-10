import 'package:au2rides/features/download_screen/data/models/acquisition_types/acquisition_types_model.dart';
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/engine_transmission_types_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/get_all_engine_transmission_types_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/save_engine_transmission_types_in_local_db_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';
import '../../../data/models/engine_transmission_types/engine_transmission_types_model.dart';

part 'engine_transmission_types_state.dart';

part 'engine_transmission_types_cubit.freezed.dart';

@injectable
class EngineTransmissionTypesCubit extends Cubit<EngineTransmissionTypesState> {
  EngineTransmissionTypesCubit(
      this.clearEngineTransmissionTypesUseCase,
      this.getAllEngineTransmissionTypesUseCase,
      this.saveEngineTransmissionTypesInLocalDbUseCase)
      : super(const EngineTransmissionTypesState.initial());
  ClearEngineTransmissionTypesUseCase clearEngineTransmissionTypesUseCase;
  GetAllEngineTransmissionTypesUseCase getAllEngineTransmissionTypesUseCase;
  SaveEngineTransmissionTypesInLocalDbUseCase saveEngineTransmissionTypesInLocalDbUseCase;


  Future clearEngineTransmissionTypesInLocalDatabase({required String tableName,required languageId}) async {
    try {
      await clearEngineTransmissionTypesUseCase(param: [tableName,languageId]);
    } catch (e) {
      print(e);
    }
  }

  Future getAllEngineTransmissionTypesFromNetworkDB({required String appLang,required tableDefinitions}) async {
    try {
      tableDefinitions = (tableDefinitions as CheckPrimaryDataBodyModel).toJson();
      final response = await getAllEngineTransmissionTypesUseCase(param: [appLang,tableDefinitions]);
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => EngineTransmissionTypesModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }
  }

  Future saveAllEngineTransmissionTypesInLocalDB({required String tableName,required values}) async {
    try {
      final response =await saveEngineTransmissionTypesInLocalDbUseCase(param: [tableName,values]);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
