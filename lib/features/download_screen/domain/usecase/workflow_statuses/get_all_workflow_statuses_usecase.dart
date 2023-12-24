import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/workflow_statuses_repository.dart';
import 'package:injectable/injectable.dart';
@injectable
class GetAllWorkflowStatusesUseCase implements UseCase<dynamic,dynamic>{
  final WorkflowStatusesRepository _workflowStatusesRepository;

  GetAllWorkflowStatusesUseCase(this._workflowStatusesRepository);

  @override
   call({param}) async {
    final response = await _workflowStatusesRepository.getWorkflowStatuses(lang: param[0],tableDefinitions: param[1]);
    return response;
  }

}