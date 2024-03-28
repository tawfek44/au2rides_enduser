import 'package:au2rides/features/countries_screen/domain/usecase/get_country_usecase.dart';
import 'package:au2rides/features/download_screen/data/models/country/country_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/dependancy_injection/injection.dart';
import '../../../../../core/repositories/user_repository.dart';
import '../../../../../core/storage/local/table_names.dart';

part 'get_countries_state.dart';

part 'get_countries_cubit.freezed.dart';

@injectable
class GetCountriesCubit extends Cubit<GetCountiesState> {
  GetCountriesCubit(this._getCountriesUseCase)
      : super(const GetCountiesState.initial());
  final GetCountriesUseCase _getCountriesUseCase;

  Future getCountriesLocalDatabase(
      {required String tableName, required languageId}) async {
    try {
      emit(const GetCountiesStateLoading());
      final response =
          await _getCountriesUseCase(param: [tableName, languageId]);
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

  search({required textToSearch, required responseList}) async {
    try {
      var temp = [];
      if (textToSearch.isNotEmpty) {
        for (var element in responseList) {
          if (element.countryName.toLowerCase().contains(textToSearch)) {
            temp.add(element);
          }
        }
        if(temp.isNotEmpty){
          emit(GetCountiesStateLoaded(temp));
        }
        else{
          emit(GetCountiesStateLoaded(responseList));
        }
      } else {
        await getCountriesLocalDatabase(
            tableName: TableNames.countryTableName,
            languageId: getIt<UserRepository>().userLanguage == "ar"
                ? arLanguageNumberCode
                : enLanguageNumberCode);
      }
    } catch (e) {
      emit(GetCountiesStateError(e));
    }
  }
}
