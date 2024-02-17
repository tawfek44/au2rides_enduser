import 'dart:io';

import 'package:au2rides/core/dependancy_injection/injection.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/app_routes/app_routes.dart';
import 'core/app_routes/app_routes_names.dart';
import 'core/notification_manager/push_notification_manager.dart';
import 'core/storage/local/sqlite.dart';
import 'core/storage/local/table_names.dart';
import 'core/storage/tables/languages.dart';
import 'core/styles/theme.dart';
import 'core/dependancy_injection/injection_utils.dart' as di;
import 'env.dart';
import 'generated/l10n.dart';
import 'main_dev.dart';

void launchApp() => runApp(di.provideApp(MyApp(getIt<UserRepository>())));

class MyApp extends StatefulWidget {
  const MyApp(this._userRepository, {key}) : super(key: key);
  final UserRepository _userRepository;

  @override
  State<MyApp> createState() => _MyAppState();
}

Future main() async {
  AppEnvironment.setUpEnv(EnvironmentType.dev);
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyB6yJxYSASdbAnEmWxQZIOovzsHZUnE46Q",
        appId: "1:814804161658:android:238fee2bf31ab7b72157c3",
        messagingSenderId: "814804161658",
        projectId: "au2rides-enduser",
      ))
      : await Firebase.initializeApp(
    // options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseNotifications().setUpFirebase();
  await configureInjection();
  Au2ridesDatabase.instance.database;
  languageTableCount =
  await Au2ridesDatabase.instance.getTableCount(tableName: TableNames.languageTableName);
  if (languageTableCount == 0) {
    getIt<UserRepository>().setSelectedCountry("");
    getIt<UserRepository>().setSelectedCountryIndex(-1);
    getIt<UserRepository>().setSelectedCountryCallingCode("");
    Au2ridesDatabase.instance.insert(
        tableName: 'languages',
        values: Language(
            languageId: 9,
            languageCode: "ar",
            languageName: "العربية",
            directionality: "rtl",
            isDownloaded: false)
            .toJson());
    Au2ridesDatabase.instance.insert(
        tableName: 'languages',
        values: Language(
            languageId: 56,
            languageCode: "en",
            languageName: "English",
            directionality: "ltr",
            isDownloaded: false)
            .toJson());

  }
  launchApp();
}

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
