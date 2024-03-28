
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/choose_fuel_consumption_units_model.dart';
import '../../domain/use_cases/choose_fuel_consumption_units_usecase.dart';


part 'choose_fuel_consumption_units_state.dart';

part 'choose_fuel_consumption_units_cubit.freezed.dart';

@injectable
class ChooseFuelConsumptionUnitsCubit extends Cubit<ChooseFuelConsumptionUnitsState> {
  ChooseFuelConsumptionUnitsCubit(this.chooseFuelConsumptionUnitsUseCase) : super(const ChooseFuelConsumptionUnitsState.initial());
  ChooseFuelConsumptionUnitsUseCase chooseFuelConsumptionUnitsUseCase;

  Future getFuelConsumptionUnits() async {
    try {
      emit(const ChooseFuelConsumptionUnitsState.loading());
      final response = await chooseFuelConsumptionUnitsUseCase();
      var result = response
          .cast<Map<String, dynamic>>()
          .map((e) => FuelConsumptionUnitsModel.fromJson(e))
          .toList();
      emit(ChooseFuelConsumptionUnitsState.loaded(result));
      return result;
    } catch (e) {
      emit(ChooseFuelConsumptionUnitsState.error(e));
    }
  }

  search({required textToSearch,required responseList}) async {

    try{
      var temp = [];
      if (textToSearch.isNotEmpty) {
        for (var element in responseList) {
          if (element.fuelConsumptionUnitTypeName
              .toLowerCase()
              .contains(textToSearch)) {
            temp.add(element);
          }
        }
        if(temp.isNotEmpty){
          emit(ChooseFuelConsumptionUnitsState.loaded(temp));
        }
        else{
          emit(ChooseFuelConsumptionUnitsState.loaded(responseList));
        }
      }else{
        await getFuelConsumptionUnits();
      }
    }catch(e){
      emit(ChooseFuelConsumptionUnitsState.error(e));
    }

  }
}