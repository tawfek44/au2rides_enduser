import 'package:injectable/injectable.dart';

import '../../../../../core/use_case/use_case.dart';
import '../../repository/country_repository.dart';

@injectable
class ClearCountryUseCase implements UseCase<dynamic,dynamic>{
  final CountryRepository countryRepository;

  ClearCountryUseCase(this.countryRepository);

  @override
  call({param}) async {
    final response = await countryRepository.clearCountriesFromLocalDB(tableName:param[0],languageId:param[1]);
    return response;
  }

}