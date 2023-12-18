
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart' as intl;

import '../styles/colors.dart';
import '../../generated/l10n.dart';
import '../widgets/app_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const enLanguageCode = 'en';
const arLanguageCode = 'ar';
const enLanguageNumberCode = 56;
const arLanguageNumberCode = 9;
const String countryTableName = 'world_countries';
const String languageTableName = 'languages';
const String currencyTableName = 'currencies';
const String tableDefinitionsTableName = 'tables_definitions';
const String userGenderTableName = 'user_genders';
const String weatherMeasuringUnitsTableName = 'weather_measuring_units';
const String rideTypesTableName = 'ride_types';
const String paymentMethodTableName = 'payment_methods';
const String monthTableName = 'months';
const String pressureUnitsTableName = 'pressure_units';
const String acquisitionTypesTableName = 'acquisition_types';
const String metricUnitsTableName = 'metric_units';
const String engineTransmissionTypes = 'engine_transmission_types';
const String engineFuelTypes = 'engine_fuel_types';
const String reminderTypesTableName = 'reminder_types';
const String reminderTypeServicesTableName = 'reminder_type_services';
const String recurrencePeriodTypesTableName = 'recurrence_period_types';
const String fuelBrandsTableName = 'fuel_brands';
const String fuelConsumptionUnitTypesTableName = 'fuel_consumption_unit_types';
const downloadPrimaryDataEndPoint = "/api/Sync/v1.0/primary-data/download-primary-data";
const primaryDataEndpoint = "/api/Sync/v1.0/primary-data/request-download-primary-data";
Widget errorWidget() => Center(
  child: AppText(
    text: S.current.wrongText,
    fontSize: fontSize,
  ),
);

void showQrCodeDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Directionality(
          textDirection: TextDirection.ltr,
          child: CupertinoAlertDialog(
            content: Icon(Icons.qr_code,size: 200.w,),
          ),
        );
      });
}
bool isArabicLocalization() => intl.Intl.getCurrentLocale() == arLanguageCode;
const smallMaxLines = 1;
const highMaxLines = 10;
final fontSize = 12.sp;
final corner = 4.w;
final appButtonHeight = 45.h;

Widget gap({var width, var height}) => SizedBox(
      width: width,
      height: height,
    );

getUserRatingBar({required ratingValue, required itemSize}) =>
    RatingBarIndicator(
      itemPadding: EdgeInsets.zero,
      rating: ratingValue,
      itemBuilder: (context, index) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      itemCount: 5,
      itemSize: itemSize,
      direction: Axis.horizontal,
    );

enum AppBarRoutes { add, wallet, showFuelUp,edit,save,editAndDelete,saveAndDelete}

Widget getAppBar(
        {required Widget title,
        required context,
        List<Widget>? actions,
        bool? isLeadingIconExists,
        Widget? leading,
        PreferredSizeWidget? bottom,
        AppBarRoutes? route,
        VoidCallback? onPressedDelete,
        VoidCallback? onPressed}) =>
    AppBar(
      automaticallyImplyLeading: isLeadingIconExists??true,
      iconTheme: const IconThemeData(
        color: AppColors.white, //change your color here
      ),
      backgroundColor: Theme.of(context).primaryColor,
      leading: leading,
      title: title,
      actions: getAppBarWidgetAccordingToRoute(
          route: route, onPressed: onPressed, actions: actions,onPressedDelete: onPressedDelete,context: context),
      bottom: bottom,
    );
Widget getNotesSection({required context}) => CupertinoListSection.insetGrouped(
  header: AppText(
    text: S.current.notes,
    color: AppColors.greyColor,
    fontSize: fontSize,
  ),
  margin: EdgeInsets.zero,
  children: const [
    CupertinoListTile.notched(
      title: CupertinoTextField(
        decoration: BoxDecoration(border: Border(right: BorderSide.none)),
        maxLines: highMaxLines,
      ),
    )
  ],
);
void showLogoutDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Directionality(
          textDirection: TextDirection.ltr,
          child: CupertinoAlertDialog(
            title: Center(
                child: AppText(
                  text: "Logout",
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                )),
            content: AppText(
              text: "Are you sure that you want to log out?",
              fontSize: fontSize,
              maxLines: 10,
            ),
            actions: <Widget>[
              CupertinoDialogAction(
                child: AppText(
                  text: "Cancel",
                  fontSize: fontSize,
                ),
                onPressed: () {
                    Navigator.of(context).pop();
                },
              ),
              CupertinoDialogAction(
                child: AppText(
                  text: "Logout",
                  fontSize: fontSize,
                ),
                onPressed: () {
                    Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      });
}
Widget getConstDateWidget({required String dateText}) => Container(
  decoration: BoxDecoration(
      color: AppColors.lightGreyColor,
      borderRadius: BorderRadius.circular(5.w)),
  child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 5.h),
    child: AppText(
      text: dateText,
      fontSize: fontSize,
    ),
  ),
);

List<Widget> getAppBarWidgetAccordingToRoute(
    {AppBarRoutes? route,
    VoidCallback? onPressed,
    VoidCallback? onPressedDelete,
    required BuildContext context,
    required List<Widget>? actions}) {
  switch (route) {
    case AppBarRoutes.editAndDelete :
      return [
        IconButton(onPressed: onPressed, icon: const Icon(Icons.delete,color: AppColors.white,)),
        IconButton(onPressed: onPressed, icon: const Icon(Icons.edit,color: AppColors.white,)),

      ];
    case AppBarRoutes.saveAndDelete :
      return [
        IconButton(onPressed: onPressed, icon: const Icon(Icons.delete,color: AppColors.white,)),
        IconButton(onPressed: onPressed, icon: const Icon(Icons.save,color: AppColors.white,)),

      ];
    case AppBarRoutes.save :
      return [
        IconButton(onPressed: onPressed, icon: const Icon(Icons.save,color: AppColors.white,))
      ];
    case AppBarRoutes.add :
      return [
        IconButton(onPressed: onPressed, icon: const Icon(CupertinoIcons.add,color: AppColors.white,))
      ];
    case AppBarRoutes.wallet:
      return [
        IconButton(onPressed: onPressed, icon: const Icon(CupertinoIcons.add))
      ];
    case AppBarRoutes.showFuelUp:
      return [
        IconButton(onPressed: onPressed, icon: const Icon(CupertinoIcons.add))
      ];
    case AppBarRoutes.edit:
      return [
        IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.edit,
            )),

      ];

    default:
      {
        return actions ?? [];
      }
  }
}


