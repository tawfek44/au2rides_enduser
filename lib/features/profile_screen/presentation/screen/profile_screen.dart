import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool locationButtonFlag = false;
  bool activitiesNotificationsButtonFlag = false;
  bool emailNotificationsButtonFlag = false;
  bool whatsappNotificationsButtonFlag = false;
  bool smsNotificationsButtonFlag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          title: AppText(
            text: "Profile",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [getProfileHeader(), getUserDetails()],
        ),
      ),
    );
  }

  Widget getUserDetails() => Padding(
        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gap(height: 20.h),
            getProfileSection(),
            gap(height: 35.h),
            getDocumentsSection(),
            gap(height: 35.h),
            getNotificationsSections(),
            gap(height: 35.h),
            getSecuritySection()
          ],
        ),
      );

  Widget getSecuritySection()=>Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      AppText(
        text: "SECURITY",
        fontSize: fontSize,
        color: AppColors.secondaryColor,
      ),
      getListTileChoiceWidget(
        icon: Icons.password,
        title: "Change password",
        choice: ListTileRouteChoice.changePassword,
      ),
    ],
  );
  Widget getNotificationsSections() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: "NOTIFICATIONS",
            fontSize: fontSize,
            color: AppColors.secondaryColor,
          ),
          getListTileReusableWidget(
              title: "Activities notifications",
              secondTitle: "Payments success, failed and other activities",
              flag: activitiesNotificationsButtonFlag,
              fromWhere: ListTileOnOfButtonChoice.activities,
              icon: Icons.bar_chart),
          Divider(
            height: 3.h,
            indent: 40.w,
          ),
          getListTileReusableWidget(
              title: "Email notifications",
              icon: Icons.mark_email_unread_outlined,
              fromWhere: ListTileOnOfButtonChoice.email,
              flag: emailNotificationsButtonFlag),
          Divider(
            height: 3.h,
            indent: 40.w,
          ),
          getListTileReusableWidget(
              title: "What`s app notifications",
              icon: Icons.mark_chat_unread,
              fromWhere: ListTileOnOfButtonChoice.whatsapp,
              flag: whatsappNotificationsButtonFlag),
          Divider(
            height: 3.h,
            indent: 40.w,
          ),
          getListTileReusableWidget(
              title: "SMS notifications",
              icon: Icons.markunread_mailbox_outlined,
              fromWhere: ListTileOnOfButtonChoice.sms,
              flag: smsNotificationsButtonFlag),
        ],
      );

  Widget getDocumentsSection() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: "DOCUMENTS",
            fontSize: fontSize,
            color: AppColors.secondaryColor,
          ),
          getListTileChoiceWidget(
            icon: Icons.perm_identity,
            title: "Identity card / Passport",
            choice: ListTileRouteChoice.identityCard,
          ),
          Divider(
            height: 3.h,
            indent: 40.w,
          ),
          getListTileChoiceWidget(
            icon: Icons.document_scanner,
            title: "Driving licences",
            choice: ListTileRouteChoice.drivingLicence,
          ),
          Divider(
            height: 3.h,
            indent: 40.w,
          ),
        ],
      );

  Widget getProfileSection() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: "PROFILE",
            fontSize: fontSize,
            color: AppColors.secondaryColor,
          ),
          getListTileChoiceWidget(
            icon: Icons.account_circle_outlined,
            title: "Account details",
            choice: ListTileRouteChoice.account,
          ),
          Divider(
            height: 3.h,
            indent: 40.w,
          ),
          getListTileChoiceWidget(
            icon: Icons.wallet,
            title: "My wallets",
            choice: ListTileRouteChoice.wallets,
          ),
          Divider(
            height: 3.h,
            indent: 40.w,
          ),
          getListTileReusableWidget(
              title: "Turn your location",
              secondTitle: "This will improve lots of things",
              fromWhere: ListTileOnOfButtonChoice.location,
              flag: locationButtonFlag,
              icon: Icons.location_on_outlined),
          Divider(
            height: 3.h,
            indent: 40.w,
          ),
        ],
      );

  Widget getRateBarAndQRCodeRow() => IntrinsicHeight(
        child: Row(
          children: [
            getRateBarWidget(),
            const VerticalDivider(
              width: 0,
            ),
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

  getRateBarWidget() => SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            getUserRatingBar(ratingValue: 2.75, itemSize: 25.w),
          ],
        ),
      );

  getQRCodeButton() => SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                NamedNavigatorImpl().push(Routes.searchQRScreenRoute);
              },
              icon: SizedBox(
                width: 50.w,
                child: Image.asset("images/qrcode.png"),
              ),
            ),
          ],
        ),
      );

  getProfileHeader() => Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
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
                text: "01222358041",
                fontSize: fontSize,
                color: AppColors.white,
              ),
              gap(height: 10.h),
              getRateBarAndQRCodeRow()
            ],
          ),
        ),
      );

  getListTileChoiceWidget({
    required title,
    required icon,
    required ListTileRouteChoice choice,
  }) =>
      CupertinoListTile(
        onTap: () {
          switch(choice) {
            case ListTileRouteChoice.account:
              NamedNavigatorImpl().push(Routes.enterUserInfoScreenRoute);
              break;
            case ListTileRouteChoice.wallets:
              NamedNavigatorImpl().push(Routes.walletScreenRoute);
              break;
            case ListTileRouteChoice.identityCard:
              NamedNavigatorImpl().push(Routes.myDocumentsScreenRoute);
              break;
            case ListTileRouteChoice.drivingLicence:
              NamedNavigatorImpl().push(Routes.myDrivingLicensesScreenRoute);
              break;
            case ListTileRouteChoice.changePassword:
              NamedNavigatorImpl().push(Routes.changePasswordScreenRoute);
              break;
          }
        },
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

  getListTileReusableWidget(
          {required String title,
          String? secondTitle,
          required icon,
          required ListTileOnOfButtonChoice fromWhere,
          required bool flag}) =>
      CupertinoListTile(
        padding: EdgeInsets.zero,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: title,
              fontSize: fontSize,
            ),
            if (secondTitle != null) ...[
              AppText(
                text: secondTitle,
                fontSize: fontSize - 2.sp,
                color: AppColors.secondaryColor,
              ),
            ]
          ],
        ),
        trailing: fromWhere == ListTileOnOfButtonChoice.email
            ? Transform.scale(
                scale: .9,
                child: const Switch.adaptive(
                  value: false,
                  onChanged: null,
                ),
              )
            : Transform.scale(
                scale: .9,
                child: Switch.adaptive(
                  value: flag,
                  onChanged: (value) {
                    switch (fromWhere) {
                      case ListTileOnOfButtonChoice.location:
                        setState(() {
                          locationButtonFlag = value;
                        });
                        break;
                      case ListTileOnOfButtonChoice.activities:
                        setState(() {
                          activitiesNotificationsButtonFlag = value;
                        });
                        break;
                      case ListTileOnOfButtonChoice.email:
                        setState(() {
                          emailNotificationsButtonFlag = value;
                        });
                        break;
                      case ListTileOnOfButtonChoice.whatsapp:
                        setState(() {
                          whatsappNotificationsButtonFlag = value;
                        });
                        break;
                      case ListTileOnOfButtonChoice.sms:
                        setState(() {
                          smsNotificationsButtonFlag = value;
                        });
                        break;
                    }
                  },
                ),
              ),
        leading: Icon(
          icon,
          color: Theme.of(context).primaryColor,
        ),
      );
}

enum ListTileOnOfButtonChoice { location, activities, email, whatsapp, sms }

enum ListTileRouteChoice { account, wallets, identityCard, drivingLicence,changePassword }
