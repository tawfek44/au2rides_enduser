// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_methods_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethodsEntity _$PaymentMethodsEntityFromJson(
        Map<String, dynamic> json) =>
    PaymentMethodsEntity(
      paymentMethodId: json['payment_method_id'] as int,
      languageId: json['language_id'] as int,
      allowedCountries: (json['allowed_countries'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      paymentMethodName: json['payment_method_name'] as String,
      paymentMethodImageUrl: json['payment_method_image_url'] as String,
      auPaymentMethodId: json['au_payment_method_id'] as int,
    );

Map<String, dynamic> _$PaymentMethodsEntityToJson(
        PaymentMethodsEntity instance) =>
    <String, dynamic>{
      'payment_method_id': instance.paymentMethodId,
      'language_id': instance.languageId,
      'allowed_countries': instance.allowedCountries,
      'payment_method_name': instance.paymentMethodName,
      'payment_method_image_url': instance.paymentMethodImageUrl,
      'au_payment_method_id': instance.auPaymentMethodId,
    };