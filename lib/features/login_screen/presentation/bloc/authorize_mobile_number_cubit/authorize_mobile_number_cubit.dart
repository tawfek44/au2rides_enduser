import 'dart:convert';
import 'dart:io' show Platform;
import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/error/failure.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/storage/tables/users.dart';
import 'package:au2rides/features/download_screen/data/models/acquisition_types/acquisition_types_model.dart';
import 'package:au2rides/features/download_screen/data/models/authorize/authorize_body.dart';
import 'package:au2rides/features/download_screen/data/models/authorize/authorize_model.dart';
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/authorize/authorize_usecase.dart';
import 'package:au2rides/features/login_screen/domain/repositories/check_user_existence_in_local_db_repository.dart';
import 'package:au2rides/features/enter_user_info/domain/repositories/user/user_repository.dart';
import 'package:au2rides/features/login_screen/domain/use_cases/authorize_mobile_number/authroize_mobile_number_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../../../core/dependancy_injection/injection.dart';
import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';
import '../../../data/models/authorize_phone_number_body_model.dart';

part 'authorize_mobile_number_state.dart';

part 'authorize_mobile_number_cubit.freezed.dart';

@injectable
class AuthorizeMobileNumberCubit extends Cubit<AuthorizeMobileNumberState> {
  AuthorizeMobileNumberCubit(
    this._authorizeMobileNumberUseCase,
  ) : super(const AuthorizeMobileNumberState.initial());
  final AuthorizeMobileNumberUseCase _authorizeMobileNumberUseCase;

  Future authorizeMobileNumber(
      {required String phoneNumber, required int countryId}) async {
    try {
      AuthorizeMobileNumberBodyModel authorizeMobileNumberBodyModel =
          AuthorizeMobileNumberBodyModel(
        userPhoneNumber: phoneNumber,
        countryId: countryId,
        languageId: 9,
        identityProvider: "au2rides",
        behaviour: "login_register",
      );
      final response = await _authorizeMobileNumberUseCase(param: [
        getIt<UserRepository>().getUserLanguage,
        authorizeMobileNumberBodyModel.toJson()
      ]);
      if (!(response is Failure)) {

      }
      return response;
    } catch (e) {
      return e;
    }
  }

  Future checkMobileNumberExistenceInLocalDb({required userId}) async {
    return await  getIt<CheckUserExistenceInLocalDbRepository>()
    .checkUserExistenceInLocalDb(userId: userId);
  }
  Future addNewUserInLocalDb({required userId}) async {
    User user = User(
        userId: userId,
        firstName: "tawfek",
        lastName: "hesham",
        emailAddress: "tgthtgtrh@gmail.com",
        isVerified: 1,
        profileImageUrl: "thrbgyhyt",
        profileQrCode: "byhjnyhjn",
        mobileNumber: "01143178019",
        countryId: 9,
        genderId: 6,
        birthDate: "12-1-1999");
    final userIndex = await getIt<UserAccountRepository>()
        .addUserInLocalDb(userData: user.toJson());
    return userIndex;
  }
}
