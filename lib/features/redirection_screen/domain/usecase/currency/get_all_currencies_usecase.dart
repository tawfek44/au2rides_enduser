import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/redirection_screen/domain/entity/country/country_entity.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/country_repository.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/currency_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllCurrencyUseCase implements UseCase<dynamic,dynamic>{
  final CurrencyRepository _currencyRepository;

  GetAllCurrencyUseCase(this._currencyRepository);

  @override
   call({param}) async {
    final response = await _currencyRepository.getCurrencies(lang: param[0],tableDefinitions: param[1]);
    return response;
  }

}