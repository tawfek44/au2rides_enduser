import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/enter_user_info/domain/repositories/user/get_user_info_repository.dart';
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dependancy_injection/injection.dart';

@injectable
class GetUserInfoUseCase extends UseCase<dynamic, dynamic> {
  final GetUserInfoFromNetworkRepository getUserInfoFromNetworkRepository;

  GetUserInfoUseCase(this.getUserInfoFromNetworkRepository);

  @override
  Future call({param}) async {
    final response = await getUserInfoFromNetworkRepository.getUserInfoFromNetwork();
    return response;
  }

}