import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/month_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/country_repository.dart';

@injectable
class GetMonthsUseCase implements UseCase<dynamic,dynamic>{
  final MonthRepository _monthRepository;

  GetMonthsUseCase(this._monthRepository);

  @override
   call({dynamic param}) async {
    final response = await _monthRepository.getMonths(lang: param[0],tableDefinitions:param[1] );
    return response;
  }

}