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
  static const showFuelUpScreenRoute = "SHOW_FUEL_UP_SCREEN_ROUTE";
  static const showOdometerScreenRoute = "SHOW_ODOMETER_SCREEN_ROUTE";
  static const showExpensesScreenRoute = "SHOW_EXPENSES_SCREEN_ROUTE";
  static const showTripsScreenRoute = "SHOW_TRIPS_SCREEN_ROUTE";
  static const showMaintenanceScreenRoute = "SHOW_MAINTENANCE_SCREEN_ROUTE";
  static const showRemindersScreenRoute = "SHOW_REMINDERS_SCREEN_ROUTE";
  static const addReminderScreenRoute = "ADD_REMINDER_SCREEN_ROUTE";
  static const addTripScreenRoute = "ADD_TRIP_SCREEN_ROUTE";
  static const addShopScreenRoute = "ADD_SHOP_SCREEN_ROUTE";
  static const addExpensesScreenRoute = "ADD_EXPENSES_SCREEN_ROUTE";
  static const addItemScreenRoute = "ADD_ITEM_SCREEN_ROUTE";
  static const createNewItemScreenRoute = "CREATE_NEW_ITEM_SCREEN_ROUTE";
  static const departmentsScreenRoute = "DEPARTMENTS_SCREEN_ROUTE";
  static const itemRemindersScreenRoute = "ITEM_REMINDERS_SCREEN_ROUTE";
  static const addMaintenanceScreenRoute = "ADD_MAINTENANCE_SCREEN_ROUTE";
  static const languagesScreenRoute = "LANGUAGES_SCREEN_ROUTE";
  static const rideDetailsScreenRoute = "RIDE_DETAILS_SCREEN_ROUTE";
  static const scheduledMaintenanceScreenRoute = "SCHEDULED_MAINTENANCE_SCREEN_ROUTE";
  static const tirePressureScreenRoute = "TIRE_PRESSURE_SCREEN_ROUTE";
  static const licenceDetailsScreenRoute = "LICENCE_DETAILS_SCREEN_ROUTE";
  static const insurancePolicyScreenRoute = "INSURANCE_POLICY_SCREEN_ROUTE";
  static const acquisitionScreenRoute = "ACQUISITION_SCREEN_ROUTE";
  static const addNewIdentityCardOrPassportScreenRoute = "ADD_NEW_IDENTITY_CARD_OR_PASSPORT_SCREEN_ROUTE";
  static const addDrivingLicenceScreenRoute = "ADD_DRIVING_LICENCE_SCREEN_ROUTE";
  static const webViewScreenRoute = "WEB_VIEW_SCREEN_ROUTE";
  static const dashboardScreenRoute = "DASHBOARD_SCREEN_ROUTE";
  static const messagesScreenRoute = "MESSAGES_SCREEN_ROUTE";
  static const notificationScreenRoute = "NOTIFICATION_SCREEN_ROUTE";
  static const allShopsScreenRoute = "ALL_SHOPS_SCREEN_ROUTE";
  static const startUpScreenRoute = "START_UP_SCREEN_ROUTE";
  static const showPaymentMethodsScreenRoute = "SHOW_PAYMENT_METHOD_SCREEN_ROUTE";
  static const downloadScreen = "DOWNLOAD_SCREEN_ROUTE";
  static const chooseRideTypeScreen = "CHOOSE_RIDE_TYPE_SCREEN";
  static const chooseRideMakesScreen = "CHOOSE_RIDE_MAKES_SCREEN";
  static const chooseRideModelsScreen = "CHOOSE_RIDE_MODELS_SCREEN";
  static const xx = "xx";
}

abstract class NamedNavigator {
  Future push(String routeName,
      {dynamic arguments, bool replace = false, bool clean = false});

  void pop({dynamic result});
}