import 'package:au2rides/core/use_case/use_case.dart';
import 'package:injectable/injectable.dart';

import '../../repository/country_repository.dart';

@injectable
class CountryUseCase implements UseCase<dynamic,dynamic>{
  final CountryRepository _countryRepository;

  CountryUseCase(this._countryRepository);

  @override
   call({dynamic param}) async {
    final response = await _countryRepository.getCountries(lang: param[0],tableDefinitions:param[1] );
    return response;
  }

}