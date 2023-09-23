
import 'package:au2rides/features/Qr_code_Details_screen/presentation/screen/qr_code_details_screen.dart';
import 'package:au2rides/features/about_screen/presentation/screen/about_screen.dart';
import 'package:au2rides/features/add_feul_screen/presentation/add_fuel_screen.dart';
import 'package:au2rides/features/add_odometer/presentation/add_odometer_screen.dart';
import 'package:au2rides/features/add_ride_screen/presentation/add_ride_screen.dart';
import 'package:au2rides/features/bottom_nav_bar_screen/presentation/bottom_nav_bar_screen.dart';
import 'package:au2rides/features/contact_us_screen/presentation/screen/contact_us_screen.dart';
import 'package:au2rides/features/countries_screen/presentation/countries_screen.dart';
import 'package:au2rides/features/coupons_screen/presentation/screen/coupons_screen.dart';
import 'package:au2rides/features/currency_screen/presentation/screen/currency_screen.dart';
import 'package:au2rides/features/enter_user_info/presentation/screens/enter_user_info_screen.dart';
import 'package:au2rides/features/gender_screen/presentation/gender_screen.dart';
import 'package:au2rides/features/login_screen/presentation/screens/login_screen.dart';
import 'package:au2rides/features/multiselection_screen/presentation/screen/multiselection_screen.dart';
import 'package:au2rides/features/points_screen/presentation/screen/points_screen.dart';
import 'package:au2rides/features/profile_screen/presentation/screen/profile_screen.dart';
import 'package:au2rides/features/search_screen/presentation/screen/search_Screen.dart';
import 'package:au2rides/features/splash_screen/presentation/screen/splash.dart';
import 'package:au2rides/features/transaction_history_screen/presentation/screen/transaction_history_screen.dart';
import 'package:flutter/material.dart';
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
      case Routes.xx:
        return MaterialPageRoute(builder: (_) =>  const Directionality(
          textDirection: TextDirection.ltr,
          child: XX(),
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
