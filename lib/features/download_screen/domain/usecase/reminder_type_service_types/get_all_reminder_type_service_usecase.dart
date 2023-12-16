import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/reminder_type_service_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/acquisition_types_repository.dart';

@injectable
class GetAllReminderTypeServiceUseCase implements UseCase<dynamic, dynamic> {
  final ReminderTypeServiceRepository _reminderTypeServiceRepository;

  GetAllReminderTypeServiceUseCase(this._reminderTypeServiceRepository);

  @override
  call({param}) async {
    final response =
        await _reminderTypeServiceRepository.getReminderTypeServiceTypes(
            lang: param[0], tableDefinitions: param[1]);
    return response;
  }
}
