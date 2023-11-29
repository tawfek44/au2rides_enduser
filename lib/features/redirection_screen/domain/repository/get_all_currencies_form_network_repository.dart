import 'package:au2rides/features/redirection_screen/domain/entity/country_entity.dart';

abstract class CurrencyRepository{
  //getCountries({required String lang});
  clearCurrenciesFromLocalDB({required String tableName});
  //saveCountriesInLocalDatabase({required dynamic values});
}