import 'package:au2rides/core/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        titleSpacing: 0,
        iconTheme: const IconThemeData(
          color: AppColors.white,
        ),
        title: AppText(
          text: "Profile",
          color: AppColors.white,
          fontSize: 16.sp,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            getProfileHeader(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  gap(height: 20.h),
                  AppText(
                    text: "PROFILE",
                    fontSize: fontSize,
                    color: AppColors.secondaryColor,
                  ),
                  getListTileChoiceWidget(
                      icon: Icons.account_circle_outlined,
                      title: "Account details"),
                  Divider(
                    height: 3.h,
                    indent: 40.w,
                  ),
                  getListTileChoiceWidget(
                      icon: Icons.wallet, title: "My wallets"),
                  Divider(
                    height: 3.h,
                    indent: 40.w,
                  ),
                  CupertinoListTile(
                    padding: EdgeInsets.zero,
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: "Turn your location",
                          fontSize: fontSize,
                        ),
                        AppText(
                          text: "This will improve lots of things",
                          fontSize: fontSize - 2.sp,
                          color: AppColors.secondaryColor,
                        ),
                      ],
                    ),
                    trailing: Transform.scale(
                      scale: .9,
                      child: Switch.adaptive(
                        value: value,
                        onChanged: (value){
                          setState(() {
                            this.value = value;
                          });
                        },
                      ),
                    ),
                    leading: Icon(
                      Icons.location_on_outlined,
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getRateBarAndQRCodeRow() => IntrinsicHeight(
        child: Row(
          children: [
            getRateBarWidget(),
            const VerticalDivider(
              width: 0,
            ),
            gap(width: 15.w),
            getQRCodeButton(),
          ],
        ),
      );

  Widget getImage() => Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          getImageProfile(),
          Positioned(
            bottom: -20.h,
            right: -10.w,
            child: IconButton(
              onPressed: () {},
              icon: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.white),
                    borderRadius: BorderRadius.all(Radius.circular(50.w))),
                child: CircleAvatar(
                  radius: 20.w,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      );

  Widget getImageProfile() => SizedBox(
      width: 110.w,
      height: 110.h,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(40.w),
          child: Image.asset("images/img.png")));

  getRateBarWidget() => Container(
        padding: EdgeInsets.only(right: 15.w),
        width: MediaQuery.of(context).size.width / 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            getUserRatingBar(ratingValue: 2.75, itemSize: 20.w),
          ],
        ),
      );

  getQRCodeButton() => IconButton(
        onPressed: () {},
        icon: SizedBox(
          width: 35.w,
          child: Image.asset("images/qrcode.png"),
        ),
      );

  getProfileHeader() => Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).primaryColor,
                Colors.blue[400]!,
                Colors.blue[200]!
              ],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(corner + 10.w),
              bottomRight: Radius.circular(corner + 10.w),
            )),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h),
          child: Column(
            children: [
              getImage(),
              gap(height: 15.h),
              AppText(
                text: "Ahmed Fahmy",
                fontSize: fontSize,
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
              gap(height: 3.h),
              AppText(
                text: "01143178019",
                fontSize: fontSize,
                color: AppColors.white,
              ),
              gap(height: 10.h),
              getRateBarAndQRCodeRow()
            ],
          ),
        ),
      );

  getListTileChoiceWidget({required title, required icon}) => CupertinoListTile(
        onTap: () {},
        title: AppText(
          text: title,
          fontSize: fontSize,
        ),
        leading: Icon(
          icon,
          color: Theme.of(context).primaryColor,
        ),
        padding: EdgeInsets.zero,
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: AppColors.secondaryColor,
          size: 15.w,
        ),
      );
}
