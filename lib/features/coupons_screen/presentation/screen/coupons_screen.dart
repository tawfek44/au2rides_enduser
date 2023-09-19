import 'package:au2rides/core/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        titleSpacing: 0,
        iconTheme: const IconThemeData(
          color: AppColors.white,
        ),
        title: AppText(
          text: "Coupons",
          color: AppColors.white,
          fontSize: 16.sp,
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
  getCouponItemWidget()=>Container(
    padding: EdgeInsets.all(15.w),
    width: double.infinity,
    color: Colors.white,
    child: Row(
      children: [
        SizedBox(
          width: 70.w,
          child: Image.asset("images/img.png"),
        ),
        gap(width: 5.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: "Mobilawy",
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
                width: 250.w,
                child: AppText(
                  text:
                  "Get 100 MyCLUB points for 100 EGP and above spent on",
                  fontSize: fontSize,
                  maxLines: 100,
                  color: Colors.grey[400]!,
                )),
            AppText(
              text: "Dry Food Sweet",
              fontSize: fontSize,
            ),
          ],
        )
      ],
    ),
  );
}
