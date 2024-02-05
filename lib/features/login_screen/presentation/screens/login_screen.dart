import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/styles/colors.dart';
import 'package:au2rides/core/widgets/app_button.dart';
import 'package:au2rides/core/widgets/app_circular_indicator.dart';
import 'package:au2rides/core/widgets/app_snack_bar.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_routes/app_routes.dart';
import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/dependancy_injection/injection.dart';
import '../../../../core/repositories/user_repository.dart';
import '../../../../generated/l10n.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();
  bool isLoading = false;
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:
      isArabicLocalization() ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(AppBar().preferredSize.height),
            child: getAppBar(
              context: context,
              title: AppText(
                text: S.current.signIn,
                color: AppColors.white,
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
                  if(isLoading)...[
                    gap(height: 30.h),
                    const AppCircularProgressIndicator()
                  ]


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getSignInSection() =>
      CupertinoListSection.insetGrouped(
        header: AppText(
          text: S.current.signInDetails,
          fontSize: fontSize,
          color: AppColors.greyColor,
        ),
        margin: EdgeInsets.zero,
        children: [
          getChooseCountryListTile(),
          getPhoneNumberWidget(),
        ],
      );

  Widget getChooseCountryListTile() =>
      CupertinoListTile(
        onTap: () {
          NamedNavigatorImpl().push(Routes.countriesScreenRoute);
        },
        leading: Icon(
          Icons.flag,
          color: Theme
              .of(context)
              .primaryColor,
        ),
        trailing: const Icon(
          CupertinoIcons.right_chevron,
          color: AppColors.greyColor,
        ),
        additionalInfo: AppText(
          text: getIt<UserRepository>().getSelectedCountry,
          color: AppColors.greyColor,
          fontSize: fontSize,
        ),
        title: AppText(
          text: S.current.country,
          fontSize: fontSize,
          color: AppColors.greyColor,
        ),
      );

  Widget getPhoneNumberWidget() =>
      CupertinoListTile(
          leadingToTitle: 0,
          leadingSize: 40.w,
          leading: AppText(
            text: getIt<UserRepository>().getSelectedCountryCallingCode,
            fontSize: fontSize.sp,
            color: AppColors.greyColor,
            maxLines: 10,
          ),
          title: CupertinoTextField(
            controller: phoneController,
            keyboardType: TextInputType.phone,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(fontSize: fontSize),
            decoration: const BoxDecoration(
                border: Border(right: BorderSide.none)),
            placeholder: S.current.phoneNumber,
            placeholderStyle: TextStyle(
              fontSize: fontSize,
              color: AppColors.greyColor,
            ),
          ));

  Widget getSignInButton() =>
      AppButton(
          color: Theme
              .of(context)
              .primaryColor,
          height: appButtonHeight,
          label: S.current.signIn,
          roundness: corner,
          onPressed: () async {
            if(phoneController.text==""){
              var snackBar = AppSnackBar(
                  text: S.current.phoneNumberMissingErrorText, isSuccess: false, maxLines: 10);
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
            else{
              showNumberValidationDialog(context);
            }

          });

  showNumberValidationDialog(BuildContext context) async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Directionality(
            textDirection: TextDirection.ltr,
            child: CupertinoAlertDialog(
              title: Center(
                  child: AppText(
                    text: S.current.numberValidation,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                  )),
              content: AppText(
                text:
                "${S.current.areYouSureThatThisNumber} ${ getIt<UserRepository>()
                    .getSelectedCountryCallingCode} ${phoneController.text} ${S.current
                    .isCorrect}",
                fontSize: fontSize,
                maxLines: 10,
                textAlign: TextAlign.center,
              ),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: AppText(
                    text: S.current.cancel,
                    fontSize: fontSize,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                CupertinoDialogAction(
                  child: AppText(
                    text: S.current.ok,
                    fontSize: fontSize,
                  ),
                  onPressed: () async {
                    Navigator.of(context).pop();
                    setState(() {
                      isLoading = true;
                    });
                      await signInWithPhoneNumber(
                          phoneNumber: getIt<UserRepository>()
                              .getSelectedCountryCallingCode +
                              phoneController.text);

                  },
                ),
              ],
            ),
          );
        });
  }

  Future<void> signInWithPhoneNumber({required String phoneNumber}) async {
    var auth = FirebaseAuth.instance;
    await auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential cred) async {
        setState(() {
          isLoading = false;
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        setState(() {
          isLoading = false;
        });
        String errorMessage="";
        switch(e.code){
          case "captcha-check-failed":
            errorMessage = S.current.theReCAPTCHAResponseTokenWasInvalidExpired;
            break;
          case "invalid-phone-number":
            errorMessage = S.current.invalidPhoneNumber;
            break;

          case "missing-phone-number":
            errorMessage = S.current.missingPhoneNumber;
            break;

          case "quota-exceeded":
            errorMessage = S.current.quotaExceeded;
            break;
          case "user-disabled":
            errorMessage = S.current.userDisabled;
            break;
          case "operation-not-allowed":
            errorMessage = S.current.operationNotAllowed;
            break;
          default:
            errorMessage = e.message!;
        }
        var snackBar = AppSnackBar(
            text: errorMessage, isSuccess: false, maxLines: 10);
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      codeSent: (String verificationId, int? resendToken) async {
        setState(() {
          isLoading = false;
        });
        getIt<UserRepository>().setPhoneNumber(phoneNumber);
        getIt<UserRepository>().setVerificationIdForOTP(verificationId);
        NamedNavigatorImpl().push(Routes.otpScreenRoute);
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        setState(() {
          isLoading = false;
        });
      },
    ).catchError((e){

    });
  }

  Widget getSignInTextWidget() =>
      AppText(
        text: S.current.signIn,
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
      );

  Widget getLogo() =>
      Container(
        width: 150.w,
        height: 150.h,
        decoration: BoxDecoration(
          color: Theme
              .of(context)
              .cardColor,
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          'images/logo.png',
        ),
      );
}
