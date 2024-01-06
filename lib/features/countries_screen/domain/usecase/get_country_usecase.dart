import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/countries_screen/domain/repositories/get_countries_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:injectable/injectable.dart';


@injectable
class GetCountriesUseCase implements UseCase<dynamic, dynamic> {
  final GetCountriesRepository _countriesRepository;

  GetCountriesUseCase(this._countriesRepository);

  @override
  call({param}) async {
    final response = await _countriesRepository.getCountries(
        tableName: param[0], languageId: param[1]);
    return response;
  }
}
