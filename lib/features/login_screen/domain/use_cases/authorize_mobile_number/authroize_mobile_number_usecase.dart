import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/login_screen/domain/repositories/authoriza_mobile_number_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthorizeMobileNumberUseCase implements UseCase<dynamic, dynamic> {
  final AuthorizeMobileNumberRepository _authorizeMobileNumberRepository;

  AuthorizeMobileNumberUseCase(this._authorizeMobileNumberRepository);

  @override
  call({param}) async {
    final response =
        await _authorizeMobileNumberRepository.authorizeMobileNumber(
            language: param[0], mobileNumberAuthorizationBody: param[1]);
    return response;
  }
}


