import 'package:au2rides/core/styles/colors.dart';
import 'package:au2rides/core/widgets/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/app_text.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool isObscureCurrent = true;
  bool isObscureNew = true;
  bool isObscureConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: getAppBar(
              context: context,
              route: AppBarRoutes.save,
              title: AppText(
                text: "Change Password",
                fontSize: 16.sp,
                color: Colors.white,
              ))),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            children: [
              CupertinoListSection.insetGrouped(
                margin: EdgeInsets.zero,
                children: [
                  getTextField(
                    hintText: "Current Password",
                    choice: PasswordTextFieldsChoices.current,
                    isObscure: isObscureCurrent,
                  ),
                  getTextField(
                    hintText: "New Password",
                    choice: PasswordTextFieldsChoices.newPass,
                    isObscure: isObscureNew,
                  ),
                  getTextField(
                    hintText: "Confirm New Password",
                    choice: PasswordTextFieldsChoices.confirm,
                    isObscure: isObscureConfirm,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  getTextField(
          {required String hintText,
          required PasswordTextFieldsChoices choice,
          required bool isObscure}) =>
      CupertinoTextField(
        textInputAction: TextInputAction.next,
        obscureText: isObscure,
        style: TextStyle(fontSize: fontSize),
        keyboardType: TextInputType.number,
        placeholder: hintText,
        decoration: BoxDecoration(border: Border.all(style: BorderStyle.none)),
        maxLines: 1,
        suffix: CupertinoButton(
            onPressed: () {
              setState(() {
                switch (choice) {
                  case PasswordTextFieldsChoices.current:
                    isObscureCurrent=!isObscureCurrent;
                    break;
                  case PasswordTextFieldsChoices.newPass:
                    isObscureNew=!isObscureNew;
                    break;
                  case PasswordTextFieldsChoices.confirm:
                    isObscureConfirm=!isObscureConfirm;
                    break;
                }
              });
            },
            child: getSuffixIcon(choice: choice)),
        placeholderStyle: TextStyle(
          fontSize: fontSize,
          height: 1.3.h,
          color: AppColors.greyColor,
        ),
      );

  getSuffixIcon({required PasswordTextFieldsChoices choice}){
    switch(choice) {
      case PasswordTextFieldsChoices.current:
        if(isObscureCurrent){
          return const Icon(CupertinoIcons.eye);
        }
        else
          {
            return const Icon(CupertinoIcons.eye_slash);
          }
      case PasswordTextFieldsChoices.newPass:
        if(isObscureNew){
          return const Icon(CupertinoIcons.eye);
        }
        else
        {
          return const Icon(CupertinoIcons.eye_slash);
        }
      case PasswordTextFieldsChoices.confirm:
        if(isObscureConfirm){
          return const Icon(CupertinoIcons.eye);
        }
        else
        {
          return const Icon(CupertinoIcons.eye_slash);
        }
    }
  }
}

enum PasswordTextFieldsChoices { current, newPass, confirm }
