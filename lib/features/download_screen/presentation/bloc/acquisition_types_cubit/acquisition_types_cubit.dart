import 'package:au2rides/features/download_screen/data/models/acquisition_types/acquisition_types_model.dart';
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';
import '../../../data/models/currency/currency_model.dart';
import '../../../domain/usecase/currency/currency_usecase.dart';
import '../../../domain/usecase/currency/get_all_currencies_usecase.dart';
import '../../../domain/usecase/currency/save_currencies_in_local_db_usecase.dart';

part 'acquisition_types_state.dart';

part 'acquisition_types_cubit.freezed.dart';

@injectable
class AcquisitionTypesCubit extends Cubit<AcquisitionTypesState> {
  AcquisitionTypesCubit(
      this.clearAcquisitionTypesUseCase,
      this.getAllAcquisitionTypesUseCase,
      this.saveAcquisitionTypesInLocalDbUseCase)
      : super(const AcquisitionTypesState.initial());
  ClearAcquisitionTypesUseCase clearAcquisitionTypesUseCase;
  GetAllAcquisitionTypesUseCase getAllAcquisitionTypesUseCase;
  SaveAcquisitionTypesInLocalDbUseCase saveAcquisitionTypesInLocalDbUseCase;


  Future clearAcquisitionTypesInLocalDatabase({required String tableName,required languageId}) async {
    try {
      await clearAcquisitionTypesUseCase(param: [tableName,languageId]);
    } catch (e) {
      print(e);
    }
  }

  Future getAllAcquisitionTypesFromNetworkDB({required String appLang,required tableDefinitions}) async {
    try {
      tableDefinitions = (tableDefinitions as CheckPrimaryDataBodyModel).toJson();
      final response = await getAllAcquisitionTypesUseCase(param: [appLang,tableDefinitions]);
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => AcquisitionTypesModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }
  }

  Future saveAllAcquisitionTypesInLocalDB({required String tableName,required values}) async {
    try {
      final response =await saveAcquisitionTypesInLocalDbUseCase(param: [tableName,values]);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
