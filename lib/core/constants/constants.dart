
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart' as intl;

import '../dependancy_injection/injection.dart';
import '../styles/colors.dart';
import '../../generated/l10n.dart';
import '../widgets/app_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const enLanguageCode = 'en';
const arLanguageCode = 'ar';
const enLanguageNumberCode = 56;
const arLanguageNumberCode = 9;
const tenantId = "96a97855-8463-492d-a5ec-5758e3ace3bf";
const responseType = "authorization_code";
const applicationId = "e199c942-3735-4b48-b2c7-01646b1bed89";
const applicationSecret = "y5A7CaFcHeMhPkRpUrWuZw3y6B8DaGdJfMjQmSqV";
const applicationIdentifierName = "com.au2rides.end_user";
const userProfileConnectionString = "DefaultEndpointsProtocol=https;AccountName=au2ridesusersstorage;AccountKey=v2DieEsz8MTXwlZNus0PJQ41hvb1bjcLtJ+Tgd6B0w9SJOcuWbV3bBF/3QsnbMh1ziL8fJTxpRba+AStVVLOsw==;EndpointSuffix=core.windows.net";
const azureImagesUrl = "https://au2ridesusersstorage.blob.core.windows.net/staging-mobile-uploads/";


Widget errorWidget() => Center(
  child: AppText(
    text: S.current.connectivityError,
    fontSize: fontSize,
  ),
);
int getLanguageId({required languageCode}){
  return getIt<UserRepository>().getUserLanguage=="ar"?9:56;
}
void showQrCodeDialog({required BuildContext context,required imageUrl}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Directionality(
          textDirection: TextDirection.ltr,
          child: CupertinoAlertDialog(
            content: SizedBox(width: 200.w,child: CachedNetworkImage(imageUrl: imageUrl)),
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
Widget getNotesSection({required context,required controller}) => CupertinoListSection.insetGrouped(
  header: AppText(
    text: S.current.notes,
    color: AppColors.greyColor,
    fontSize: fontSize,
  ),
  margin: EdgeInsets.zero,
  children:  [
    CupertinoListTile.notched(
      title: CupertinoTextField(
        controller: controller,
        decoration:const BoxDecoration(border: Border(right: BorderSide.none)),
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


