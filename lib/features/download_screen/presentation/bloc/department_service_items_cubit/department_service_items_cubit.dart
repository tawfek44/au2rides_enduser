import 'package:au2rides/features/download_screen/data/models/acquisition_types/acquisition_types_model.dart';
import 'package:au2rides/features/download_screen/data/models/department_service_items/department_service_items_model.dart';
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/clear_department_service_items_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/get_all_department_service_items_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/save_department_service_items_in_local_db_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/engine_transmission_types_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/get_all_engine_transmission_types_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';
import '../../../data/models/currency/currency_model.dart';
import '../../../domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart';
import '../../../domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart';
import '../../../domain/usecase/currency/currency_usecase.dart';
import '../../../domain/usecase/currency/get_all_currencies_usecase.dart';
import '../../../domain/usecase/currency/save_currencies_in_local_db_usecase.dart';

part 'department_service_items_state.dart';

part 'department_service_items_cubit.freezed.dart';

@injectable
class DepartmentServiceItemsCubit extends Cubit<DepartmentServiceItemsState> {
  DepartmentServiceItemsCubit(
      this.clearDepartmentServiceItemsUseCase,
      this.getAllDepartmentServiceItemsUseCase,
      this.saveDepartmentServiceItemsInLocalDbUseCase)
      : super(const DepartmentServiceItemsState.initial());
  ClearDepartmentServiceItemsUseCase clearDepartmentServiceItemsUseCase;
  GetAllDepartmentServiceItemsUseCase getAllDepartmentServiceItemsUseCase;
  SaveDepartmentServiceItemsInLocalDbUseCase saveDepartmentServiceItemsInLocalDbUseCase;


  Future clearAcquisitionTypesInLocalDatabase({required String tableName,required languageId}) async {
    try {
      await clearDepartmentServiceItemsUseCase(param: [tableName,languageId]);
    } catch (e) {
      print(e);
    }
  }

  Future getAllDepartmentServiceItemsFromNetworkDB({required String appLang,required tableDefinitions}) async {
    try {
      tableDefinitions = (tableDefinitions as CheckPrimaryDataBodyModel).toJson();
      final response = await getAllDepartmentServiceItemsUseCase(param: [appLang,tableDefinitions]);
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => DepartmentServiceItemsModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }
  }

  Future saveAllAcquisitionTypesInLocalDB({required String tableName,required values}) async {
    try {
      final response =await saveDepartmentServiceItemsInLocalDbUseCase(param: [tableName,values]);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
