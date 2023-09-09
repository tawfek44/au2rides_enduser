import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class AppColors {
  //One instance, needs factory
  static AppColors? _instance;
  factory AppColors() => _instance ??= AppColors._();

  AppColors._();

  static final primaryColor = HexColor("8c00ff");
  static const validColor = Colors.green;
  static const seedColor = Color(0xFF0073B1);
  static const greyColor = Colors.grey;
  static var lightGreyColor = Colors.grey[200];
  static final lightGreyColorForText = Colors.grey[300];
  static const backgroundColor = Color(0xFFf2f1f6);
  static const backgroundColorTransparent = Color(0xe7e7e7e7);
  static final secondaryColor = HexColor("AAABA8");

  static const white = Color(0xFFffffff);
  static  const double cardCornerRadius = 6;
  static  double smallPadding = 8.w;
  static  double midPadding = 10.w;
  static  double bigPadding = 18.w;
  static  double veryBigPadding = 24.w;
}
