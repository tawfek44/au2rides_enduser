import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class QrCodeDetailsScreen extends StatefulWidget {
  const QrCodeDetailsScreen({super.key});

  @override
  State<QrCodeDetailsScreen> createState() => _QrCodeDetailsScreenState();
}

class _QrCodeDetailsScreenState extends State<QrCodeDetailsScreen> {
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
          text: "Qr Code Details",
          color: AppColors.white,
          fontSize: 16.sp,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            children: [
              getUpperCard(),
              getQrDetailsCard(),
              gap(height: 15.h),
              AppText(
                text: "present and scan the barcode below to apply",
                fontSize: fontSize,
                color: Colors.grey[700]!,
              ),
              gap(height: 15.h),
              getQrCodeWidget()
            ],
          ),
        ),
      ),
    );
  }

  getQrDetailsCard() => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(corner),
            bottomRight: Radius.circular(corner),
          ),
          color: Colors.white,
        ),
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Column(
            children: [
              AppText(
                text: "Above 100 EGP spent on Dry Food Sweet",
                fontSize: fontSize,
              ),
              Divider(
                height: 35.h,
              ),
              AppText(
                text: "Valid till Oct 1st",
                fontSize: fontSize,
              ),
            ],
          ),
        ),
      );

  getUpperCard() => Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(corner),
                topRight: Radius.circular(corner),
              ),
              color: Theme.of(context).primaryColor,
            ),
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        text: "100",
                        fontWeight: FontWeight.bold,
                        fontSize: 35.sp,
                        color: Colors.white,
                      ),
                      gap(width: 10.w),
                      AppText(
                        text: "Points",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Opacity(
              opacity: .2,
              child: Icon(Icons.star_rate_sharp,
                  color: Colors.grey[100], size: 100.w))
        ],
      );

  getQrCodeWidget() =>Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(corner),
        bottomRight: Radius.circular(corner),
      ),
      color: Colors.white,
    ),
    width: double.infinity,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 25.h),
      child: Column(
        children: [
          SizedBox(
            width: 100.w,
            child: Image.asset("images/qrcode.png"),
          )
        ],
      ),
    ),
  );
}
