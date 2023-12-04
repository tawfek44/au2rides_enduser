import 'package:injectable/injectable.dart';

import '../../../../../core/use_case/use_case.dart';
import '../../repository/country_repository.dart';

@injectable
class ClearCountryUseCase implements UseCase<dynamic,String>{
  final CountryRepository countryRepository;

  ClearCountryUseCase(this.countryRepository);

  @override
  call({String? param}) async {
    final response = await countryRepository.clearCountriesFromLocalDB(tableName:param!);
    return response;
  }

}