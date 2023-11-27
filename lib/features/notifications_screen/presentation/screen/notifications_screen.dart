import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          title: AppText(
            text: "Notifications",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            children: [
              getNotificationList()
            ],
          ),
        ),
      ),
    );
  }
  Widget getNotificationList()=>  CupertinoListSection.insetGrouped(
    margin: EdgeInsets.zero,
    children: [
      ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => getNotificationListItem(),
        separatorBuilder: (context, index) => const Divider(
          color: AppColors.greyColor,
          thickness: .5,
          height: 0,
        ),
        itemCount: 4,
      ),
    ],
  );
  Widget getNotificationImage() => SizedBox(
    child: Image.asset("images/img.png"),
  );
  Widget getNotificationListItem()=>Padding(
    padding: EdgeInsets.symmetric(vertical: 10.w,horizontal: 5.h),
    child: CupertinoListTile(
      leading: getNotificationImage(),
      title: AppText(text: "Notification Header",fontSize: fontSize),
      subtitle: AppText(text: "Notification Body",fontSize: fontSize-2.sp,color: AppColors.greyColor,),
      trailing: getDateWidget(dateText: "43-45-203"),
    ),
  );
  Widget getDateWidget({required String dateText}) => Container(
    decoration: BoxDecoration(
        color: AppColors.lightGreyColor,
        borderRadius: BorderRadius.circular(5.w)),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 5.h),
      child: AppText(
        text: dateText,
        fontSize: fontSize,
      ),
    ),
  );
}
