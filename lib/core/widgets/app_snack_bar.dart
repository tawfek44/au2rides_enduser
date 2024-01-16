import 'package:au2rides/core/constants/constants.dart';
import 'package:flutter/material.dart';
import '../styles/colors.dart';
import 'app_text.dart';

// ignore: non_constant_identifier_names
SnackBar AppSnackBar({
  required String text,
  required bool isSuccess,
  Duration? duration,
  SnackBarBehavior? behavior,
  int? maxLines,
  Color? textColor,
}) {
  return SnackBar(
    content: AppText(
      text: text,
      maxLines: maxLines ?? 1,
      fontSize: fontSize,
      color: textColor ?? Colors.white,
    ),
    backgroundColor: isSuccess ? AppColors.validColor : Colors.red,
    duration: duration ?? const Duration(seconds: 3),
    behavior: behavior ?? SnackBarBehavior.floating,
  );
}
