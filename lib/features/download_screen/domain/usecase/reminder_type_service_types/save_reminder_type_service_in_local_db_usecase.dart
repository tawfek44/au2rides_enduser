import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/reminder_type_service_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/currency_repository.dart';

@injectable
class SaveReminderTypeServiceInLocalDbUseCase
    extends UseCase<dynamic, dynamic> {
  final ReminderTypeServiceRepository _reminderTypeServiceRepository;

  SaveReminderTypeServiceInLocalDbUseCase(this._reminderTypeServiceRepository);

  @override
  Future call({param}) async {
    final response = await _reminderTypeServiceRepository
        .saveReminderTypeServiceInLocalDatabase(
            tableName: param[0], values: param[1]);
    return response;
  }
}
