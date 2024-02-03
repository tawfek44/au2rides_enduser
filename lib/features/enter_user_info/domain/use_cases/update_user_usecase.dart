import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/enter_user_info/domain/repositories/user/get_user_info_repository.dart';
import 'package:au2rides/features/enter_user_info/domain/repositories/user/user_body_repository.dart';
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dependancy_injection/injection.dart';

@injectable
class UpdateUserDataUseCase extends UseCase<dynamic, dynamic> {
  final UpdateUserRepository updateUserRepository;

  UpdateUserDataUseCase(this.updateUserRepository);

  @override
  Future call({param}) async {
    final response = await updateUserRepository.updateUserData(data: param[0], language: param[1]);
    return response;
  }

}