import 'package:au2rides/features/add_ride_screen/domain/use_cases/add_ride_usecase.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_makes_screen/data/models/choose_ride_makes_model.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/data/data_sources/choose_ride_type_datasource.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/data/models/choose_ride_type_model.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/use_cases/choose_ride_type_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/clear_ride_types_local_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../core/error/failure.dart';
import '../../../../../../../generated/l10n.dart';
import '../../data/models/choose_ride_models_model.dart';
import '../../domain/use_cases/choose_ride_models_usecase.dart';

part 'choose_ride_models_state.dart';

part 'choose_ride_models_cubit.freezed.dart';

@injectable
class ChooseRideModelsCubit extends Cubit<ChooseRideModelsState> {
  ChooseRideModelsCubit(this.chooseRideModelsUseCase)
      : super(const ChooseRideModelsState.initial());
  ChooseRideModelsUseCase chooseRideModelsUseCase;

  Future getRideModels({required rideMakeId}) async {
    try {
      emit(const ChooseRideModelsState.loading());
      final response = await chooseRideModelsUseCase(param: rideMakeId);
      if(!(response is Failure)) {
        var result = response.data
            .cast<Map<String, dynamic>>()
            .map((e) => ChooseRideModelsModel.fromJson(e))
            .toList();
        emit(ChooseRideModelsState.loaded(result));
        return result;
    }

      else{
        if(response.code == "connectionError")
          {
            emit(ChooseRideModelsState.error(S.current.connectivityError));
          }
        else{
          emit(ChooseRideModelsState.error(response.message.toString()));

        }
      }

    } catch (e) {
      emit(ChooseRideModelsState.error(e));
    }
  }
}
