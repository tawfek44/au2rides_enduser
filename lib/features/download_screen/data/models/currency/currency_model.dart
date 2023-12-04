import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/currency/currency_entity.dart';
part 'currency_model.g.dart';
@JsonSerializable()
class CurrencyModel extends CurrencyEntity{
  const CurrencyModel({required super.currencyId, required super.currencyCode, required super.currencyName, required super.currencyImageUrl});
  factory CurrencyModel.fromJson(final Map<String, dynamic> json) {
    return _$CurrencyModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CurrencyModelToJson(this);
}