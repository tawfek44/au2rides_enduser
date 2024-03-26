
import 'package:au2rides/core/error/errors_codes.dart';
import 'package:au2rides/features/add_ride_screen/domain/use_cases/add_ride_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dependancy_injection/injection.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/repositories/user_repository.dart';
import '../../../../core/utils/uploader.dart';
import '../../../../generated/l10n.dart';

part 'add_ride_state.dart';

part 'add_ride_cubit.freezed.dart';

@injectable
class AddRideCubit extends Cubit<AddRideState> {
  AddRideCubit(this.addRideUseCase) : super(const AddRideState.initial());
  AddRideUseCase addRideUseCase;
  Future addRide({required addRideBody,required imagePath,required rideId}) async {
    try {
      emit(const AddRideState.loading());
      await uploadImageToAzure(imagePath,rideId);
      final response = await addRideUseCase(param: addRideBody,);
      if (!(response is Failure)) {
        emit(AddRideState.loaded(response.data));
        return response.data;
      }
      else {
        if(response.code == HttpsStatusCode.connectionError) {
          emit(AddRideState.error(S.current.connectivityError));
        }
        else{
          emit(AddRideState.error(response.message.toString()));
        }
        return Left(response);
      }
    } catch (e) {
      emit(AddRideState.error(e));
    }
  }
}