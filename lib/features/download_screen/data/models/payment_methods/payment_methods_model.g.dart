// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_methods_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethodsModel _$PaymentMethodsModelFromJson(Map<String, dynamic> json) =>
    PaymentMethodsModel(
      paymentMethodId: json['payment_method_id'] as int,
      languageId: json['language_id'] as int,
      allowedCountries: const Uint8ListConverter()
          .fromJson(json['allowed_countries'] as List?),
      paymentMethodName: json['payment_method_name'] as String,
      paymentMethodImageUrl: json['payment_method_image_url'] as String,
      auPaymentMethodId: json['au_payment_method_id'] as int,
    );

Map<String, dynamic> _$PaymentMethodsModelToJson(
        PaymentMethodsModel instance) =>
    <String, dynamic>{
      'payment_method_id': instance.paymentMethodId,
      'language_id': instance.languageId,
      'allowed_countries':
          const Uint8ListConverter().toJson(instance.allowedCountries),
      'payment_method_name': instance.paymentMethodName,
      'payment_method_image_url': instance.paymentMethodImageUrl,
      'au_payment_method_id': instance.auPaymentMethodId,
    };
