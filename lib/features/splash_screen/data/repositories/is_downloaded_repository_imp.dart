import 'package:au2rides/core/dependancy_injection/injection.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/features/splash_screen/data/datasources/check_primary_data_data_scource.dart';
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/is_downloaded_repository.dart';
import '../datasources/isDownloaded_data_scource.dart';

@Injectable(as: IsDownloadedRepository)
class IsDownloadedImpl extends IsDownloadedRepository {
  IsDownloadedDataSource isDownloadedDataSource;

  IsDownloadedImpl(this.isDownloadedDataSource);

  @override
  isDownloaded({required String tableName}) async {
    final response = await isDownloadedDataSource.isDownloaded(
        tableName: tableName, where: 'language_name= ${getIt<UserRepository>().userLanguage}');
    return response;
  }
}
