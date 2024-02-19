
import 'package:au2rides/features/add_ride_screen/domain/use_cases/add_ride_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';

part 'add_ride_state.dart';

part 'add_ride_cubit.freezed.dart';

@injectable
class AddRideCubit extends Cubit<AddRideState> {
  AddRideCubit(this.addRideUseCase) : super(const AddRideState.initial());
  AddRideUseCase addRideUseCase;

  Future addRide({required addRideBody}) async {
    try {
      emit(const AddRideState.loading());
      final response = await addRideUseCase(param: addRideBody,);
      if (!(response is Failure)) {
        emit(AddRideState.loaded(response.data));
        return response.data;
      }
      else {
        return Left(response);
      }
    } catch (e) {
      emit(AddRideState.error(e));
    }
  }
}