import 'package:flutter/cupertino.dart';

import 'core/dependancy_injection/injection.dart';
import 'env.dart';
import 'main.dart';

Future main() async {
  AppEnvironment.setUpEnv(Environment.prod);
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  launchApp();
}