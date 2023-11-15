
import 'dart:convert';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale('en',''),
          theme: getLightThemeData(context),
          initialRoute: Routes.multiSelectionScreenRoute,
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

