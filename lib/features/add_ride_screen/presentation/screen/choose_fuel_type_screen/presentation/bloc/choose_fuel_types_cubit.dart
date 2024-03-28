
import 'package:au2rides/features/add_ride_screen/domain/use_cases/add_ride_usecase.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_type_screen/data/models/choose_fuel_types_model.dart';
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
import '../../domain/use_cases/choose_fuel_types_usecase.dart';


part 'choose_fuel_types_state.dart';

part 'choose_fuel_types_cubit.freezed.dart';

@injectable
class ChooseFuelTypesCubit extends Cubit<ChooseFuelTypesState> {
  ChooseFuelTypesCubit(this.chooseFuelTypesUseCase) : super(const ChooseFuelTypesState.initial());
  ChooseFuelTypesUseCase chooseFuelTypesUseCase;

  Future getFuelTypes() async {
    try {
      emit(const ChooseFuelTypesState.loading());
      final response = await chooseFuelTypesUseCase();
      var result = response
          .cast<Map<String, dynamic>>()
          .map((e) => ChooseFuelTypesModel.fromJson(e))
          .toList();
      emit(ChooseFuelTypesState.loaded(result));
      return result;
    } catch (e) {
      emit(ChooseFuelTypesState.error(e));
    }
  }

  search({required textToSearch,required responseList}) async {
    try{
      var temp = [];
      if (textToSearch.isNotEmpty) {
        for (var element in responseList) {
          if (element.engineFuelTypeName.toLowerCase().contains(textToSearch)) {
            temp.add(element);
          }
        }

        if(temp.isNotEmpty){
          emit(ChooseFuelTypesState.loaded(temp));
        }
        else{
          emit(ChooseFuelTypesState.loaded(responseList));
        }

      }else{
        await getFuelTypes();
      }
    }catch(e){
      emit(ChooseFuelTypesState.error(e));
    }



  }
}