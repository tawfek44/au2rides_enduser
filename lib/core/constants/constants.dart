import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';


const enLanguageCode = 'en';
const arLanguageCode = 'ar';
const apiBaseUrl ='http://fomoisreal-001-site3.btempurl.com/api/v1';
bool isArabicLocalization() => Intl.getCurrentLocale() == arLanguageCode;
final corner =4.w;
Widget gap({
  var width,
  var height
})=>SizedBox(
  width: width,
  height: height,
);
