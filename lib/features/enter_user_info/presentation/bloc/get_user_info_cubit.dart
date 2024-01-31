import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/features/enter_user_info/domain/use_cases/get_user_info_usecase.dart';
import 'package:au2rides/features/splash_screen/domain/usecases/check_primary_data_usecase.dart';
import 'package:au2rides/features/splash_screen/domain/usecases/is_downloaded_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../data/models/user_network/user_network_model.dart';

part 'get_user_info_state.dart';

part 'get_user_info_cubit.freezed.dart';

@injectable
class GetUserInfoCubit extends Cubit<GetUserInfoState> {
  GetUserInfoCubit(this.getUserInfoUseCase) : super(const GetUserInfoState.initial());
  GetUserInfoUseCase getUserInfoUseCase;

  Future getUserInfo() async {
    try {
      emit(const GetUserInfoState.loading());
      var response = await getUserInfoUseCase();
      if(!(response is Failure)){
        response = UserNetworkModel.fromJson(response.data);
        emit(GetUserInfoState.loaded(response));
      }
      else{
        emit(GetUserInfoState.error(response));
      }

    } catch (e) {
      emit(GetUserInfoState.error(e));
    }
  }
}
