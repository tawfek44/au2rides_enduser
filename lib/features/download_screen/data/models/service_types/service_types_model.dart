import 'package:au2rides/features/download_screen/domain/entity/acquisition_types/acquisition_types_entity.dart';
import 'package:au2rides/features/download_screen/domain/entity/service_types/service_types_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/currency/currency_entity.dart';

part 'service_types_model.g.dart';

@JsonSerializable()
class ServiceTypesModel extends ServiceTypesEntity {
  const ServiceTypesModel(
      {required super.serviceTypeId,
      required super.languageId,
      required super.serviceTypeName});

  factory ServiceTypesModel.fromJson(final Map<String, dynamic> json) {
    return _$ServiceTypesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ServiceTypesModelToJson(this);
}
