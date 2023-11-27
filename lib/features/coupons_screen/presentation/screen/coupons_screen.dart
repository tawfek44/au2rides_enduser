
import 'package:au2rides/core/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../core/app_routes/app_routes.dart';
import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class CouponsScreen extends StatefulWidget {
  const CouponsScreen({super.key});

  @override
  State<CouponsScreen> createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          title: AppText(
            text: "Coupons",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.h),
        child: ListView.separated(
          itemBuilder: (context, index) => getCouponItemWidget(),
          separatorBuilder: (context, index) => gap(height: 10.h),
          itemCount: 2,
        ),
      ),
    );
  }

  getCouponItemWidget() => Container(
        padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 10.h),
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                getVendorImage(),
                gap(width: 5.w),
                getCouponDetails()
              ],
            ),
            const Divider(),
           getCouponsValidationDateAndViewQrCode(),
          ],
        ),
      );

  getVendorImage() => SizedBox(
        width: 70.w,
        child: Image.asset("images/img.png"),
      );

  getCouponDetails() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getVendorNameWidget(),
          getCouponDescriptionWidget(),
          AppText(
            text: "Dry Food Sweet",
            fontSize: fontSize,
          ),
        ],
      );

  getVendorNameWidget() => AppText(
        text: "Mobilawy",
        fontSize: fontSize + 1.sp,
        fontWeight: FontWeight.bold,
      );
  getCouponDescriptionWidget()=>
  SizedBox(
    width: 250.w,
    child: AppText(
    text: "Get 100 MyCLUB points for 100 EGP and above spent on",
    fontSize: fontSize,
    maxLines: 100,
    color: Colors.grey[400]!,
    ),
  );

  getCouponsValidationDateAndViewQrCode() => Row(
    children: [
      AppText(
        text: "Valid till Oct 1st 2023",
        fontSize: fontSize,
      ),
      const Spacer(),
      TextButton(
        onPressed: () {
          NamedNavigatorImpl().push(Routes.qrCodeDetailsScreenRoute);
        },
        child: AppText(
          text: "View Qr Code",
          color: Theme.of(context).primaryColor,
          fontSize: fontSize,
        ),
      )
    ],
  );
}
