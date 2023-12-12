import 'package:au2rides/features/download_screen/domain/repository/month_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/reminder_types_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/use_case/use_case.dart';

@injectable
class ClearReminderTypeUseCase implements UseCase<dynamic, dynamic> {
  final ReminderTypesRepository _reminderTypesRepository;

  ClearReminderTypeUseCase(this._reminderTypesRepository);

  @override
  call({param}) async {
    final response =
        await _reminderTypesRepository.clearReminderTypesFromLocalDB(
            tableName: param[0], languageId: param[1]);
    return response;
  }
}
