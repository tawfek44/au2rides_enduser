
import 'package:au2rides/features/add_ride_screen/domain/use_cases/add_ride_usecase.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_units_screen/data/models/choose_fuel_units_model.dart';
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
import '../../domain/use_cases/choose_fuel_units_usecase.dart';


part 'choose_fuel_units_state.dart';

part 'choose_fuel_units_cubit.freezed.dart';

@injectable
class ChooseFuelUnitsCubit extends Cubit<ChooseFuelUnitsState> {
  ChooseFuelUnitsCubit(this.chooseFuelUnitsUseCase) : super(const ChooseFuelUnitsState.initial());
  ChooseFuelUnitsUseCase chooseFuelUnitsUseCase;

  Future getFuelUnits() async {
    try {
      emit(const ChooseFuelUnitsState.loading());
      final response = await chooseFuelUnitsUseCase();
      var result = response
          .cast<Map<String, dynamic>>()
          .map((e) => ChooseFuelUnitsModel.fromJson(e))
          .toList();
      emit(ChooseFuelUnitsState.loaded(result));
      return result;
    } catch (e) {
      emit(ChooseFuelUnitsState.error(e));
    }
  }
}