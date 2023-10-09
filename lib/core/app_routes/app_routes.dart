
import 'package:au2rides/features/Qr_code_Details_screen/presentation/screen/qr_code_details_screen.dart';
import 'package:au2rides/features/about_screen/presentation/screen/about_screen.dart';
import 'package:au2rides/features/add_feul_screen/presentation/add_fuel_screen.dart';
import 'package:au2rides/features/add_odometer/presentation/add_odometer_screen.dart';
import 'package:au2rides/features/add_reminders_screen/presentation/add_reminders_screen.dart';
import 'package:au2rides/features/add_ride_screen/presentation/add_ride_screen.dart';
import 'package:au2rides/features/add_wallet_item/presentation/screen/add_wallet_item.dart';
import 'package:au2rides/features/bottom_nav_bar_screen/presentation/bottom_nav_bar_screen.dart';
import 'package:au2rides/features/change_password_screen/presentation/screen/change_password_screen.dart';
import 'package:au2rides/features/choose_provider_screen/presentation/screen/choose_provider_screen.dart';
import 'package:au2rides/features/contact_us_screen/presentation/screen/contact_us_screen.dart';
import 'package:au2rides/features/countries_screen/presentation/countries_screen.dart';
import 'package:au2rides/features/coupons_screen/presentation/screen/coupons_screen.dart';
import 'package:au2rides/features/currency_screen/presentation/screen/currency_screen.dart';
import 'package:au2rides/features/driving_license_screen/presentation/screen/driving_license_screen.dart';
import 'package:au2rides/features/enter_user_info/presentation/screens/enter_user_info_screen.dart';
import 'package:au2rides/features/gender_screen/presentation/gender_screen.dart';
import 'package:au2rides/features/login_screen/presentation/screens/login_screen.dart';
import 'package:au2rides/features/multiselection_screen/presentation/screen/multiselection_screen.dart';
import 'package:au2rides/features/points_screen/presentation/screen/points_screen.dart';
import 'package:au2rides/features/profile_screen/presentation/screen/profile_screen.dart';
import 'package:au2rides/features/search_screen/presentation/screen/search_Screen.dart';
import 'package:au2rides/features/show_fuel_up_screen/presentation/screen/show_fuel_up_screen.dart';
import 'package:au2rides/features/show_maintenance_screen/presentation/screen/show_maintenance_screen.dart';
import 'package:au2rides/features/show_odometer_screen/presentation/screen/show_odometer_screen.dart';
import 'package:au2rides/features/show_reminders_screen/presentation/screen/show_reminders_screen.dart';
import 'package:au2rides/features/show_trips_screen/presentation/screen/show_trips_screen.dart';
import 'package:au2rides/features/splash_screen/presentation/screen/splash.dart';
import 'package:au2rides/features/transaction_history_screen/presentation/screen/transaction_history_screen.dart';
import 'package:au2rides/features/wallet_screen/presentation/screen/wallet_screen.dart';
import 'package:flutter/material.dart';
import '../../features/identity_card_passport_screen/presentation/screen/identity_card_passport_screen.dart';
import '../../features/login_screen/presentation/screens/otp_screen.dart';
import '../../features/xx.dart';
import 'app_routes_names.dart';

class NamedNavigatorImpl implements NamedNavigator {
  static final GlobalKey<NavigatorState> navigatorState =
      GlobalKey<NavigatorState>();

  static Route<dynamic> onGenerateRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      case Routes.splashScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
            textDirection: TextDirection.ltr,
            child: SplashScreen(),
        ));
      case Routes.otpScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: OTPScreen(),
        ));
      case Routes.loginScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: LoginScreen(),
        ));
      case Routes.bottomNavBarScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: BottomNavBarScreen(),
        ));
      case Routes.enterUserInfoScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: EnterUserInfoScreen(),
        ));
      case Routes.genderScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: GenderScreen(),
        ));
      case Routes.countriesScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: CountriesScreen(),
        ));
      case Routes.addRideScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: AddRideScreen(),
        ));
      case Routes.addFuelScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: AddFuelScreen(),
        ));
      case Routes.addOdometerScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: AddOdometerScreen(),
        ));
      case Routes.aboutScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: AboutScreen(),
        ));
      case Routes.contactUsScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: ContactUsScreen(),
        ));
      case Routes.searchQRScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: SearchScreen(),
        ));
      case Routes.myPointsScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: PointsScreen(),
        ));
      case Routes.currencyScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: CurrencyScreen(),
        ));
      case Routes.transactionHistoryScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: TransactionHistoryScreen(),
        ));
      case Routes.couponsScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: CouponsScreen(),
        ));
      case Routes.qrCodeDetailsScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: QrCodeDetailsScreen(),
        ));
      case Routes.multiSelectionScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: MultiSelectionScreen(),
        ));
      case Routes.profileScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: ProfileScreen(),
        ));
      case Routes.changePasswordScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: ChangePasswordScreen(),
        ));
      case Routes.myDocumentsScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: IdentityCardOrPassportScreen(),
        ));
      case Routes.myDrivingLicensesScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: DrivingLicenseScreen(),
        ));
      case Routes.walletScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: WalletScreen(),
        ));
      case Routes.addWalletScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: AddWalletItemScreen(),
        ));
      case Routes.providersScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: ChooseProviderScreen(),
        ));
      case Routes.showFuelUpScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: ShowFuelUpScreen(),
        ));
      case Routes.showOdometerScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: ShowOdometerScreen(),
        ));
      case Routes.showTripsScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: ShowTripsScreen(),
        ));
      case Routes.showMaintenanceScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: ShowMaintenanceScreen(),
        ));
      case Routes.showRemindersScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: ShowRemindersScreen(),
        ));
      case Routes.addReminderScreenRoute:
        return MaterialPageRoute(builder: (_) => const Directionality(
          textDirection: TextDirection.ltr,
          child: AddReminderScreen(),
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
