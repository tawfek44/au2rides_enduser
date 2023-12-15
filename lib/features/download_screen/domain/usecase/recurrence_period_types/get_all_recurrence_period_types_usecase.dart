import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/recurrence_period_types_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/acquisition_types_repository.dart';

@injectable
class GetAllRecurrencePeriodTypesUseCase implements UseCase<dynamic, dynamic> {
  final RecurrencePeriodTypesRepository _recurrencePeriodTypesRepository;

  GetAllRecurrencePeriodTypesUseCase(this._recurrencePeriodTypesRepository);

  @override
  call({param}) async {
    final response = await _recurrencePeriodTypesRepository
        .getRecurrencePeriodTypes(lang: param[0], tableDefinitions: param[1]);
    return response;
  }
}
