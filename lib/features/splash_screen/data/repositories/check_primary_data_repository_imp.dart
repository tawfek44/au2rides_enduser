import 'package:au2rides/features/splash_screen/data/datasources/check_primary_data_data_scource.dart';
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: CheckPrimaryDataRepository)
class CheckPrimaryDataRepositoryImpl extends CheckPrimaryDataRepository{
  final CheckPrimaryDataDataSource dataDataSource;

  CheckPrimaryDataRepositoryImpl(this.dataDataSource);

  @override
  checkPrimaryData({required String lang, required data}) async {
    final response = await dataDataSource.checkPrimaryData(lang: lang, data: data);
    return response;
  }

}