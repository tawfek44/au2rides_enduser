import 'package:au2rides/features/download_screen/domain/entity/engine_transmission_types/engine_transmission_types_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'engine_transmission_types_model.g.dart';

@JsonSerializable()
class EngineTransmissionTypesModel extends EngineTransmissionTypesEntity {
  const EngineTransmissionTypesModel(
      {required super.engineTransmissionTypeId,
      required super.languageId,
      required super.engineTransmissionTypeName});

  factory EngineTransmissionTypesModel.fromJson(
      final Map<String, dynamic> json) {
    return _$EngineTransmissionTypesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EngineTransmissionTypesModelToJson(this);
}
