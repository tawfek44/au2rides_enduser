
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/app_routes/app_routes.dart';
import 'core/app_routes/app_routes_names.dart';
import 'core/styles/theme.dart';
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
          darkTheme: darkThemeData,
          initialRoute: Routes.profileScreenRoute,
          onGenerateRoute: NamedNavigatorImpl.onGenerateRoute,
          navigatorKey: NamedNavigatorImpl.navigatorState,
        );
      },
    );
  }
}
