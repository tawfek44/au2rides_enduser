import 'package:au2rides/core/widgets/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../generated/l10n.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: getAppBar(
            context: context,
            title: AppText(
              text: S.current.about,
              fontSize: 16.sp,
              color: AppColors.white,
            ),
          )),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 15.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                getLogo(),
                gap(height: 20.h),
                getAppName(),
                gap(height: 30.h),
                getFollowUsWidget(),
                gap(height: 10.h),
                getSocialMediaLogos(),
                gap(height: 20.h),
                getAppVersion(),
                gap(height: 15.h),
                getPrivacyPolicyTextButton(),
                gap(height: 15.h),
                getWebSiteButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget getWebSiteButton()=>AppButton(
    label: 'www.au2rides.com',
    fontWeight: FontWeight.normal,
    height: 40.h,
    onPressed: () {},
  );
  Widget getPrivacyPolicyTextButton()=> TextButton(
    onPressed: () {},
    child: AppText(
      text: S.current.privacyPolicyAndTermsOfUse,
      decoration: TextDecoration.underline,
      fontSize: 13.sp,
    ),
  );
  Widget getAppVersion()=>AppText(
    text: 'Au2Rides - 1.0.0',
    color: AppColors.greyColor,
    fontSize: 13.sp,
  );
  Widget getSocialMediaLogos()=> Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        onPressed: () {},
        icon: CircleAvatar(
          radius: 20.w,
          child: Image.asset("images/facebook.png"),
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: CircleAvatar(
          radius: 20.w,
          child: Image.asset("images/instagram.png"),
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: CircleAvatar(
          radius: 20.w,
          child: Image.asset("images/linkedin.png"),
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: CircleAvatar(
          radius: 20.w,
          child: Image.asset("images/twitter.png"),
        ),
      )
    ],
  );
  Widget getFollowUsWidget()=>AppText(
    text: S.current.followUS,
    fontSize: 15.sp,
    fontWeight: FontWeight.bold,
  );
  Widget getAppName()=>AppText(
    text: 'au2rides',
    fontSize: 25.sp,
    fontWeight: FontWeight.bold,
  );
  Widget getLogo()=>SizedBox(
    width: 140.w,
    child: Image.asset("images/logo.png"),
  );
}
