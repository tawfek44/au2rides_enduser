import 'package:au2rides/features/download_screen/data/models/recurrence_period_types/recurrence_period_types_model.dart';
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/clear_recurrence_period_types_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/get_all_recurrence_period_types_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/save_recurrence_period_types_in_local_db_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';
import '../../../data/models/engine_fuel_types/engine_fuel_types_model.dart';
import '../../../domain/usecase/engine_fuel_types/engine_fuel_types_usecase.dart';
import '../../../domain/usecase/engine_fuel_types/get_all_engine_fuel_types_usecase.dart';
import '../../../domain/usecase/engine_fuel_types/save_engine_fuel_types_in_local_db_usecase.dart';

part 'recurrence_period_types_state.dart';

part 'recurrence_period_types_cubit.freezed.dart';

@injectable
class RecurrencePeriodTypesCubit extends Cubit<RecurrencePeriodTypesState> {
  RecurrencePeriodTypesCubit(
      this.clearRecurrencePeriodTypesUseCase,
      this.getAllRecurrencePeriodTypesUseCase,
      this.saveRecurrencePeriodTypesInLocalDbUseCase)
      : super(const RecurrencePeriodTypesState.initial());
  ClearRecurrencePeriodTypesUseCase clearRecurrencePeriodTypesUseCase;
  GetAllRecurrencePeriodTypesUseCase getAllRecurrencePeriodTypesUseCase;
  SaveRecurrencePeriodTypesInLocalDbUseCase
      saveRecurrencePeriodTypesInLocalDbUseCase;

  Future clearRecurrencePeriodTypesInLocalDatabase(
      {required String tableName, required languageId}) async {
    try {
      await clearRecurrencePeriodTypesUseCase(param: [tableName, languageId]);
    } catch (e) {
      print(e);
    }
  }

  Future getAllRecurrencePeriodTypesFromNetworkDB(
      {required String appLang, required tableDefinitions}) async {
    try {
      tableDefinitions =
          (tableDefinitions as CheckPrimaryDataBodyModel).toJson();
      final response = await getAllRecurrencePeriodTypesUseCase(
          param: [appLang, tableDefinitions]);
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => RecurrencePeriodTypesModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }
  }

  Future saveAllRecurrencePeriodTypesInLocalDB(
      {required String tableName, required values}) async {
    try {
      final response = await saveRecurrencePeriodTypesInLocalDbUseCase(
          param: [tableName, values]);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
