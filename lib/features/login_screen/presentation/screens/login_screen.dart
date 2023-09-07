import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/styles/colors.dart';
import 'package:au2rides/core/widgets/app_button.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/widgets/shared_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: getAppBar(
            context: context,
              title: AppText(
                text: "Sign In",
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
              ),
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              children: [
                SizedBox(
                  height: 35.h,
                ),
                getLogo(),
                SizedBox(
                  height: 25.h,
                ),
                getSignInTextWidget(),
                SizedBox(
                  height: 10.h,
                ),
                getSignInSection(),
                gap(height: 30.h),
                getSignInButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getSignInSection() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: "SIGN IN DETAILS",
            fontSize: 10.sp,
            color: AppColors.greyColor,
          ),
          gap(height: 10.h),
          Container(
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(corner))),
              child: Column(
                children: [
                  getCountriesWidget(),
                  Divider(
                    height: 0,
                    indent: 55.w,
                  ),
                  getPhoneNumberWidget()
                ],
              )),
        ],
      );

  Widget getPhoneNumberWidget()=>Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppText(
          text: '+20',
          color: AppColors.greyColor,
        ),
        Expanded(
          child: SharedTextField(
            hintText: 'Phone Number',
            textController: phoneController,
            inputType: TextInputType.text,
          ),
        ),
      ],
    ),
  );
  Widget getCountriesWidget()=>Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: () {
        NamedNavigatorImpl().push(Routes.countriesScreenRoute);
      },
      child: Padding(
        padding: EdgeInsets.only(
            left: 10.w, right: 10.w, top: 15.h, bottom: 15.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.flag,color: Theme.of(context).primaryColor,),
            gap(width: 20.w),
            AppText(
              text: "Countries",
              fontSize: 13.sp,
              color: AppColors.greyColor,
            ),
            const Spacer(),
            AppText(
              text: "Egypt",
              fontSize: 13.sp,
              color: AppColors.greyColor,
            ),
            const Icon(
              CupertinoIcons.forward,
              color: AppColors.greyColor,
            )
          ],
        ),
      ),
    ),
  );
  Widget getSignInButton() => AppButton(
      color: Theme.of(context).primaryColor,
      height: 50.h,
      label: "Sign In",
      roundness: corner,
      onPressed: () {
        NamedNavigatorImpl().push(Routes.otpScreenRoute);
      });


  Widget getSignInTextWidget() => AppText(
        text: 'Sign In',
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
      );

  Widget getLogo() => Container(
        width: 150.w,
        height: 150.h,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          'images/logo.png',
        ),
      );
}
