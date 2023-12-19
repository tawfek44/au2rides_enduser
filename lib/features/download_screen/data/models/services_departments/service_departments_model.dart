import 'package:au2rides/features/download_screen/domain/entity/acquisition_types/acquisition_types_entity.dart';
import 'package:au2rides/features/download_screen/domain/entity/service_departments/services_departments_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/currency/currency_entity.dart';

part 'service_departments_model.g.dart';

@JsonSerializable()
class ServiceDepartmentsModel extends ServiceDepartmentsEntity {
  const ServiceDepartmentsModel({required super.serviceDepartmentId, required super.languageId, required super.serviceDepartmentName});

  factory ServiceDepartmentsModel.fromJson(final Map<String, dynamic> json) {
    return _$ServiceDepartmentsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ServiceDepartmentsModelToJson(this);

}
