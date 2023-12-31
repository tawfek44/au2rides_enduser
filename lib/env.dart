enum EnvironmentType{dev,prod}

abstract class AppEnvironment{
  static late EnvironmentType _environment;
  static late String baseAPIUrl;
  static late String authAPIUrl;
  static EnvironmentType get environment =>_environment;

  static setUpEnv(EnvironmentType env){
    _environment = env;
    switch(env) {
      case EnvironmentType.dev:
        baseAPIUrl = "https://au2rides-mobile-development.azurewebsites.net";
        authAPIUrl = "https://au2rides-oauth-development.azurewebsites.net";
        break;
      case EnvironmentType.prod:
        // TODO: Handle this case.
        break;
    }
  }
}