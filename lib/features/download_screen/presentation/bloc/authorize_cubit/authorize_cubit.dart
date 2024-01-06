import 'dart:convert';
import 'dart:io' show Platform;
import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/features/download_screen/data/models/acquisition_types/acquisition_types_model.dart';
import 'package:au2rides/features/download_screen/data/models/authorize/authorize_body.dart';
import 'package:au2rides/features/download_screen/data/models/authorize/authorize_model.dart';
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/authorize/authorize_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../../../core/dependancy_injection/injection.dart';
import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';
import '../../../domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart';
import '../../../domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart';

part 'authorize_state.dart';

part 'authorize_cubit.freezed.dart';

@injectable
class AuthorizeCubit extends Cubit<AuthorizeState> {
  AuthorizeCubit(
    this._authorizeUseCase,
  ) : super(const AuthorizeState.initial());
  AuthorizeUseCase _authorizeUseCase;

  getDeviceIfo() async {
    var device = await DeviceInfoPlugin().deviceInfo;
    var deviceInfo;
    if (device.data.isNotEmpty) {
      deviceInfo = device.data;
      deviceInfo = json.encode(deviceInfo);
      return deviceInfo;
    }
  }

  getPackageData() async {
    var packageInfo = await PackageInfo.fromPlatform();
    var packageVersion = packageInfo.version;
    return packageVersion;
  }

  Future authorize() async {
    try {
      var deviceInfo = await getDeviceIfo();
       var packageVersion = await getPackageData();
      var applicationPlatform = "";
      if (Platform.isAndroid) {
        applicationPlatform = "Android";
      } else if (Platform.isIOS) {
        applicationPlatform = "IOS";
      }
      var client = Client(
        applicationId: applicationId,
        applicationSecret: applicationSecret,
        applicationPlatform: applicationPlatform,
        applicationIdentifierName: applicationIdentifierName,
        applicationRedirectUrl: "",
        applicationVersion: packageVersion,
      );
      var mobileDeviceInfo = MobileDevice(
        firebaseId: getIt<UserRepository>().getUserToken,
        deviceInfo: deviceInfo,
      );
      final response = await _authorizeUseCase(
          param: AuthorizeBody(tenantId, responseType, client, mobileDeviceInfo).toJson());
          getIt<UserRepository>().setUserToken(response.data["access_token"]["access_token"]);

    } catch (e) {
      print(e);
    }
  }
}
