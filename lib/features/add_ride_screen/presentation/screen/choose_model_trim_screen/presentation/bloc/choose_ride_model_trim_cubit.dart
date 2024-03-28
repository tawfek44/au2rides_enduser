
import 'package:au2rides/features/add_ride_screen/domain/use_cases/add_ride_usecase.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_model_trim_screen/data/models/choose_model_trim_model.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_makes_screen/data/models/choose_ride_makes_model.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/data/data_sources/choose_ride_type_datasource.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/data/models/choose_ride_type_model.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/use_cases/choose_ride_type_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/clear_ride_types_local_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../core/dependancy_injection/injection.dart';
import '../../../../../../../core/error/failure.dart';
import '../../../../../../../core/repositories/user_repository.dart';
import '../../../../../../../generated/l10n.dart';
import '../../domain/use_cases/choose_ride_model_trim_usecase.dart';


part 'choose_ride_model_trim_state.dart';

part 'choose_ride_model_trim_cubit.freezed.dart';

@injectable
class ChooseRideModelTrimCubit extends Cubit<ChooseRideModelTrimState> {
  ChooseRideModelTrimCubit(this.chooseRideModelTrimUseCase) : super(const ChooseRideModelTrimState.initial());
  ChooseRideModelTrimUseCase chooseRideModelTrimUseCase;

  Future getRideModelTrims({required rideMakesModelId}) async {
    try {
      emit(const ChooseRideModelTrimState.loading());
      final response = await chooseRideModelTrimUseCase(param: rideMakesModelId);
      if(!(response is Failure)) {
        var result = response.data
            .cast<Map<String, dynamic>>()
            .map((e) => ChooseRideModelTrimModel.fromJson(e))
            .toList();
        emit(ChooseRideModelTrimState.loaded(result));
        return result;
      }
      else{
        if(response.code == "connectionError"){
          emit(ChooseRideModelTrimState.error(S.current.connectivityError));
        }
        else{
          emit(ChooseRideModelTrimState.error(response.message.toString()));
        }
      }

    } catch (e) {
      emit(ChooseRideModelTrimState.error(e));
    }
  }

  search({required textToSearch,required responseList}) async {
    try{
      var temp = [];
      if (textToSearch.isNotEmpty) {
        for (var element in responseList) {
          if (element.rideTrimName.toLowerCase().contains(textToSearch)) {
            temp.add(element);
          }
        }

        if(temp.isNotEmpty){
          emit(ChooseRideModelTrimState.loaded(temp));
        }
        else{
          emit(ChooseRideModelTrimState.loaded(responseList));
        }
      }else{
        await getRideModelTrims(rideMakesModelId: getIt<UserRepository>().getSelectedRideModelId);
      }

    }catch(e){
      emit(ChooseRideModelTrimState.error(e));
    }
  }
}