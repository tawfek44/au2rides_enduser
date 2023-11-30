import 'package:au2rides/features/redirection_screen/domain/entity/country_entity.dart';
import 'package:au2rides/features/redirection_screen/domain/entity/currency_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'currency_model.g.dart';
@JsonSerializable()
class CurrencyModel extends CurrencyEntity{
  const CurrencyModel({required super.currencyId, required super.currencyCode, required super.currencyName, required super.currencyImageUrl});
  factory CurrencyModel.fromJson(final Map<String, dynamic> json) {
    return _$CurrencyModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CurrencyModelToJson(this);
}