import 'package:au2rides/core/constants/constants.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';
import 'app_text.dart';

class SharedTextField extends StatelessWidget {
  final String? label;
  final IconData? iconData;
  final String? hintText;
  final TextInputType inputType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? obscureText;
  final TextEditingController textController;
  final FormFieldValidator? validator;
  final String? initialValue;
  final bool readOnly;
  final List<TextInputFormatter>? inputFormatter;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
   bool? enabled = true;


   SharedTextField(
      {Key? key,
       this.label, this.prefixIcon,
      this.readOnly = false,
      this.iconData,
      this.hintText,
      this.suffixIcon,
      this.obscureText = false,
      required this.textController,
      this.validator,
      required this.inputType,
      this.initialValue,
      this.inputFormatter,
      this.onChanged,
      this.onTap,
      this.enabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      controller: textController,
      readOnly: readOnly,
      inputFormatters: inputFormatter,
      textAlignVertical: TextAlignVertical.center,
      enabled: enabled,
      cursorColor: Theme.of(context).primaryColor,
      style:   TextStyle(
        color: Colors.black,
        fontSize: fontSize
        // fontFamily: isArabicLocalization() ? "Tajawal" : "Gilroy",
      ),
      onChanged: onChanged,
      onTap: onTap,
      // initialValue: initialValue ?? '',
      validator: validator,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
        isCollapsed: true,
        focusColor: AppColors.primaryColor,
        hintText: hintText ?? '',
        hintStyle: TextStyle(
          color: AppColors.greyColor,
          fontSize: 13.sp,
          fontWeight: FontWeight.normal
        ),
        contentPadding: EdgeInsets.only(left: 10.w,right: 10.w,top:15.h,bottom: 15.h),
        label: AppText(
          text: label??'',
          fontSize: 10.sp,
        ),
        border: InputBorder.none,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon
      ),
    );
  }
}
