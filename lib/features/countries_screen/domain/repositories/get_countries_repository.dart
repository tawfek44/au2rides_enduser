import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:injectable/injectable.dart';

import '../../data/datasources/get_countries_datasource.dart';


abstract class GetCountriesRepository  {
  getCountries({required String tableName, required languageId});
}
