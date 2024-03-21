import 'package:au2rides/features/choose_currency_screen/data/data_sources/choose_currency_datasource.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/currency_repository.dart';

@Injectable(as: ChooseCurrencyRepository)
class ChooseCurrencyRepositoryImpl extends ChooseCurrencyRepository{
  final ChooseCurrencyDataSource chooseCurrencyDataSource;

  ChooseCurrencyRepositoryImpl(this.chooseCurrencyDataSource);


  @override
  getCurrencies() async {
    final response = await chooseCurrencyDataSource.getCurrencies();
    return response;
  }



}