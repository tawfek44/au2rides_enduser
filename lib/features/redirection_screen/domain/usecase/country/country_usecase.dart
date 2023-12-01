import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/redirection_screen/domain/entity/country/country_entity.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/country_repository.dart';
import 'package:injectable/injectable.dart';

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