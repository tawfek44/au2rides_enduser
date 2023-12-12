import 'package:au2rides/features/download_screen/domain/usecase/month/clear_all_data_month_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/month/get_months_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/clear_all_data_reminder_types_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/get_reminder_types_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/save_reminder_types_usecase.dart';
import 'package:au2rides/features/splash_screen/data/models/check_primary_data_body_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../data/models/month/month_model.dart';
import '../../../data/models/reminder_types/reminder_types_model.dart';
part 'reminder_types_state.dart';
part 'reminder_types_cubit.freezed.dart';

@injectable
class ReminderTypesCubit extends Cubit<ReminderTypesState> {
  ReminderTypesCubit(
      this.getReminderTypesUseCase,
      this.saveReminderTypesUseCase,
      this.clearReminderTypeUseCase,)
      : super(const ReminderTypesState.initial());
  GetReminderTypesUseCase getReminderTypesUseCase;
  SaveReminderTypesUseCase saveReminderTypesUseCase;
  ClearReminderTypeUseCase clearReminderTypeUseCase;

  Future getAllReminderTypes({required String lang,required tableDefinitions}) async {
    try {
      emit(const ReminderTypesState.loading());
      tableDefinitions = (tableDefinitions as CheckPrimaryDataBodyModel).toJson();
      final response = await getReminderTypesUseCase(param: [lang,tableDefinitions]);
      emit(ReminderTypesState.loaded(response));
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => ReminderTypesModel.fromJson(e))
          .toList();
    } catch (e) {
      emit(ReminderTypesState.error(e));
    }
  }


  Future saveReminderTypesInLocalDatabase({required dynamic values, required tableName}) async {
    try {
      return await saveReminderTypesUseCase(param: [tableName,values]);
      //emit(const CountryState.savedInLocalDB());
    } catch (e) {
      emit(ReminderTypesState.error(e));
    }
  }

  Future clearReminderTypesInLocalDatabase({required String tableName,required languageId}) async {
    try {
      await clearReminderTypeUseCase(param: [tableName,languageId]);
    } catch (e) {
      print(e);
    }
  }




}
