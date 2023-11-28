import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart';
import 'package:au2rides/features/splash_screen/domain/repositories/is_downloaded_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dependancy_injection/injection.dart';

@injectable
class IsDownloadedUseCase extends UseCase<dynamic, dynamic> {
  final IsDownloadedRepository isDownloadedRepository;

  IsDownloadedUseCase(this.isDownloadedRepository);

  @override
  Future call({param}) async {
    final response = await isDownloadedRepository.isDownloaded(tableName: param);
    return response;
  }

}