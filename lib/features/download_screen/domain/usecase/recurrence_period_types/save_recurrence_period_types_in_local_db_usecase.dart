import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/recurrence_period_types_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/currency_repository.dart';

@injectable
class SaveRecurrencePeriodTypesInLocalDbUseCase
    extends UseCase<dynamic, dynamic> {
  final RecurrencePeriodTypesRepository _recurrencePeriodTypesRepository;

  SaveRecurrencePeriodTypesInLocalDbUseCase(
      this._recurrencePeriodTypesRepository);

  @override
  Future call({param}) async {
    final response = await _recurrencePeriodTypesRepository
        .saveRecurrencePeriodTypesInLocalDatabase(
            tableName: param[0], values: param[1]);
    return response;
  }
}
