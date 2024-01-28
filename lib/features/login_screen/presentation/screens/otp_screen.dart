import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/error/failure.dart';
import 'package:au2rides/core/widgets/app_button.dart';
import 'package:au2rides/core/widgets/app_circular_indicator.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:au2rides/features/login_screen/presentation/bloc/authorize_mobile_number_cubit/authorize_mobile_number_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/app_routes/app_routes.dart';
import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/dependancy_injection/injection.dart';
import '../../../../core/repositories/user_repository.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_snack_bar.dart';
import '../../../../generated/l10n.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  var code = "";
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:
          isArabicLocalization() ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(AppBar().preferredSize.height),
            child: getAppBar(
              context: context,
              title: AppText(
                text: S.current.verification,
                fontSize: 16.sp,
                color: AppColors.white,
              ),
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              gap(height: 30.h),
              getLogo(),
              gap(height: 24.h),
              getVerificationTextWidget(),
              gap(height: 10.h),
              getEnterOTPTextWidget(),
              gap(height: 30.h),
              getPinCodeAndVerifyButtonContainerWidget(),
              gap(height: 20.h),
              getDidNotReceiveAnyCodeTextWidget(),
              getResendNewCodeTextButton(),
              gap(height: 20.h),
              if (isLoading) ...[
                const AppCircularProgressIndicator(),
              ]
            ],
          ),
        ),
      ),
    );
  }

  Widget getResendNewCodeTextButton() => TextButton(
        onPressed: () async {
          NamedNavigatorImpl().push(Routes.loginScreenRoute, replace: true);
        },
        child: Text(
          S.current.resendNewCode,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
          textAlign: TextAlign.center,
        ),
      );

  Widget getDidNotReceiveAnyCodeTextWidget() => Text(
        S.current.didNotYouReceiveAnyCode,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.black38,
        ),
        textAlign: TextAlign.center,
      );

  Widget getPinCodeAndVerifyButtonContainerWidget() => Container(
        padding: EdgeInsets.all(16.w),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 60.h,
              width: double.infinity,
              child: Center(child: getOTPTextField()),
            ),
            SizedBox(
              height: 20.h,
            ),
            getVerificationButton(),
          ],
        ),
      );

  Widget getVerificationButton() => SizedBox(
        width: double.infinity,
        child: AppButton(
            color: Theme.of(context).primaryColor,
            height: 50.h,
            label: S.current.verify,
            onPressed: () async {
              try {
                setState(() {
                  isLoading = true;
                });
                PhoneAuthCredential phoneAuthCredential =
                    PhoneAuthProvider.credential(
                  verificationId:
                      getIt<UserRepository>().getVerificationIdForOTP,
                  smsCode: code,
                );
                await FirebaseAuth.instance
                    .signInWithCredential(phoneAuthCredential)
                    .then((value) async {
                  await authorizeMobileNumber(
                      mobileNumber: getIt<UserRepository>().getPhoneNumber,
                      countryId: getIt<UserRepository>().getSelectedCountryId);
                  var snackBar = AppSnackBar(
                      text: S.current.numberVerified,
                      isSuccess: true,
                      maxLines: 10);
                  setState(() {
                    isLoading = false;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }).catchError((e) {
                  var snackBar = AppSnackBar(
                      text: e.toString(), isSuccess: false, maxLines: 10);
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  setState(() {
                    isLoading = false;
                  });
                });
              } catch (e) {
                setState(() {
                  isLoading = false;
                });
                var snackBar = AppSnackBar(
                    text: e.toString(), isSuccess: false, maxLines: 10);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            }),
      );

  Widget getOTPTextField() => Directionality(
        textDirection:
            isArabicLocalization() ? TextDirection.rtl : TextDirection.ltr,
        child: OtpTextField(
          numberOfFields: 6,
          keyboardType: TextInputType.number,
          filled: true,
          onSubmit: (value) {
            code = value;
          },
          textStyle: TextStyle(fontSize: fontSize),
          fillColor: Colors.black.withOpacity(0.1),
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        ),
      );

  Widget getPinCodeWidget() => OtpTextField(
        keyboardType: TextInputType.number,
        numberOfFields: 6,
        showFieldAsBox: true,
        enabled: true,
        enabledBorderColor: AppColors.backgroundColor,
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

  Widget getVerificationTextWidget() => AppText(
        text: S.current.verification,
        fontSize: fontSize + 5.sp,
        fontWeight: FontWeight.bold,
      );

  Widget getEnterOTPTextWidget() => AppText(
        text: S.current.enterYourOTPCodeHere,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).hintColor,
        textAlign: TextAlign.center,
      );

  authorizeMobileNumber(
      {required String mobileNumber, required int countryId}) async {
    final response =
        await context.read<AuthorizeMobileNumberCubit>().authorizeMobileNumber(
              phoneNumber: getIt<UserRepository>().getPhoneNumber,
              countryId: getIt<UserRepository>().getSelectedCountryId,
            );
    if (response is Failure) {
      var snackBar =
          AppSnackBar(text: response.message, isSuccess: false, maxLines: 10);
      setState(() {
        isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      String userId = response.data["registered_user_id"];
      final isMobileNumberExist = await context
          .read<AuthorizeMobileNumberCubit>()
          .checkMobileNumberExistenceInLocalDb(userId: userId);

      //this user is not exists in local db
      if (isMobileNumberExist.map((e) => e).toList().length == 0) {
        NamedNavigatorImpl().push(Routes.enterUserInfoScreenRoute);
      } else {
        NamedNavigatorImpl().push(Routes.bottomNavBarScreenRoute,clean: true);
      }
    }
  }
}
