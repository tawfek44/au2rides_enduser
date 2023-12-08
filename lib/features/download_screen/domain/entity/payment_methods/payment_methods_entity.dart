import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_methods_entity.g.dart';

@JsonSerializable()
class PaymentMethodsEntity extends Equatable {
  @JsonKey(name: "payment_method_id")
  final int paymentMethodId;
  @JsonKey(name: "language_id")
  final int languageId;
  @JsonKey(name: "allowed_countries")
  @Uint8ListConverter() Uint8List? allowedCountries;
  @JsonKey(name: "payment_method_name")
  final String paymentMethodName;
  @JsonKey(name: "payment_method_image_url")
  final String paymentMethodImageUrl;
  @JsonKey(name: "au_payment_method_id")
  final int auPaymentMethodId;

   PaymentMethodsEntity(
      {required this.paymentMethodId,
      required this.languageId,
      required this.allowedCountries,
      required this.paymentMethodName,
      required this.paymentMethodImageUrl,
      required this.auPaymentMethodId});

  @override
  // TODO: implement props
  List<Object?> get props => [
        paymentMethodId,
        languageId,
        allowedCountries,
        paymentMethodName,
        paymentMethodImageUrl,
        auPaymentMethodId
      ];
}
class Uint8ListConverter implements JsonConverter<Uint8List?, List<dynamic>?> {
  const Uint8ListConverter();

  @override
  Uint8List? fromJson(List<dynamic>? json) {
    return json == null ? null : Uint8List.fromList(json.cast<int>());
  }

  @override
  List<int>? toJson(Uint8List? object) {
    return object?.toList();
  }
}
