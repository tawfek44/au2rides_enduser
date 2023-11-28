import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/features/splash_screen/domain/usecases/check_primary_data_usecase.dart';
import 'package:au2rides/features/splash_screen/domain/usecases/is_downloaded_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/check_primary_data_body_model.dart';
import '../../data/models/check_primary_data_model.dart';

part 'check_primary_data_cubit_state.dart';

part 'check_primary_data_cubit.freezed.dart';

@injectable
class CheckPrimaryDataCubit extends Cubit<CheckPrimaryDataState> {
  CheckPrimaryDataCubit(this.checkPrimaryDataUseCase,this.isDownloadedUseCase) : super(const CheckPrimaryDataState.initial());
  CheckPrimaryDataUseCase checkPrimaryDataUseCase;
  IsDownloadedUseCase isDownloadedUseCase;

  checkPrimaryData({required List<dynamic> values}) async {
    try {
      emit(const CheckPrimaryDataState.loading());
      final response = await checkPrimaryDataUseCase(param: values,);
      emit(CheckPrimaryDataState.loaded(response.data
          .cast<Map<String, dynamic>>()
          .map((e) => CheckPrimaryDataModel.fromJson(e))
          .toList()));
      return response.data
          .cast<Map<String, dynamic>>()
          .map((e) => CheckPrimaryDataModel.fromJson(e))
          .toList();
    } catch (e) {
      emit(CheckPrimaryDataState.error(e));
    }
  }
  isDownloaded() async {
    try {
      final response = await isDownloadedUseCase(param: languageTableName);
      return response.data;
    } catch (e) {
     print(e);
    }
  }
}
