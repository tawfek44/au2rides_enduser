import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/reminder_type_service_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/reminder_types_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClearReminderTypeServiceUseCase implements UseCase<dynamic, dynamic> {
  final ReminderTypeServiceRepository _reminderTypeServiceRepository;

  ClearReminderTypeServiceUseCase(this._reminderTypeServiceRepository);

  @override
  call({param}) async {
    final response = await _reminderTypeServiceRepository
        .clearReminderTypeServiceFromLocalDB(
            tableName: param[0], languageId: param[1]);
    return response;
  }
}
