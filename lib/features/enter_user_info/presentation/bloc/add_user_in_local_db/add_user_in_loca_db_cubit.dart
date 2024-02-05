
import 'package:au2rides/features/enter_user_info/data/models/user/user_model.dart';
import 'package:au2rides/features/enter_user_info/domain/use_cases/get_user_info_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../generated/l10n.dart';
import '../../../domain/use_cases/add_user_in_local_db_use_case.dart';


part 'add_user_in_loca_db_state.dart';

part 'add_user_in_loca_db_cubit.freezed.dart';

@injectable
class AddUserToLocalDbCubit extends Cubit<AddUserInLocalDbState> {
  AddUserToLocalDbCubit(this.addUserInLocalDbUseCase) : super(const AddUserInLocalDbState.initial());
  AddUserInLocalDbUseCase addUserInLocalDbUseCase;

  Future addUserToLocalDbInfo({required userData}) async {
    try {
      emit(const AddUserInLocalDbState.loading());
      var response = await addUserInLocalDbUseCase(param:userData );
      if(response>0){
        emit(AddUserInLocalDbState.loaded(response));
        return response;
      }
      else{
        emit(AddUserInLocalDbState.error(S.current.thereIsAnErrorInGender));
      }

    } catch (e) {
      emit(AddUserInLocalDbState.error(e));
    }
  }

}
