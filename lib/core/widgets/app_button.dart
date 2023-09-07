import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/colors.dart';
import 'app_text.dart';

class AppButton extends StatelessWidget {
  final String label;
  final double roundness;
  final FontWeight fontWeight;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Widget? trailingWidget;
  final Function onPressed;
  final double? height;
  final double? width;
  final Color? color;

   AppButton(
      {Key? key,
      required this.label,
      this.roundness = 3,
      this.fontWeight = FontWeight.bold,
      this.padding,
      this.margin,
      this.trailingWidget,
      required this.onPressed,
      this.height,
      this.width,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.symmetric(vertical: 2.h),
      margin: margin ?? EdgeInsets.all(1.sp),
      width: width ?? double.maxFinite,
      height: height ?? 35.h,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(roundness),
              //side: BorderSide(color: color ?? AppColors.primaryColor),
            ),
          ),
          backgroundColor:
              MaterialStateProperty.all<Color>(color ?? Theme.of(context).primaryColor),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: AppText(
                text: label,
                textAlign: TextAlign.center,
                fontSize: 13.sp,
                fontWeight: fontWeight,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
