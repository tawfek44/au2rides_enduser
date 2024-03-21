import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../download_screen/domain/entity/currency/currency_entity.dart';

part 'choose_currency_model.g.dart';

@JsonSerializable()
class CurrencyModel extends CurrencyEntity {
  factory CurrencyModel.fromJson(final Map<String, dynamic> json) {
    return _$CurrencyModelFromJson(json);
  }

  const CurrencyModel({required super.currencyId, required super.languageId, required super.currencyCode, required super.currencyName, required super.currencyImageUrl});

  Map<String, dynamic> toJson() => _$CurrencyModelToJson(this);
}
