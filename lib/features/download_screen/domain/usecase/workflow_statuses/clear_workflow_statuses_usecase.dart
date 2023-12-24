import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/workflow_statuses_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClearWorkflowStatusesUseCase implements UseCase<dynamic, dynamic> {
  final WorkflowStatusesRepository _workflowStatusesRepository;

  ClearWorkflowStatusesUseCase(this._workflowStatusesRepository);

  @override
  call({param}) async {
    final response =
        await _workflowStatusesRepository.clearWorkflowStatusesFromLocalDB(
            tableName: param[0], languageId: param[1]);
    return response;
  }
}
