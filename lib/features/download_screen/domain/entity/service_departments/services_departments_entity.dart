import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'services_departments_entity.g.dart';

@JsonSerializable()
class ServiceDepartmentsEntity extends Equatable {
  @JsonKey(name: "service_department_id")
  final int serviceDepartmentId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "service_department_name")
  final String serviceDepartmentName;

  const ServiceDepartmentsEntity(
      {required this.serviceDepartmentId,
      required this.languageId,
      required this.serviceDepartmentName});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [serviceDepartmentId, languageId, serviceDepartmentName];
}
