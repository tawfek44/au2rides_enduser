import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/workflow_statuses_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/currency_repository.dart';

@injectable
class SaveWorkflowStatusesInLocalDbUseCase extends UseCase<dynamic, dynamic> {
  final WorkflowStatusesRepository _workflowStatusesRepository;

  SaveWorkflowStatusesInLocalDbUseCase(this._workflowStatusesRepository);

  @override
  Future call({param}) async {
    final response =
        await _workflowStatusesRepository.saveWorkflowStatusesInLocalDatabase(tableName: param[0],values: param[1]);
    return response;
  }
}
