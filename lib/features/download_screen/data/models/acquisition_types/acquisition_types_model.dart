import 'package:au2rides/features/download_screen/domain/entity/acquisition_types/acquisition_types_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/currency/currency_entity.dart';

part 'acquisition_types_model.g.dart';

@JsonSerializable()
class AcquisitionTypesModel extends AcquisitionTypesEntity {
  const AcquisitionTypesModel(
      {required super.acquisitionTypeId,
      required super.languageId,
      required super.acquisitionTypeName});

  factory AcquisitionTypesModel.fromJson(final Map<String, dynamic> json) {
    return _$AcquisitionTypesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AcquisitionTypesModelToJson(this);
}
