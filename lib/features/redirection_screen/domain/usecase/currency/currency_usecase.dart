import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/redirection_screen/domain/entity/country/country_entity.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/country_repository.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/currency_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClearCurrencyUseCase implements UseCase<dynamic,String>{
  final CurrencyRepository _currencyRepository;

  ClearCurrencyUseCase(this._currencyRepository);

  @override
   call({String? param}) async {
    final response = await _currencyRepository.clearCurrenciesFromLocalDB(tableName: param!);
    return response;
  }

}