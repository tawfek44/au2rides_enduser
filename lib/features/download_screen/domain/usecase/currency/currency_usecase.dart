import 'package:au2rides/core/use_case/use_case.dart';
import 'package:injectable/injectable.dart';

import '../../repository/currency_repository.dart';

@injectable
class ClearCurrencyUseCase implements UseCase<dynamic, dynamic> {
  final CurrencyRepository _currencyRepository;

  ClearCurrencyUseCase(this._currencyRepository);

  @override
  call({param}) async {
    final response = await _currencyRepository.clearCurrenciesFromLocalDB(
        tableName: param[0], languageId: param[1]);
    return response;
  }
}
