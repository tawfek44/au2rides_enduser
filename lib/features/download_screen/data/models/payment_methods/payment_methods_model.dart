import 'package:au2rides/features/download_screen/domain/entity/payment_methods/payment_methods_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/ride_types/ride_types_entity.dart';

part 'payment_methods_model.g.dart';

@JsonSerializable()
class PaymentMethodsModel extends PaymentMethodsEntity {

   PaymentMethodsModel({required super.paymentMethodId, required super.languageId, required super.allowedCountries, required super.paymentMethodName, required super.paymentMethodImageUrl, required super.auPaymentMethodId});

  factory PaymentMethodsModel.fromJson(final Map<String, dynamic> json) {
    return _$PaymentMethodsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaymentMethodsModelToJson(this);

}
