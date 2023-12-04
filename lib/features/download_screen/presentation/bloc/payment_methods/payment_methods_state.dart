part of 'payment_methods_cubit.dart';

@freezed
class PaymentMethodsState with _$PaymentMethodsState {
  const factory PaymentMethodsState.initial() = _InitialPaymentMethods;
  const factory PaymentMethodsState.loading() =PaymentMethodsLoading;
  const factory PaymentMethodsState.loaded(Response) = PaymentMethodsLoaded;
  const factory PaymentMethodsState.error(Object e) = PaymentMethodsError;
}
