import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../download_screen/data/models/currency/currency_model.dart';
import '../../domain/use_cases/choose_currencies_usecase.dart';


part 'choose_currency_state.dart';

part 'choose_currency_cubit.freezed.dart';

@injectable
class ChooseCurrencyCubit extends Cubit<ChooseCurrencyState> {
  ChooseCurrencyCubit(this.chooseCurrencyUseCase) : super(const ChooseCurrencyState.initial());
  ChooseCurrencyUseCase chooseCurrencyUseCase;

  Future getCurrencies() async {
    try {
      emit(const ChooseCurrencyState.loading());
      final response = await chooseCurrencyUseCase();
      var result = response
          .cast<Map<String, dynamic>>()
          .map((e) => CurrencyModel.fromJson(e))
          .toList();
      emit(ChooseCurrencyState.loaded(result));
      return result;
    } catch (e) {
      emit(ChooseCurrencyState.error(e));
    }
  }
}