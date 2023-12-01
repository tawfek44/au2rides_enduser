import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/currency_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveCurrenciesInLocalDbUseCase extends UseCase<dynamic, dynamic> {
  final CurrencyRepository currencyRepository;

  SaveCurrenciesInLocalDbUseCase(this.currencyRepository);

  @override
  Future call({param}) async {
    final response =
        await currencyRepository.saveCurrenciesInLocalDatabase(tableName: param[0],values: param[1]);
    return response;
  }
}
