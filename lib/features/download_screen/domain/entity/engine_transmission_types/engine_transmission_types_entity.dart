import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'engine_transmission_types_entity.g.dart';

@JsonSerializable()
class EngineTransmissionTypesEntity extends Equatable {
  @JsonKey(name: "engine_transmission_type_id")
  final int engineTransmissionTypeId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "engine_transmission_type_name")
  final String engineTransmissionTypeName;

  const EngineTransmissionTypesEntity(
      {required this.engineTransmissionTypeId,
      required this.languageId,
      required this.engineTransmissionTypeName});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [engineTransmissionTypeId, languageId, engineTransmissionTypeName];
}
