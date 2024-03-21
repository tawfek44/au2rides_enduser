part of 'choose_currency_cubit.dart';

@freezed
class ChooseCurrencyState with _$ChooseCurrencyState {
  const factory ChooseCurrencyState.initial() = _InitialChooseCurrencyState;
  const factory ChooseCurrencyState.loading() = LoadingChooseCurrencyState;
  const factory ChooseCurrencyState.loaded(response) = LoadedChooseCurrencyState;
  const factory ChooseCurrencyState.error(Object e) = ErrorChooseCurrencyState;
}
