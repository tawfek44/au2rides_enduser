class WorkflowStatusesFields {
  static const String workflowStatusId = "workflow_status_id";
  static const String languageId = "language_id";
  static const String workflowStatusName = "workflow_status_name";
}

class WorkflowStatuses {
  final int workflowStatusId;
  final int languageId;
  final String workflowStatusName;

  WorkflowStatuses(
      {required this.workflowStatusId,
      required this.languageId,
      required this.workflowStatusName});

  Map<String, Object> toJson() => {
        WorkflowStatusesFields.workflowStatusId: workflowStatusId,
        WorkflowStatusesFields.languageId: languageId,
        WorkflowStatusesFields.workflowStatusName: workflowStatusName,
      };
}
