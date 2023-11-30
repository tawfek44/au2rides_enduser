import 'package:au2rides/features/redirection_screen/domain/usecase/clear_all_data_country_usecase.dart';
import 'package:au2rides/features/redirection_screen/domain/usecase/country_usecase.dart';
import 'package:au2rides/features/redirection_screen/domain/usecase/currency_usecase.dart';
import 'package:au2rides/features/redirection_screen/domain/usecase/get_all_currencies_usecase.dart';
import 'package:au2rides/features/redirection_screen/domain/usecase/save_country_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/storage/local/sqlite.dart';
import '../../../data/models/country_model.dart';
import '../../../domain/usecase/save_currencies_in_local_db_usecase.dart';

part 'currency_state.dart';

part 'currency_cubit.freezed.dart';

@injectable
class CurrencyCubit extends Cubit<CurrencyState> {
  CurrencyCubit(
      this.clearCurrencyUseCase,
      this.getAllCurrencyUseCase,
      this.saveCurrenciesInLocalDbUseCase)
      : super(const CurrencyState.initial());
  ClearCurrencyUseCase clearCurrencyUseCase;
  GetAllCurrencyUseCase getAllCurrencyUseCase;
  SaveCurrenciesInLocalDbUseCase saveCurrenciesInLocalDbUseCase;


  Future clearCurrenciesInLocalDatabase({required String tableName}) async {
    try {
      await clearCurrencyUseCase(param: tableName);
    } catch (e) {
      print(e);
    }
  }

  Future getAllCurrenciesFromNetworkDB({required String appLang}) async {
    try {
      return await getAllCurrencyUseCase(param: appLang);
    } catch (e) {
      print(e);
    }
  }

  Future saveAllCurrenciesInLocalDB({required String tableName,required values}) async {
    try {
      final response =await saveCurrenciesInLocalDbUseCase(param: [tableName,values]);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
