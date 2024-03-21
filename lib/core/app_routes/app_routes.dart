import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/network_state/network_state.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/features/Qr_code_Details_screen/presentation/screen/qr_code_details_screen.dart';
import 'package:au2rides/features/about_screen/presentation/screen/about_screen.dart';
import 'package:au2rides/features/acquisition_screen/presentation/screen/acquisition_Screen.dart';
import 'package:au2rides/features/add_expenses_screen/presentation/screen/add_expenses_screen.dart';
import 'package:au2rides/features/add_feul_screen/presentation/add_fuel_screen.dart';
import 'package:au2rides/features/add_identity_card_or_password_screen/presentation/screen/add_identity_card_or_password_screen.dart';
import 'package:au2rides/features/add_items/presentation/screen/add_item_screen.dart';
import 'package:au2rides/features/add_maintenance_screen/presentation/screen/add_maintenance_screen.dart';
import 'package:au2rides/features/add_new_driving_licence_screen/presentation/screen/add_driving_licence_screen.dart';
import 'package:au2rides/features/add_odometer/presentation/add_odometer_screen.dart';
import 'package:au2rides/features/add_reminders_screen/presentation/add_reminders_screen.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/add_ride_screen/add_ride_screen.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_type_screen/presentation/screen/choose_fuel_types_screen.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_metric_units_screen/presentation/screen/choose_metric_units_screen.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_model_trim_screen/presentation/screen/choose_ride_model_trim_screen.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_models_screen/presentation/screen/choose_ride_models_screen.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/presentation/screen/ride_type_screen.dart';
import 'package:au2rides/features/add_shop_screen/presentation/screen/add_shop_screen.dart';
import 'package:au2rides/features/add_trip_screen/presentation/screen/add_trip_screen.dart';
import 'package:au2rides/features/add_wallet_item/presentation/screen/add_wallet_item.dart';
import 'package:au2rides/features/all_shops_screen/presentation/screen/all_shops_screen.dart';
import 'package:au2rides/features/bottom_nav_bar_screen/presentation/bottom_nav_bar_screen.dart';
import 'package:au2rides/features/change_password_screen/presentation/screen/change_password_screen.dart';
import 'package:au2rides/features/choose_provider_screen/presentation/screen/choose_provider_screen.dart';
import 'package:au2rides/features/contact_us_screen/presentation/screen/contact_us_screen.dart';
import 'package:au2rides/features/countries_screen/presentation/countries_screen.dart';
import 'package:au2rides/features/coupons_screen/presentation/screen/coupons_screen.dart';
import 'package:au2rides/features/create_item_screen/presentation/screen/create_item_screen.dart';
import 'package:au2rides/features/dashboard_signs_screen/presentation/screen/dashboard_signs_screen.dart';
import 'package:au2rides/features/departments_screen/presentation/screen/departments_screen.dart';
import 'package:au2rides/features/driving_license_screen/presentation/screen/driving_license_screen.dart';
import 'package:au2rides/features/enter_user_info/presentation/screens/enter_user_info_screen.dart';
import 'package:au2rides/features/gender_screen/presentation/gender_screen.dart';
import 'package:au2rides/features/insurance_policy_screen/presentation/screen/insurance_policy_screen.dart';
import 'package:au2rides/features/item_reminders_screen/presentation/screen/item_reminders_screen.dart';
import 'package:au2rides/features/language_screen/presentation/screen/language_screen.dart';
import 'package:au2rides/features/licence_details_screen/presentation/screen/licence_details_screen.dart';
import 'package:au2rides/features/login_screen/presentation/screens/login_screen.dart';
import 'package:au2rides/features/messages_screen/presentation/screen/messages_screen.dart';
import 'package:au2rides/features/multiselection_screen/presentation/screen/multiselection_screen.dart';
import 'package:au2rides/features/notifications_screen/presentation/screen/notifications_screen.dart';
import 'package:au2rides/features/points_screen/presentation/screen/points_screen.dart';
import 'package:au2rides/features/profile_screen/presentation/screen/profile_screen.dart';
import 'package:au2rides/features/ride_details/presentation/screen/ride_details.dart';
import 'package:au2rides/features/scheduled_maintenance_screen/presentation/screen/scheduled_maintenance_screen.dart';
import 'package:au2rides/features/search_screen/presentation/screen/search_Screen.dart';
import 'package:au2rides/features/show_expenses_screen/presentation/screen/show_expenses_screen.dart';
import 'package:au2rides/features/show_fuel_up_screen/presentation/screen/show_fuel_up_screen.dart';
import 'package:au2rides/features/show_maintenance_screen/presentation/screen/show_maintenance_screen.dart';
import 'package:au2rides/features/show_odometer_screen/presentation/screen/show_odometer_screen.dart';
import 'package:au2rides/features/show_payment_methods_screen/presentation/screen/show_payment_method_screen.dart';
import 'package:au2rides/features/show_reminders_screen/presentation/screen/show_reminders_screen.dart';
import 'package:au2rides/features/show_trips_screen/presentation/screen/show_trips_screen.dart';
import 'package:au2rides/features/splash_screen/presentation/screen/splash.dart';
import 'package:au2rides/features/start_up_screen/presentation/screen/start_up_screen.dart';
import 'package:au2rides/features/tire_pressure_details/presentation/screen/tire_pressure_details_screen.dart';
import 'package:au2rides/features/transaction_history_screen/presentation/screen/transaction_history_screen.dart';
import 'package:au2rides/features/wallet_screen/presentation/screen/wallet_screen.dart';
import 'package:au2rides/features/web_view_screen/web_view_screen.dart';
import 'package:flutter/material.dart';
import '../../features/add_ride_screen/presentation/screen/choose_fuel_consumption_units_screen/presentation/screen/choose_fuel_consumption_units_screen.dart';
import '../../features/add_ride_screen/presentation/screen/choose_fuel_units_screen/presentation/screen/choose_fuel_units_screen.dart';
import '../../features/add_ride_screen/presentation/screen/choose_ride_makes_screen/presentation/screen/choose_ride_makes_screen.dart';
import '../../features/choose_currency_screen/presentation/screen/choose_currency_screen.dart';
import '../../features/download_screen/presentation/screen/download_screen.dart';
import '../../features/identity_card_passport_screen/presentation/screen/identity_card_passport_screen.dart';
import '../../features/login_screen/presentation/screens/otp_screen.dart';
import '../dependancy_injection/injection.dart';
import 'app_routes_names.dart';

class NamedNavigatorImpl implements NamedNavigator {
  static final GlobalKey<NavigatorState> navigatorState =
      GlobalKey<NavigatorState>();

  static Route<dynamic> onGenerateRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      case Routes.splashScreenRoute:
        return MaterialPageRoute(
            builder: (_) => Directionality(
                  textDirection: TextDirection.ltr,
                  child: SplashScreen(
                      networkInfo: getIt<NetworkInfo>(),
                      userRepository: getIt<UserRepository>()),
                ));
      case Routes.otpScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: OTPScreen(),
                ));
      case Routes.loginScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: LoginScreen(),
                ));
      case Routes.bottomNavBarScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: BottomNavBarScreen(),
                ));
      case Routes.enterUserInfoScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: EnterUserInfoScreen(),
                ));
      case Routes.genderScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: GenderScreen(),
                ));
      case Routes.countriesScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: CountriesScreen(),
                ));
      case Routes.addRideScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: AddRideScreen(),
                ));
      case Routes.addFuelScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: AddFuelScreen(),
                ));
      case Routes.addOdometerScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: AddOdometerScreen(),
                ));
      case Routes.aboutScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: AboutScreen(),
                ));
      case Routes.contactUsScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: ContactUsScreen(),
                ));
      case Routes.searchQRScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: SearchScreen(),
                ));
      case Routes.myPointsScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: PointsScreen(),
                ));
      case Routes.transactionHistoryScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: TransactionHistoryScreen(),
                ));
      case Routes.couponsScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: CouponsScreen(),
                ));
      case Routes.qrCodeDetailsScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: QrCodeDetailsScreen(),
                ));
      case Routes.multiSelectionScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: MultiSelectionScreen(),
                ));
      case Routes.profileScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: ProfileScreen(),
                ));
      case Routes.changePasswordScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: ChangePasswordScreen(),
                ));
      case Routes.myDocumentsScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: IdentityCardOrPassportScreen(),
                ));
      case Routes.myDrivingLicensesScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: DrivingLicenseScreen(),
                ));
      case Routes.walletScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: WalletScreen(),
                ));
      case Routes.addWalletScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: AddWalletItemScreen(),
                ));
      case Routes.providersScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: ChooseProviderScreen(),
                ));
      case Routes.showFuelUpScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: ShowFuelUpScreen(),
                ));
      case Routes.showOdometerScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: ShowOdometerScreen(),
                ));
      case Routes.showTripsScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: ShowTripsScreen(),
                ));
      case Routes.showMaintenanceScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: ShowMaintenanceScreen(),
                ));
      case Routes.showRemindersScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: ShowRemindersScreen(),
                ));
      case Routes.addReminderScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: AddReminderScreen(),
                ));
      case Routes.addTripScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: AddTripScreen(),
                ));
      case Routes.addShopScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: AddShopScreen(),
                ));
      case Routes.showExpensesScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: ShowExpenseScreen(),
                ));
      case Routes.addExpensesScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: AddExpensesScreen(),
                ));
      case Routes.addItemScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: AddItemScreen(),
                ));
      case Routes.createNewItemScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: CreateItemScreen(),
                ));
      case Routes.departmentsScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: DepartmentsScreen(),
                ));
      case Routes.itemRemindersScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: ItemRemindersScreen(),
                ));
      case Routes.addMaintenanceScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: AddMaintenanceScreen(),
                ));
      case Routes.languagesScreenRoute:
        return MaterialPageRoute(
            builder: (_) => Directionality(
                  textDirection: isArabicLocalization()
                      ? TextDirection.rtl
                      : TextDirection.ltr,
                  child: LanguageScreen(
                    userRepository: getIt<UserRepository>(),
                  ),
                ));
      case Routes.rideDetailsScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: RideDetails(),
                ));
      case Routes.scheduledMaintenanceScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: ScheduledMaintenanceScreen(),
                ));
      case Routes.tirePressureScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: TirePressureDetailsScreen(),
                ));
      case Routes.licenceDetailsScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: LicenceDetailsScreen(),
                ));
      case Routes.insurancePolicyScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: InsurancePolicyScreen(),
                ));
      case Routes.acquisitionScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: AcquisitionScreen(),
                ));
      case Routes.addNewIdentityCardOrPassportScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: AddIdentityCardOrPasswordScreen(),
                ));
      case Routes.addDrivingLicenceScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: AddDrivingLicenceScreen(),
                ));
      case Routes.webViewScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: WebViewScreen(),
                ));
      case Routes.dashboardScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: DashboardSignsScreen(),
                ));
      case Routes.messagesScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: MessagesScreen(),
                ));
      case Routes.notificationScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: NotificationsScreen(),
                ));
      case Routes.allShopsScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: AllShopsScreen(),
                ));
      case Routes.startUpScreenRoute:
        return MaterialPageRoute(
            builder: (_) => Directionality(
                  textDirection: isArabicLocalization()
                      ? TextDirection.rtl
                      : TextDirection.ltr,
                  child: StartUpScreen(
                    userRepository: getIt<UserRepository>(),
                  ),
                ));
      case Routes.showPaymentMethodsScreenRoute:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
                  textDirection: TextDirection.ltr,
                  child: ShowPaymentMethodsScreen(),
                ));
      case Routes.downloadScreen:
        return MaterialPageRoute(
            builder: (_) => Directionality(
                  textDirection: TextDirection.ltr,
                  child: DownloadScreen(
                    userRepository: getIt<UserRepository>(),
                    tablesNames: settings.arguments,
                    networkInfo: getIt<NetworkInfo>(),
                  ),
                ));
      case Routes.chooseRideTypeScreen:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
              textDirection: TextDirection.ltr,
              child: ChooseRideTypeScreen(),
            ));
      case Routes.chooseRideMakesScreen:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
              textDirection: TextDirection.ltr,
              child: ChooseRideMakesScreen(),
            ));
      case Routes.chooseRideModelsScreen:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
              textDirection: TextDirection.ltr,
              child: ChooseRideModelsScreen(),
            ));
      case Routes.chooseFuelTypesScreen:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
              textDirection: TextDirection.ltr,
              child: ChooseFuelTypesScreen(),
            ));
      case Routes.chooseMetricUnitsScreen:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
              textDirection: TextDirection.ltr,
              child: ChooseMetricUnitsScreen(),
            ));
      case Routes.chooseFuelUnitsScreen:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
              textDirection: TextDirection.ltr,
              child: ChooseFuelUnitsScreen(),
            ));
      case Routes.chooseRideModelTrimScreen:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
              textDirection: TextDirection.ltr,
              child: ChooseRideModelTrimScreen(),
            ));
      case Routes.chooseRideFuelConsumptionUnitsScreen:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
              textDirection: TextDirection.ltr,
              child: ChooseFuelConsumptionUnitsScreen(),
            ));
      case Routes.chooseCurrencyScreen:
        return MaterialPageRoute(
            builder: (_) => const Directionality(
              textDirection: TextDirection.ltr,
              child: ChooseCurrencyScreen(),
            ));
      /* case Routes.SurahScreenRoute:
        return MaterialPageRoute(
          builder: (_) => Directionality(
              textDirection: TextDirection.rtl,
              child: SurahScreen(
                surahNumber: settings.arguments,
              )),
        );*/
    }

    return MaterialPageRoute(builder: (_) => Container());
  }

  @override
  void pop({dynamic result}) {
    if (navigatorState.currentState!.canPop()) {
      navigatorState.currentState!.pop(result);
    }
  }

  @override
  Future push(String routeName,
      {arguments, bool replace = false, bool clean = false}) {
    if (clean) {
      return navigatorState.currentState!.pushNamedAndRemoveUntil(
          routeName, (_) => false,
          arguments: arguments);
    }

    if (replace) {
      return navigatorState.currentState!
          .pushReplacementNamed(routeName, arguments: arguments);
    }

    return navigatorState.currentState!
        .pushNamed(routeName, arguments: arguments);
  }
}
