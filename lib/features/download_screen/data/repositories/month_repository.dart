import 'package:au2rides/features/download_screen/data/datasources/month_datasource.dart';
import 'package:au2rides/features/download_screen/domain/repository/month_repository.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repository/country_repository.dart';
import '../datasources/country_datasource.dart';


@Injectable(as: MonthRepository)
class MonthRepositoryImpl extends MonthRepository {
  final MonthDataSource _monthDataSource;

  MonthRepositoryImpl(this._monthDataSource);

  @override
  clearMonthsFromLocalDB({required String tableName}) async {
    final response = await _monthDataSource.deleteAllMonthsInDatabase(
        tableName: tableName);
    return response;
  }

  @override
  getMonths({required String lang, required tableDefinitions}) async {
    final response = await _monthDataSource.getAllMonthsFromAPI(
        lang: lang, tableDefinitions: tableDefinitions);
    return response;
  }

  @override
  saveMonthsInLocalDatabase({required values}) async {
    final response =
        await _monthDataSource.saveAllMonthsInDatabase(values: values);
    return response;
  }
}
