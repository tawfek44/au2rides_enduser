import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart';
import 'package:au2rides/features/download_screen/data/datasources/metric_units_datasource.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/metric_units_repository.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repository/currency_repository.dart';

@Injectable(as: MetricUnitsRepository)
class MetricUnitsRepositoryImpl extends MetricUnitsRepository {
  final MetricUnitsDataSource _metricUnitsDataSource;

  MetricUnitsRepositoryImpl(this._metricUnitsDataSource);

  @override
  clearMetricUnitsFromLocalDB({required String tableName, required languageId}) async {
    final response = await _metricUnitsDataSource.deleteAllMetricUnitsInDatabase(
        tableName: tableName,
        languageId: languageId
    );
    return response;
  }

  @override
  getMetricUnits({required String lang, required tableDefinitions}) async {
    final response =
        await _metricUnitsDataSource.getAllMetricUnitsFromNetworkDatabase(
        lang: lang, tableDefinitions: tableDefinitions);
    return response;
  }

  @override
  saveMetricUnitsInLocalDatabase({required String tableName, required values}) async {
    final response = await _metricUnitsDataSource
        .saveAllMetricUnitsInDatabase(
        tableName: tableName, values: values);
    return response;
  }
}
