import 'package:au2rides/core/widgets/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

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
              text: "About",
              fontSize: 16.sp,
              color: AppColors.white,
            ),
            leading: IconButton(
              color: AppColors.white,
              icon: const Icon(CupertinoIcons.back),
              onPressed: () {
                Navigator.pop(context);
              },
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
                SizedBox(
                  width: 140.w,
                  child: Image.asset("images/logo.png"),
                ),
                gap(height: 20.h),
                AppText(
                  text: 'Au2Rides',
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
                gap(height: 30.h),
                AppText(
                  text: 'Follow us',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
                gap(height: 10.h),
                Row(
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
                ),
                gap(height: 20.h),
                AppText(
                  text: 'Au2Rides - 1.0.0',
                  color: AppColors.greyColor,
                  fontSize: 13.sp,
                ),
                gap(height: 15.h),
                TextButton(
                  onPressed: () {},
                  child: AppText(
                    text: 'Privacy policy and terms of use',
                    decoration: TextDecoration.underline,
                    fontSize: 13.sp,
                  ),
                ),
                gap(height: 15.h),
                AppButton(
                  label: 'www.au2rides.com',
                  fontWeight: FontWeight.normal,

                  height: 40.h,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
