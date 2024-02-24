
import 'package:au2rides/features/home_screen/domain/use_cases/get_my_rides_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../data/models/get_my_rides_model.dart';
part 'get_my_rides_state.dart';

part 'get_my_rides_cubit.freezed.dart';

@injectable
class GetMyRidesCubit extends Cubit<GetMyRidesState> {
  GetMyRidesCubit(this.getMyRidesUseCase) : super(const GetMyRidesState.initial());
  GetMyRidesUseCase getMyRidesUseCase;

  Future getMyRides() async {
    try {
      emit(const GetMyRidesState.loading());
      var response = await getMyRidesUseCase();
      if(!(response is Failure)){
        response =  response.data.cast<Map<String,dynamic>>().map((e)=>MyRidesModel.fromJson(e)).toList();
        emit(GetMyRidesState.loaded(response));
      }
      else{
        return Left(response);
      }

    } catch (e) {
      emit(GetMyRidesState.error(e));

    }
  }
}
