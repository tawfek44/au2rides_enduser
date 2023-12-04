class PaymentMethodsFields {
  static const String paymentMethodId = "payment_method_id";
  static const String languageId = "language_id";
  static const String allowedCountries = "allowed_countries";
  static const String paymentMethodName = "payment_method_name";
  static const String paymentMethodImageUrl = "payment_method_image_url";
  static const String auPaymentMethodId = "au_payment_method_id";
}

class PaymentMethods {
  final String paymentMethodId;

  final String languageId;

  final String allowedCountries;
  final String paymentMethodName;

  final String paymentMethodImageUrl;

  final String auPaymentMethodId;

  PaymentMethods(
      {required this.paymentMethodId,
      required this.languageId,
      required this.allowedCountries,
      required this.paymentMethodName,
      required this.paymentMethodImageUrl,
      required this.auPaymentMethodId});

  Map<String, Object> toJson() => {
      PaymentMethodsFields.paymentMethodId: paymentMethodId,
      PaymentMethodsFields.languageId: languageId,
      PaymentMethodsFields.allowedCountries: allowedCountries,
      PaymentMethodsFields.paymentMethodName: paymentMethodName,
      PaymentMethodsFields.paymentMethodImageUrl: paymentMethodImageUrl,
      PaymentMethodsFields.auPaymentMethodId: auPaymentMethodId,
      };
}
