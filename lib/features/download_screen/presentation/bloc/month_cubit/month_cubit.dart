import 'package:au2rides/features/download_screen/domain/usecase/month/clear_all_data_month_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/month/get_months_usecase.dart';
import 'package:au2rides/features/splash_screen/data/models/check_primary_data_body_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/storage/local/sqlite.dart';
import '../../../data/models/country/country_model.dart';
import '../../../data/models/month/month_model.dart';
import '../../../domain/usecase/country/clear_all_data_country_usecase.dart';
import '../../../domain/usecase/country/country_usecase.dart';
import '../../../domain/usecase/country/save_country_usecase.dart';
import '../../../domain/usecase/currency/currency_usecase.dart';
import '../../../domain/usecase/month/save_months_usecase.dart';

part 'month_state.dart';

part 'month_cubit.freezed.dart';

@injectable
class MonthCubit extends Cubit<MonthState> {
  MonthCubit(
      this.getMonthsUseCase,
      this.saveMonthsUseCase,
      this.clearMonthUseCase,)
      : super(const MonthState.initial());
  GetMonthsUseCase getMonthsUseCase;
  SaveMonthsUseCase saveMonthsUseCase;
  ClearMonthUseCase clearMonthUseCase;

  Future getAllMonths({required String lang,required tableDefinitions}) async {
    try {
      emit(const MonthState.loading());
      tableDefinitions = (tableDefinitions as CheckPrimaryDataBodyModel).toJson();
      final response = await getMonthsUseCase(param: [lang,tableDefinitions]);
      emit(MonthState.loaded(response));
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => MonthModel.fromJson(e))
          .toList();
    } catch (e) {
      emit(MonthState.error(e));
    }
  }


  Future saveMonthInLocalDatabase({required dynamic values, required tableName}) async {
    try {
      return await saveMonthsUseCase(param: values);
      //emit(const CountryState.savedInLocalDB());
    } catch (e) {
      emit(MonthState.error(e));
    }
  }

  Future clearMonthsInLocalDatabase({required String tableName,required languageId}) async {
    try {
      await clearMonthUseCase(param: [tableName,languageId]);
    } catch (e) {
      print(e);
    }
  }




}
