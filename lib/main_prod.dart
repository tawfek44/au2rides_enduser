import 'package:flutter/cupertino.dart';

import 'core/dependancy_injection/injection.dart';
import 'env.dart';
import 'main.dart';

Future main() async {
  AppEnvironment.setUpEnv(EnvironmentType.prod);
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  launchApp();
}