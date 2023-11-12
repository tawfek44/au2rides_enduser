import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_routes/app_routes.dart';
import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          route: AppBarRoutes.myDocuments,
          onPressed: () {
            NamedNavigatorImpl().push(Routes.contactUsScreenRoute);
          },
          title: AppText(
            text: "Messages",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            children: [
              getMessagesList()
            ],
          ),
        ),
      ),
    );
  }
  Widget getMessagesList()=>  CupertinoListSection.insetGrouped(
    margin: EdgeInsets.zero,
    children: [
      ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => getMessagesListItem(),
        separatorBuilder: (context, index) => const Divider(
          color: AppColors.greyColor,
          thickness: .5,
          height: 0,
        ),
        itemCount: 4,
      ),
    ],
  );
  Widget getMessagesListItem()=>Padding(
    padding:  EdgeInsets.symmetric(vertical: 10.h),
    child: CupertinoListTile(
      onTap: (){
        NamedNavigatorImpl().push(Routes.contactUsScreenRoute);
      },
      leading: getMessagesImage(),
      title: AppText(text: "Message Header",fontSize: fontSize),
      subtitle: AppText(text: "Message Title",fontSize: fontSize-2.sp,color: AppColors.greyColor,),
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
  Widget getMessagesImage() => SizedBox(
    child: Image.asset("images/img.png"),
  );
}
