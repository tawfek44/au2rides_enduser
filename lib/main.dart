
import 'dart:convert';
import 'dart:io';

import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/dependancy_injection/injection.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'core/app_routes/app_routes.dart';
import 'core/app_routes/app_routes_names.dart';
import 'core/styles/theme.dart';
import 'dart:developer' as log_dev;
import 'core/dependancy_injection/injection_utils.dart' as di;
import 'generated/l10n.dart';
import 'main_dev.dart';


void launchApp() => runApp(MyApp(getIt<UserRepository>()) );

class MyApp extends StatefulWidget {
  const MyApp(this._userRepository,{key}) : super(key: key);
  final UserRepository _userRepository;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? packageName;
  double packageVersion = 0;
  late Map<String, dynamic> deviceInfo;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //awel mara a5osh el app
    if(languageTableCount==0){
      widget._userRepository.setUserLanguage(Platform.localeName.substring(0,2));
    }
    return ScreenUtilInit(
      designSize: const Size(360, 740),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''),
            Locale('ar', ''),
          ],
          locale: Locale(widget._userRepository.userLanguage),
          theme: getLightThemeData(context),
          initialRoute: Routes.startUpScreenRoute,
          onGenerateRoute: NamedNavigatorImpl.onGenerateRoute,
          navigatorKey: NamedNavigatorImpl.navigatorState,
        );
      },
    );
  }
  getDeviceIfo() {
    DeviceInfoPlugin().deviceInfo.then((device) {
      if (device.data.isNotEmpty) {
        deviceInfo = device.data;
        log_dev.log(json.encode(deviceInfo));
      }
      }
    );
  }

  getPackageData() {
    PackageInfo.fromPlatform().then((value) {
      packageName = value.packageName;
      packageVersion = double.parse(
          value.version.split(".")[0] + value.version.split(".")[1]);
      debugPrint(packageName);
    });
  }
}

