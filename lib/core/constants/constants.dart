import 'package:au2rides/core/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart' as intl;

import '../widgets/app_text.dart';

const enLanguageCode = 'en';
const arLanguageCode = 'ar';
const apiBaseUrl = 'http://fomoisreal-001-site3.btempurl.com/api/v1';
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
const highMaxLines = 5;
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

enum AppBarRoutes { myDocuments, wallet, addWallet, showFuelUp,edit}

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

List<Widget> getAppBarWidgetAccordingToRoute(
    {AppBarRoutes? route,
    VoidCallback? onPressed,
    VoidCallback? onPressedDelete,
    required BuildContext context,
    required List<Widget>? actions}) {
  switch (route) {
    case AppBarRoutes.myDocuments :
      return [
        IconButton(onPressed: onPressed, icon: const Icon(CupertinoIcons.add))
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
    case AppBarRoutes.addWallet:
      return [
        IconButton(
            onPressed: onPressedDelete,
            icon: const Icon(
              Icons.delete,
              color: AppColors.white,
            )),
        IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.save,
              color: AppColors.white,
            )),

      ];

    default:
      {
        return actions ?? [];
      }
  }
}


