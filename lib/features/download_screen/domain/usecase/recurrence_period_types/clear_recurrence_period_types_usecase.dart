import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/recurrence_period_types_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClearRecurrencePeriodTypesUseCase implements UseCase<dynamic, dynamic> {
  final RecurrencePeriodTypesRepository _periodTypesRepository;

  ClearRecurrencePeriodTypesUseCase(this._periodTypesRepository);

  @override
  call({param}) async {
    final response =
        await _periodTypesRepository.clearRecurrencePeriodTypesFromLocalDB(
            tableName: param[0], languageId: param[1]);
    return response;
  }
}
