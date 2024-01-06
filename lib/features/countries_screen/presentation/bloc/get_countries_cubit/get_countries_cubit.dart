import 'package:au2rides/features/countries_screen/domain/usecase/get_country_usecase.dart';
import 'package:au2rides/features/download_screen/data/models/acquisition_types/acquisition_types_model.dart';
import 'package:au2rides/features/download_screen/data/models/country/country_model.dart';
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';

part 'get_countries_state.dart';

part 'get_countries_cubit.freezed.dart';

@injectable
class GetCountriesCubit extends Cubit<GetCountiesState> {
  GetCountriesCubit(
      this._getCountriesUseCase)
      : super(const GetCountiesState.initial());
  GetCountriesUseCase _getCountriesUseCase;


  Future getCountriesLocalDatabase({required String tableName,required languageId}) async {
    try {
      emit(const GetCountiesStateLoading());
     final response= await _getCountriesUseCase(param: [tableName,languageId]);
     var result = response
         .cast<Map<String, dynamic>>()
         .map((e) => CountryModel.fromJson(e))
         .toList();
     emit(GetCountiesStateLoaded(result));
     return result;
    } catch (e) {
      emit(GetCountiesStateError(e));
    }
  }
}
