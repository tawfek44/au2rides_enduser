import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';
import '../../../data/models/weather_units_model/weather_units_model.dart';
import '../../../domain/usecase/weather_measuring_units/clear_weather_units_local_usecase.dart';
import '../../../domain/usecase/weather_measuring_units/download_weather_units_network_usecase.dart';
import '../../../domain/usecase/weather_measuring_units/save_weather_units_data_usecase.dart';

part 'weather_units_state.dart';

part 'weather_units_cubit.freezed.dart';

@injectable
class WeatherUnitsCubit extends Cubit<WeatherUnitsState> {
  WeatherUnitsCubit(this.clearWeatherUnitsUseCase,this._downloadWeatherUnitsUseCase, this._saveWeatherUnitsDataInLocalDb)
      : super(const WeatherUnitsState.initial());
  final ClearWeatherUnitsUseCase clearWeatherUnitsUseCase;
  final DownloadWeatherUnitsUseCase _downloadWeatherUnitsUseCase;
  final SaveWeatherUnitsDataInLocalDb _saveWeatherUnitsDataInLocalDb;

  Future clearWeatherUnitsInLocalDatabase({required String tableName,required languageId}) async {
    try {
      await clearWeatherUnitsUseCase(param: [tableName,languageId]);
    } catch (e) {
      print(e);
    }
  }

  Future getWeatherUnitsDataFromNetworkDB(
      {required String appLang, required tableDefinitions}) async {
    try {
      tableDefinitions =
          (tableDefinitions as CheckPrimaryDataBodyModel).toJson();

      final response =
          await _downloadWeatherUnitsUseCase(param: [appLang, tableDefinitions]);
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => WeatherUnitsModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }
  }

  Future saveWeatherUnitsDataInLocalDB(
      {required String tableName, required values}) async {
    try {
      final response =
          await _saveWeatherUnitsDataInLocalDb(param: [tableName,values],);
      return response;
    } catch (e) {
      print(e);
    }
  }


}
