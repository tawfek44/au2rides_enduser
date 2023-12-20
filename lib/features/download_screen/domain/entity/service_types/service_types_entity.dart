import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_types_entity.g.dart';

@JsonSerializable()
class ServiceTypesEntity extends Equatable {
  @JsonKey(name: "service_type_id")
  final int serviceTypeId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "service_type_name")
  final String serviceTypeName;

  const ServiceTypesEntity(
      {required this.serviceTypeId,
      required this.languageId,
      required this.serviceTypeName});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [serviceTypeId, languageId, serviceTypeName];
}
