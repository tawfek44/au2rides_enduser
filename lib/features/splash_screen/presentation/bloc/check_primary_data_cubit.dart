import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/features/splash_screen/domain/usecases/check_primary_data_usecase.dart';
import 'package:au2rides/features/splash_screen/domain/usecases/is_downloaded_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../data/models/check_primary_data_body_model.dart';
import '../../data/models/check_primary_data_model.dart';

part 'check_primary_data_cubit_state.dart';

part 'check_primary_data_cubit.freezed.dart';

@injectable
class CheckPrimaryDataCubit extends Cubit<CheckPrimaryDataState> {
  CheckPrimaryDataCubit(this.checkPrimaryDataUseCase,this.isDownloadedUseCase) : super(const CheckPrimaryDataState.initial());
  CheckPrimaryDataUseCase checkPrimaryDataUseCase;
  IsDownloadedUseCase isDownloadedUseCase;

  Future checkPrimaryData({required List<dynamic> values}) async {
    try {
      emit(const CheckPrimaryDataState.loading());
      final response = await checkPrimaryDataUseCase(param: values,);
      if(!(response is Failure)){
        emit(CheckPrimaryDataState.loaded(response.data));
        return response.data;
      }
      else{
        return Left(response);
      }

    } catch (e) {
      emit(CheckPrimaryDataState.error(e));
    }
  }
  Future isDownloaded() async {
    try {
      final response = await isDownloadedUseCase(param: languageTableName);
      return response;
    } catch (e) {
     print(e);
    }
  }
}
