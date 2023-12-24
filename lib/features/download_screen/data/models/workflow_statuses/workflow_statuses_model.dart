import 'package:au2rides/features/download_screen/domain/entity/acquisition_types/acquisition_types_entity.dart';
import 'package:au2rides/features/download_screen/domain/entity/workflow_statuses/workflow_statuses_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/currency/currency_entity.dart';

part 'workflow_statuses_model.g.dart';

@JsonSerializable()
class WorkflowStatusesModel extends WorkflowStatusesEntity {
  const WorkflowStatusesModel({required super.workflowStatusId, required super.languageId, required super.workflowStatusName});
  factory WorkflowStatusesModel.fromJson(final Map<String, dynamic> json) {
    return _$WorkflowStatusesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WorkflowStatusesModelToJson(this);

}
