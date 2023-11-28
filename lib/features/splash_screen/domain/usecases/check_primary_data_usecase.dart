import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dependancy_injection/injection.dart';

@injectable
class CheckPrimaryDataUseCase extends UseCase<dynamic, dynamic> {
  final CheckPrimaryDataRepository checkPrimaryDataRepository;

  CheckPrimaryDataUseCase(this.checkPrimaryDataRepository);

  @override
  Future call({param}) async {
    final response = await checkPrimaryDataRepository.checkPrimaryData(
        lang: getIt<UserRepository>().userLanguage, data: param);
    return response;
  }

}