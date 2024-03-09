
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
import '../../domain/use_cases/choose_ride_makes_usecase.dart';


part 'choose_ride_makes_state.dart';

part 'choose_ride_makes_cubit.freezed.dart';

@injectable
class ChooseRideMakesCubit extends Cubit<ChooseRideMakesState> {
  ChooseRideMakesCubit(this.chooseRideMakesUseCase) : super(const ChooseRideMakesState.initial());
  ChooseRideMakesUseCase chooseRideMakesUseCase;

  Future getRideMakes({required rideTypeId}) async {
    try {
      emit(const ChooseRideMakesState.loading());
      final response = await chooseRideMakesUseCase(param: rideTypeId);
      var result = response.data
          .cast<Map<String, dynamic>>()
          .map((e) => ChooseRideMakesModel.fromJson(e))
          .toList();
      emit(ChooseRideMakesState.loaded(result));
      return result;
    } catch (e) {
      emit(ChooseRideMakesState.error(e));
    }
  }
}