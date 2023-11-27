
import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/widgets/app_button.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/app_routes/app_routes.dart';
import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/styles/colors.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: getAppBar(
            context: context,
            title: AppText(
              text: "Verification",
              fontSize: 16.sp,
              color: AppColors.white,
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            gap(height: 30.h),
            getLogo(),
            SizedBox(
              height: 24.h,
            ),
            getVerificationTextWidget(),
            SizedBox(
              height: 10.h,
            ),
            getEnterOTPTextWidget(),
            SizedBox(
              height: 30.h,
            ),
            getPinCodeAndVerifyButtonContainerWidget(),

            SizedBox(
              height: 20.h,
            ),
            getDidNotReceiveAnyCodeTextWidget(),
            getResendNewCodeTextButton()
          ],
        ),
      ),
    );
  }

  Widget getResendNewCodeTextButton()=>TextButton(
    onPressed: (){},
    child: Text(
      "Resend New Code",
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).primaryColor,
      ),
      textAlign: TextAlign.center,
    ),
  );

  Widget getDidNotReceiveAnyCodeTextWidget()=>  Text(
    "Didn't you receive any code?",
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: Colors.black38,
    ),
    textAlign: TextAlign.center,
  );
  Widget getPinCodeAndVerifyButtonContainerWidget()=>Container(
    padding: EdgeInsets.all(16.w),
    decoration: const BoxDecoration(
      color: Colors.white,
    ),
    child: Column(
      children: [
        SizedBox(
          height: 60.h,
          width: double.infinity,
          child: Center(
              child: getOTPTextField()
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        getVerificationButton(),
      ],
    ),
  );

  Widget getVerificationButton() =>SizedBox(
    width: double.infinity,
    child: AppButton(
      color: Theme.of(context).primaryColor,
      height: 50.h,
      label: "Verify",
        onPressed: () {
          NamedNavigatorImpl().push(Routes.enterUserInfoScreenRoute);
        }),
  );
  Widget getOTPTextField() =>OtpTextField(
    numberOfFields: 6,
    keyboardType: TextInputType.number,
    filled: true,
    textStyle: TextStyle(
      fontSize: fontSize
    ),
    fillColor: Colors.black.withOpacity(0.1),
    inputFormatters: [
      FilteringTextInputFormatter.digitsOnly
    ],
  );
  Widget getPinCodeWidget()=>OtpTextField(
    keyboardType: TextInputType.number,
    numberOfFields: 6,
    showFieldAsBox: true,
    enabled: true,
    enabledBorderColor: AppColors.backgroundColor,

  );
  Widget getLogo() =>Container(
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
  Widget getVerificationTextWidget()=>AppText(
    text: 'Verification',
    fontSize: fontSize+5.sp,
    fontWeight: FontWeight.bold,
  );
  Widget getEnterOTPTextWidget()=>AppText(
    text:"Enter your OTP code here",
    fontSize: fontSize,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).hintColor,
    textAlign: TextAlign.center,
  );
}
