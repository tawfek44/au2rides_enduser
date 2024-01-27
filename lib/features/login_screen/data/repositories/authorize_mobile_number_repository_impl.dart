import 'package:au2rides/features/login_screen/data/data_scource/login_database.dart';
import 'package:au2rides/features/login_screen/domain/repositories/authoriza_mobile_number_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthorizeMobileNumberRepository)
class AuthorizeMobileNumberRepositoryImpl
    extends AuthorizeMobileNumberRepository {
  final AuthorizeMobileNumberDatasource authorizeMobileNumberDatasource;

  AuthorizeMobileNumberRepositoryImpl(this.authorizeMobileNumberDatasource);

  @override
  authorizeMobileNumber({required language,required mobileNumberAuthorizationBody}) async {
      final response =
          await authorizeMobileNumberDatasource.authorizeMobileNumber(
              mobileNumberAuthorizationBody: mobileNumberAuthorizationBody,
              language: language);
     return response;
  }
}
