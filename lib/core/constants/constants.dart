import 'package:au2rides/core/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

const enLanguageCode = 'en';
const arLanguageCode = 'ar';
const apiBaseUrl = 'http://fomoisreal-001-site3.btempurl.com/api/v1';

bool isArabicLocalization() => Intl.getCurrentLocale() == arLanguageCode;
const smallMaxLines = 1;
const highMaxLines = 5;
final fontSize = 11.sp;
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

enum AppBarRoutes { myDocuments }

Widget getAppBar(
        {required Widget title,
        required context,
        List<Widget>? actions,
        Widget? leading,
        PreferredSizeWidget? bottom,
        AppBarRoutes? route,
        VoidCallback? onPressed
        }) =>
    AppBar(
      iconTheme: const IconThemeData(
        color: AppColors.white, //change your color here
      ),
      backgroundColor: Theme.of(context).primaryColor,
      leading: leading,
      title: title,
      actions: route == AppBarRoutes.myDocuments
          ? [IconButton(onPressed: onPressed, icon: const Icon(CupertinoIcons.add))]
          : actions,
      bottom: bottom,
    );
