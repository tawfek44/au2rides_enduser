import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';
import '../../../data/models/currency/currency_model.dart';
import '../../../domain/usecase/currency/currency_usecase.dart';
import '../../../domain/usecase/currency/get_all_currencies_usecase.dart';
import '../../../domain/usecase/currency/save_currencies_in_local_db_usecase.dart';

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


  Future clearCurrenciesInLocalDatabase({required String tableName,required languageId}) async {
    try {
      await clearCurrencyUseCase(param: [tableName,languageId]);
    } catch (e) {
      print(e);
    }
  }

  Future getAllCurrenciesFromNetworkDB({required String appLang,required tableDefinitions}) async {
    try {
      tableDefinitions = (tableDefinitions as CheckPrimaryDataBodyModel).toJson();

      final response = await getAllCurrencyUseCase(param: [appLang,tableDefinitions]);
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => CurrencyModel.fromJson(e))
          .toList();
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
