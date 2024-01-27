import 'package:au2rides/core/resources/data_state.dart';
import 'package:au2rides/features/language_screen/domain/entities/language_entity.dart';
import 'package:injectable/injectable.dart';

abstract class AuthorizeMobileNumberRepository{
  authorizeMobileNumber({required language,required mobileNumberAuthorizationBody});
}

