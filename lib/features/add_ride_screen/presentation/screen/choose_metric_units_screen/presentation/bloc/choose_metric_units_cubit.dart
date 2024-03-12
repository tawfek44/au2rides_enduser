
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_metric_units_screen/data/models/choose_metric_units_model.dart';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/choose_metric_units_usecase.dart';


part 'choose_metric_units_state.dart';

part 'choose_metric_units_cubit.freezed.dart';
@injectable
class ChooseMetricUnitsCubit extends Cubit<ChooseMetricUnitsState> {
  ChooseMetricUnitsCubit(this.chooseMetricUnitsUseCase) : super(const ChooseMetricUnitsState.initial());
  ChooseMetricUnitsUseCase chooseMetricUnitsUseCase;

  Future getMetricUnits() async {
    try {
      emit(const ChooseMetricUnitsState.loading());
      final response = await chooseMetricUnitsUseCase();
      var result = response
          .cast<Map<String, dynamic>>()
          .map((e) => ChooseMetricUnitsModel.fromJson(e))
          .toList();
      emit(ChooseMetricUnitsState.loaded(result));
      return result;
    } catch (e) {
      emit(ChooseMetricUnitsState.error(e));
    }
  }
}