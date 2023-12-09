import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'acquisition_types_entity.g.dart';

@JsonSerializable()
class AcquisitionTypesEntity extends Equatable {
  @JsonKey(name: "acquisition_type_id")
  final int acquisitionTypeId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "acquisition_type_name")
  final String acquisitionTypeName;

  const AcquisitionTypesEntity(
      {required this.acquisitionTypeId,
      required this.languageId,
      required this.acquisitionTypeName});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [acquisitionTypeId, languageId, acquisitionTypeName];
}
