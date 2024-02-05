import 'package:au2rides/features/enter_user_info/domain/repositories/user/get_user_info_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/use_case/use_case.dart';
import '../repositories/user/user_repository.dart';

@injectable
class AddUserInLocalDbUseCase extends UseCase<dynamic, dynamic> {
  final UserAccountRepository userAccountRepository;

  AddUserInLocalDbUseCase(this.userAccountRepository);

  @override
  Future call({param}) async {
    final response = await userAccountRepository.addUserInLocalDb(userData: param);
    return response;
  }

}