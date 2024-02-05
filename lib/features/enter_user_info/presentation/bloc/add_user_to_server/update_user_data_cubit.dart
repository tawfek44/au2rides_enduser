import 'package:au2rides/core/storage/tables/users.dart';
import 'package:au2rides/features/enter_user_info/data/models/user_body/user_body_model.dart';
import 'package:au2rides/features/enter_user_info/data/models/user_network/user_network_model.dart';
import 'package:au2rides/features/enter_user_info/domain/use_cases/get_user_info_usecase.dart';
import 'package:au2rides/features/enter_user_info/domain/use_cases/update_user_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/failure.dart';
import '../../../data/models/user/user_model.dart';


part 'update_user_data_state.dart';

part 'update_user_data_cubit.freezed.dart';

@injectable
class UpdateUserDataCubit extends Cubit<UpdateUserDataState> {
  UpdateUserDataCubit(this.updateUserDataUseCase)
      : super(const UpdateUserDataState.initial());
  UpdateUserDataUseCase updateUserDataUseCase;

  Future updateUserDataInServer(
      {required language, required registeredUserId, required firstName, required lastName, required emailAddress, required profileImageUrl, required genderId, required birthDate,}) async {
    try {
      emit(const UpdateUserDataState.loading());
      var userBody = UserBodyModel(registeredUserId: registeredUserId,
          firstName: firstName,
          lastName: lastName,
          emailAddress: emailAddress,
          profileImageUrl: profileImageUrl,
          genderId: genderId,
          birthDate: birthDate);
      var response = await updateUserDataUseCase(param: [userBody.toJson(), language]);
      if (!(response is Failure)) {
        response = UserNetworkModel.fromJson(response.data);
        emit(UpdateUserDataState.loaded(response));
        return response;
      }
      else {
        emit(UpdateUserDataState.error(response));
      }
    } catch (e) {
      emit(UpdateUserDataState.error(e));
    }
  }

}
