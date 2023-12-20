import 'package:au2rides/features/download_screen/data/models/acquisition_types/acquisition_types_model.dart';
import 'package:au2rides/features/download_screen/data/models/service_types/service_types_model.dart';
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/service_types/clear_service_types_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/service_types/get_all_service_types_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/service_types/save_service_types_in_local_db_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';
import '../../../domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart';
import '../../../domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart';
part 'service_types_state.dart';

part 'service_types_cubit.freezed.dart';

@injectable
class ServiceTypesCubit extends Cubit<ServiceTypesState> {
  ServiceTypesCubit(
      this.clearServiceTypesUseCase,
      this.getAllServiceTypesUseCase,
      this.saveServiceTypesInLocalDbUseCase)
      : super(const ServiceTypesState.initial());
  ClearServiceTypesUseCase clearServiceTypesUseCase;
  GetAllServiceTypesUseCase getAllServiceTypesUseCase;
  SaveServiceTypesInLocalDbUseCase saveServiceTypesInLocalDbUseCase;


  Future clearServiceTypesInLocalDatabase({required String tableName,required languageId}) async {
    try {
      await clearServiceTypesUseCase(param: [tableName,languageId]);
    } catch (e) {
      print(e);
    }
  }

  Future getAllServiceTypesFromNetworkDB({required String appLang,required tableDefinitions}) async {
    try {
      tableDefinitions = (tableDefinitions as CheckPrimaryDataBodyModel).toJson();
      final response = await getAllServiceTypesUseCase(param: [appLang,tableDefinitions]);
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => ServiceTypesModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }
  }

  Future saveAllServiceTypesInLocalDB({required String tableName,required values}) async {
    try {
      final response =await saveServiceTypesInLocalDbUseCase(param: [tableName,values]);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
