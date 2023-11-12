
import 'dart:convert';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'core/app_routes/app_routes.dart';
import 'core/app_routes/app_routes_names.dart';
import 'core/styles/theme.dart';
import 'dart:developer' as logDev;
Future main() async {


  WidgetsFlutterBinding.ensureInitialized();
  //configureInjection();
  launchApp();
}

void launchApp() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({key}) : super(key: key);

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
    return ScreenUtilInit(
      designSize: const Size(360, 740),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''),
            Locale('ar', ''),
          ],
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
        print("-------------------------deviceInfo-------------------------------------");
        logDev.log(json.encode(deviceInfo));
        print("-------------------------deviceInfo-------------------------------------");
      }
      }
    );
  }

  getPackageData() {
    PackageInfo.fromPlatform().then((value) {
      packageName = value.packageName;
      packageVersion = double.parse(
          value.version.split(".")[0] + value.version.split(".")[1]);
      print("-------------------------PackageName-------------------------------------");
      debugPrint(packageName);
      print("-------------------------PackageName-------------------------------------");
    });
  }
}

