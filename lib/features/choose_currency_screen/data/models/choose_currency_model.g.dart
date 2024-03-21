// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrencyModel _$CurrencyModelFromJson(Map<String, dynamic> json) =>
    CurrencyModel(
      currencyId: json['currency_id'] as int,
      languageId: json['language_id'] as int,
      currencyCode: json['currency_code'] as String,
      currencyName: json['currency_name'] as String,
      currencyImageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$CurrencyModelToJson(CurrencyModel instance) =>
    <String, dynamic>{
      'currency_id': instance.currencyId,
      'language_id': instance.languageId,
      'currency_code': instance.currencyCode,
      'currency_name': instance.currencyName,
      'image_url': instance.currencyImageUrl,
    };
