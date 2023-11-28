import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/redirection_screen/domain/entity/country_entity.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/country_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CountryUseCase implements UseCase<dynamic,String>{
  final CountryRepository _countryRepository;

  CountryUseCase(this._countryRepository);

  @override
   call({String? param}) async {
    final response = await _countryRepository.getCountries(lang: param!);
    return response;
  }

}