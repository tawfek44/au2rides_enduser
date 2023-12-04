import 'package:au2rides/core/use_case/use_case.dart';
import 'package:injectable/injectable.dart';

import '../../repository/country_repository.dart';

@injectable
class SaveCountriesUseCase extends UseCase<dynamic,dynamic>{
  final CountryRepository countryRepository;

  SaveCountriesUseCase(this.countryRepository);

  @override
   call({dynamic param}) async {
    final response = await countryRepository.saveCountriesInLocalDatabase(values:param);
    return response;
  }

}