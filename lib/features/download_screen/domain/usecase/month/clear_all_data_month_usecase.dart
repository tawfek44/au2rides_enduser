import 'package:au2rides/features/download_screen/domain/repository/month_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/use_case/use_case.dart';
import '../../repository/country_repository.dart';

@injectable
class ClearMonthUseCase implements UseCase<dynamic,dynamic>{
  final MonthRepository monthRepository;

  ClearMonthUseCase(this.monthRepository);

  @override
  call({param}) async {
    final response = await monthRepository.clearMonthsFromLocalDB(tableName:param[0],languageId: param[1]);
    return response;
  }

}