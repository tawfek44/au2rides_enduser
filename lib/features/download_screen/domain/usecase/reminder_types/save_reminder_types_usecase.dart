import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/month_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/reminder_types_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveReminderTypesUseCase extends UseCase<dynamic, dynamic> {
  final ReminderTypesRepository _reminderTypesRepository;

  SaveReminderTypesUseCase(this._reminderTypesRepository);

  @override
  call({dynamic param}) async {
    final response = await _reminderTypesRepository
        .saveReminderTypesInLocalDatabase(values: param[1],tableName: param[0]);
    return response;
  }
}
