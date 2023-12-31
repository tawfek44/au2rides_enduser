import 'dart:convert';
import 'dart:io';

import 'package:au2rides/core/dependancy_injection/injection.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'dart:developer' as log_dev;
import 'core/app_routes/app_routes.dart';
import 'core/app_routes/app_routes_names.dart';
import 'core/styles/theme.dart';
import 'core/dependancy_injection/injection_utils.dart' as di;
import 'generated/l10n.dart';
import 'main_dev.dart';

void launchApp() => runApp(di.provideApp(MyApp(getIt<UserRepository>())));

class MyApp extends StatefulWidget {
  const MyApp(this._userRepository, {key}) : super(key: key);
  final UserRepository _userRepository;

  @override
  State<MyApp> createState() => _MyAppState();
}

/*
late var languageTableCount;
Future main() async {
  AppEnvironment.setUpEnv(Environment.dev);
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  Au2ridesDatabase.instance.database;
  languageTableCount = await Au2ridesDatabase.instance.getTableCount(tableName: 'language');
  if(languageTableCount==0){
    Au2ridesDatabase.instance.insert(
        tableName: 'language',
        values: Language(
            languageId: 9,
            languageCode: "ar",
            languageName: "العربية",
            directionality: "rtl")
            .toJson());
    Au2ridesDatabase.instance.insert(
        tableName: 'language',
        values: Language(
            languageId: 56,
            languageCode: "en",
            languageName: "English",
            directionality: "ltr")
            .toJson());
  }
  launchApp();
}
 */
class _MyAppState extends State<MyApp> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //awel mara a5osh el app
    if (languageTableCount == 0) {
      widget._userRepository
          .setUserLanguage(Platform.localeName.substring(0, 2));
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
          initialRoute: widget._userRepository.getFirstTimeOpenApp
              ? Routes.startUpScreenRoute
              : Routes.splashScreenRoute,
          onGenerateRoute: NamedNavigatorImpl.onGenerateRoute,
          navigatorKey: NamedNavigatorImpl.navigatorState,
        );
      },
    );
  }


}
