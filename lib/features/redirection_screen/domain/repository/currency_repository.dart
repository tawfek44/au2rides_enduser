import 'package:au2rides/features/redirection_screen/domain/entity/country/country_entity.dart';

abstract class CurrencyRepository{
  getCurrencies({required String lang,required tableDefinitions});
  clearCurrenciesFromLocalDB({required String tableName});
  saveCurrenciesInLocalDatabase({required String tableName,required dynamic values});
}