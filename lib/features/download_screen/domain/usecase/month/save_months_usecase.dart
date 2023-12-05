import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/month_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/country_repository.dart';

@injectable
class SaveMonthsUseCase extends UseCase<dynamic,dynamic>{
  final MonthRepository monthRepository;

  SaveMonthsUseCase(this.monthRepository);

  @override
   call({dynamic param}) async {
    final response = await monthRepository.saveMonthsInLocalDatabase(values:param);
    return response;
  }

}