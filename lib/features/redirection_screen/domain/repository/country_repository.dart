import 'package:au2rides/features/redirection_screen/domain/entity/country_entity.dart';

abstract class CountryRepository{
  getCountries({required String lang});
  saveCountriesInLocalDatabase({required dynamic values});
}