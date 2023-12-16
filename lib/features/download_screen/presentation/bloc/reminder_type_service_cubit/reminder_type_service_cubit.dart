import 'package:au2rides/features/download_screen/data/models/reminder_type_service_types/reminder_type_service_model.dart';
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/clear_reminder_type_service_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/get_all_reminder_type_service_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/save_reminder_type_service_in_local_db_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';

part 'reminder_type_service_state.dart';

part 'reminder_type_service_cubit.freezed.dart';

@injectable
class ReminderTypeServiceCubit extends Cubit<ReminderTypeServiceState> {
  ReminderTypeServiceCubit(
      this.clearReminderTypeServiceUseCase,
      this.getAllReminderTypeServiceUseCase,
      this.saveReminderTypeServiceInLocalDbUseCase)
      : super(const ReminderTypeServiceState.initial());
  ClearReminderTypeServiceUseCase clearReminderTypeServiceUseCase;
  GetAllReminderTypeServiceUseCase getAllReminderTypeServiceUseCase;
  SaveReminderTypeServiceInLocalDbUseCase saveReminderTypeServiceInLocalDbUseCase;


  Future clearReminderTypeServiceInLocalDatabase({required String tableName,required languageId}) async {
    try {
      await clearReminderTypeServiceUseCase(param: [tableName,languageId]);
    } catch (e) {
      print(e);
    }
  }

  Future getAllReminderTypeServiceFromNetworkDB({required String appLang,required tableDefinitions}) async {
    try {
      tableDefinitions = (tableDefinitions as CheckPrimaryDataBodyModel).toJson();
      final response = await getAllReminderTypeServiceUseCase(param: [appLang,tableDefinitions]);
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => ReminderTypeServiceModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }
  }

  Future saveAllReminderTypeServiceInLocalDB({required String tableName,required values}) async {
    try {
      final response =await saveReminderTypeServiceInLocalDbUseCase(param: [tableName,values]);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
