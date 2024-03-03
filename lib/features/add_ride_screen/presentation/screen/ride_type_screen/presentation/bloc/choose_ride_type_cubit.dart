
import 'package:au2rides/features/add_ride_screen/domain/use_cases/add_ride_usecase.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/data/data_sources/choose_ride_type_datasource.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/data/models/choose_ride_type_model.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/use_cases/choose_ride_type_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/clear_ride_types_local_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../../core/error/failure.dart';


part 'add_ride_state.dart';

part 'choose_ride_type_cubit.freezed.dart';

@injectable
class ChooseRideTypeCubit extends Cubit<ChooseRideTypeState> {
  ChooseRideTypeCubit(this.chooseRideTypeUseCase) : super(const ChooseRideTypeState.initial());
  ChooseRideTypeUseCase chooseRideTypeUseCase;

  Future getRideTypes() async {
    try {
      emit(const ChooseRideTypeState.loading());
      final response = await chooseRideTypeUseCase();
      var result = response
          .cast<Map<String, dynamic>>()
          .map((e) => ChooseRideTypeModel.fromJson(e))
          .toList();
      emit(ChooseRideTypeState.loaded(result));
      return result;
    } catch (e) {
      emit(ChooseRideTypeState.error(e));
    }
  }
}