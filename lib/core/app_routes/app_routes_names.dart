class Routes {
  static const splashScreenRoute = "SPLASH_SCREEN_ROUTE";
  static const homeScreenRoute = "HOME_SCREEN_ROUTE";
  static const otpScreenRoute = "OTP_SCREEN_ROUTE";
  static const loginScreenRoute = "LOGIN_SCREEN_ROUTE";
  static const bottomNavBarScreenRoute = "BOTTOM_NAV_BAR_SCREEN_ROUTE";

  static const shopsScreenRoute = "SHOPS_SCREEN_ROUTE";
  static const moreScreenRoute = "MORE_SCREEN_ROUTE";
  static const remindersScreenRoute = "REMINDER_SCREEN_ROUTE";
  static const enterUserInfoScreenRoute = "ENTER_USER_INFO_SCREEN_ROUTE";
  static const genderScreenRoute = "GENDER_SCREEN_ROUTE";
  static const countriesScreenRoute = "COUNTRIES_SCREEN_ROUTE";
  static const addRideScreenRoute = "ADD_RIDE_SCREEN_ROUTE";
  static const addFuelScreenRoute = "ADD_FUEL_SCREEN_ROUTE";
  static const addOdometerScreenRoute = "ADD_ODOMETER_SCREEN_ROUTE";
  static const aboutScreenRoute = "ABOUT_SCREEN_ROUTE";
  static const contactUsScreenRoute = "CONTACT_US_SCREEN_ROUTE";
  static const xx = "xx";
}

abstract class NamedNavigator {
  Future push(String routeName,
      {dynamic arguments, bool replace = false, bool clean = false});

  void pop({dynamic result});
}
