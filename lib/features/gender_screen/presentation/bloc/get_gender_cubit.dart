
import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/features/gender_screen/domain/use_cases/get_gemders_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/gender/user_model.dart';

part 'get_gender_state.dart';

part 'get_gender_cubit.freezed.dart';

@injectable
class GetGenderCubit extends Cubit<GetGenderState> {
  GetGenderCubit(this.getGenderFromLocalDbUseCase) : super(const GetGenderState.initial());
  GetGenderFromLocalDbUseCase getGenderFromLocalDbUseCase;

  Future getAllGender() async {
    try {
      emit(const GetGenderState.loading());
      var response = await getGenderFromLocalDbUseCase(param: userGenderTableName);
      if(response.length>0){
         response
            .cast<Map<String, dynamic>>()
            .map((e) => GenderModel.fromJson(e))
            .toList();
        emit(GetGenderState.loaded(response));
        return response;
      }
      else{
        emit(GetGenderState.error(response));
      }

    } catch (e) {
      emit(GetGenderState.error(e));
    }
  }

}
