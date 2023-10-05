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
  static const searchQRScreenRoute = "SEARCH_QR_SCREEN_ROUTE";
  static const myPointsScreenRoute = "MY_POINTS_SCREEN_ROUTE";
  static const currencyScreenRoute = "CURRENCY_SCREEN_ROUTE";
  static const transactionHistoryScreenRoute = "TRANSACTION_HISTORY_SCREEN_ROUTE";
  static const couponsScreenRoute = "COUPONS_SCREEN_ROUTE";
  static const qrCodeDetailsScreenRoute = "QR_CODE_DETAILS_SCREEN_ROUTE";
  static const multiSelectionScreenRoute = "MULTI_SELECTION_SCREEN_ROUTE";
  static const profileScreenRoute = "PROFILE_SCREEN_ROUTE";
  static const changePasswordScreenRoute = "CHANGE_PASSWORD_SCREEN_ROUTE";
  static const myDocumentsScreenRoute = "MY_DOCUMENTS_SCREEN_ROUTE";
  static const myDrivingLicensesScreenRoute = "MY_DRIVING_LICENSES_SCREEN_ROUTE";
  static const walletScreenRoute = "WALLET_SCREEN_ROUTE";
  static const addWalletScreenRoute = "ADD_WALLET_SCREEN_ROUTE";
  static const providersScreenRoute = "PROVIDERS_SCREEN_ROUTE";
  static const xx = "xx";
}

abstract class NamedNavigator {
  Future push(String routeName,
      {dynamic arguments, bool replace = false, bool clean = false});

  void pop({dynamic result});
}
