// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryEntity _$CountryEntityFromJson(Map<String, dynamic> json) =>
    CountryEntity(
      countryId: json['country_id'] as int,
      languageId: json['language_id'] as int,
      countryName: json['count_name'] as String,
      countryKeyCode: json['country_key_code'] as String,
      countryCallingCode: json['international_calling_code'] as String,
      countryImageUrl: json['flag_image_url'] as String,
    );

Map<String, dynamic> _$CountryEntityToJson(CountryEntity instance) =>
    <String, dynamic>{
      'country_id': instance.countryId,
      'language_id': instance.languageId,
      'count_name': instance.countryName,
      'country_key_code': instance.countryKeyCode,
      'international_calling_code': instance.countryCallingCode,
      'flag_image_url': instance.countryImageUrl,
    };
