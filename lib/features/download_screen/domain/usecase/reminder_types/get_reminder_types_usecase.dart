import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/month_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/reminder_types_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/country_repository.dart';

@injectable
class GetReminderTypesUseCase implements UseCase<dynamic, dynamic> {
  final ReminderTypesRepository _reminderTypesRepository;

  GetReminderTypesUseCase(this._reminderTypesRepository);

  @override
  call({dynamic param}) async {
    final response = await _reminderTypesRepository.getReminderTypes(
        lang: param[0], tableDefinitions: param[1]);
    return response;
  }
}
