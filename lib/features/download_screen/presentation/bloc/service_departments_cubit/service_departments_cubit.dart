import 'package:au2rides/features/download_screen/data/models/acquisition_types/acquisition_types_model.dart';
import 'package:au2rides/features/download_screen/data/models/services_departments/service_departments_model.dart';
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/clear_services_departments_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/get_all_services_departments_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/save_services_departments_in_local_db_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';
import '../../../domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart';
import '../../../domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart';

part 'service_departments_state.dart';

part 'service_departments_cubit.freezed.dart';

@injectable
class ServiceDepartmentsCubit extends Cubit<ServiceDepartmentsState> {
  ServiceDepartmentsCubit(
      this.clearServicesDepartmentsUseCase,
      this.getAllServicesDepartmentsUseCase,
      this.saveServiceDepartmentsInLocalDbUseCase)
      : super(const ServiceDepartmentsState.initial());
  ClearServicesDepartmentsUseCase clearServicesDepartmentsUseCase;
  GetAllServicesDepartmentsUseCase getAllServicesDepartmentsUseCase;
  SaveServiceDepartmentsInLocalDbUseCase saveServiceDepartmentsInLocalDbUseCase;

  Future clearServiceDepartmentsInLocalDatabase(
      {required String tableName, required languageId}) async {
    try {
      await clearServicesDepartmentsUseCase(param: [tableName, languageId]);
    } catch (e) {
      print(e);
    }
  }

  Future getAllServiceDepartmentsFromNetworkDB(
      {required String appLang, required tableDefinitions}) async {
    try {
      tableDefinitions =
          (tableDefinitions as CheckPrimaryDataBodyModel).toJson();
      final response = await getAllServicesDepartmentsUseCase(
          param: [appLang, tableDefinitions]);
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => ServiceDepartmentsModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }
  }

  Future saveAllServiceDepartmentsInLocalDB(
      {required String tableName, required values}) async {
    try {
      final response = await saveServiceDepartmentsInLocalDbUseCase(
          param: [tableName, values]);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
