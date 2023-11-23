enum Environment{dev,prod}

abstract class AppEnvironment{
  static late Environment _environment;
  static late String baseAPIUrl;
  static Environment get environment =>_environment;

  static setUpEnv(Environment env){
    _environment = env;
    switch(env) {
      case Environment.dev:
        // TODO: Handle this case.
        break;
      case Environment.prod:
        // TODO: Handle this case.
        break;
    }
  }
}