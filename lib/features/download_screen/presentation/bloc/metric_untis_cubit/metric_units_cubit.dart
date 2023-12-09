import 'package:au2rides/features/download_screen/data/models/acquisition_types/acquisition_types_model.dart';
import 'package:au2rides/features/download_screen/data/models/metric_units/metric_units_model.dart';
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/clear_metric_units_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/get_all_metric_units_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/save_metric_units_in_local_db_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';
part 'metric_units_state.dart';

part 'metric_units_cubit.freezed.dart';

@injectable
class MetricUnitsCubit extends Cubit<MetricUnitsState> {
  MetricUnitsCubit(
      this.clearMetricUnitsUseCase,
      this.getAllMetricUnitsUseCase,
      this.saveMetricUnitsInLocalDbUseCase)
      : super(const MetricUnitsState.initial());

  ClearMetricUnitsUseCase clearMetricUnitsUseCase;
  GetAllMetricUnitsUseCase getAllMetricUnitsUseCase;
  SaveMetricUnitsInLocalDbUseCase saveMetricUnitsInLocalDbUseCase;


  Future clearMetricUnitsInLocalDatabase({required String tableName,required languageId}) async {
    try {
      await clearMetricUnitsUseCase(param: [tableName,languageId]);
    } catch (e) {
      print(e);
    }
  }

  Future getAllMetricUnitsFromNetworkDB({required String appLang,required tableDefinitions}) async {
    try {
      tableDefinitions = (tableDefinitions as CheckPrimaryDataBodyModel).toJson();
      final response = await getAllMetricUnitsUseCase(param: [appLang,tableDefinitions]);
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => MetricUnitsModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }
  }

  Future saveAllMetricUnitsInLocalDB({required String tableName,required values}) async {
    try {
      final response =await saveMetricUnitsInLocalDbUseCase(param: [tableName,values]);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
