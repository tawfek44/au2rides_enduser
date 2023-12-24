import 'package:au2rides/features/download_screen/data/models/acquisition_types/acquisition_types_model.dart';
import 'package:au2rides/features/download_screen/data/models/workflow_statuses/workflow_statuses_model.dart';
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/engine_transmission_types_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/get_all_engine_transmission_types_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/clear_workflow_statuses_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/get_all_workflow_statuses_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/save_workflow_statuses_in_local_db_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';
import '../../../domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart';
import '../../../domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart';

part 'workflow_statuses_state.dart';

part 'workflow_statuses_cubit.freezed.dart';

@injectable
class WorkflowStatusesCubit extends Cubit<WorkflowStatusesState> {
  WorkflowStatusesCubit(
      this.clearWorkflowStatusesUseCase,
      this.getAllWorkflowStatusesUseCase,
      this.saveWorkflowStatusesInLocalDbUseCase)
      : super(const WorkflowStatusesState.initial());
  ClearWorkflowStatusesUseCase clearWorkflowStatusesUseCase;
  GetAllWorkflowStatusesUseCase getAllWorkflowStatusesUseCase;
  SaveWorkflowStatusesInLocalDbUseCase saveWorkflowStatusesInLocalDbUseCase;


  Future clearWorkflowStatusesInLocalDatabase({required String tableName,required languageId}) async {
    try {
      await clearWorkflowStatusesUseCase(param: [tableName,languageId]);
    } catch (e) {
      print(e);
    }
  }

  Future getAllWorkflowStatusesFromNetworkDB({required String appLang,required tableDefinitions}) async {
    try {
      tableDefinitions = (tableDefinitions as CheckPrimaryDataBodyModel).toJson();
      final response = await getAllWorkflowStatusesUseCase(param: [appLang,tableDefinitions]);
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => WorkflowStatusesModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }
  }

  Future saveAllWorkflowStatusesInLocalDB({required String tableName,required values}) async {
    try {
      final response =await saveWorkflowStatusesInLocalDbUseCase(param: [tableName,values]);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
