import 'package:au2rides/core/resources/data_state.dart';
import 'package:au2rides/features/language_screen/domain/entities/language_entity.dart';
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart';
import 'package:au2rides/features/language_screen/domain/use_cases/language_use_case.dart';
import 'package:au2rides/features/redirection_screen/domain/entity/country_entity.dart';
import 'package:au2rides/features/redirection_screen/domain/usecase/country_usecase.dart';
import 'package:au2rides/features/redirection_screen/domain/usecase/save_country_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/country_model.dart';

part 'country_state.dart';

part 'country_cubit.freezed.dart';

@injectable
class CountryCubit extends Cubit<CountryState> {
  CountryCubit(this.countryUseCase,this.saveCountryUseCase) : super(const CountryState.initial());
  CountryUseCase countryUseCase;
  SaveCountriesUseCase saveCountryUseCase;

   getAllCountries({required String lang}) async {
    try {
      emit(const CountryState.loading());
      final response = await countryUseCase(param: lang);
      emit(CountryState.loaded(response));
      return response.data
          .cast<Map<String, dynamic>>()
          .map((e) => CountryModel.fromJson(e))
          .toList();
    } catch (e) {
      emit(CountryState.error(e));
    }
  }
  saveCountriesInLocalDatabase({required dynamic values}) async {
    try {
      await saveCountryUseCase(param: values);
      emit(const CountryState.savedInLocalDB());
    } catch (e) {
      emit(CountryState.error(e));
    }
  }
}
