import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workflow_statuses_entity.g.dart';

@JsonSerializable()
class WorkflowStatusesEntity extends Equatable {
  @JsonKey(name: "workflow_status_id")
  final int workflowStatusId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "workflow_status_name")
  final String workflowStatusName;

  const WorkflowStatusesEntity(
      {required this.workflowStatusId,
      required this.languageId,
      required this.workflowStatusName});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [workflowStatusId, languageId, workflowStatusName];
}
