import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/repositories/choose_ride_type_repository.dart';
import 'package:injectable/injectable.dart';

import '../repositories/currency_repository.dart';



@injectable
class ChooseCurrencyUseCase extends UseCase<dynamic, dynamic> {
  final ChooseCurrencyRepository currencyRepository;

  ChooseCurrencyUseCase(this.currencyRepository);

  @override
  Future call({param}) async {
    final response = await currencyRepository.getCurrencies();
    return response;
  }

}