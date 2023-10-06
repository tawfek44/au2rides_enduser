import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class ShowFuelUpScreen extends StatefulWidget {
  const ShowFuelUpScreen({super.key});

  @override
  State<ShowFuelUpScreen> createState() => _ShowFuelUpScreenState();
}

class _ShowFuelUpScreenState extends State<ShowFuelUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          route: AppBarRoutes.showFuelUp,
          onPressed: () {},
          title: AppText(
            text: "Show Fuel Up",
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
              getRideNameSection(),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context,index)=>Container(),
                separatorBuilder: (context,index)=>SizedBox(height: 5.h,),
                itemCount: 2,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getRideNameSection() => CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          CupertinoListTile(
            title: AppText(
              text: "Vehicle",
              fontSize: fontSize,
            ),
            leading: Icon(
              CupertinoIcons.car_detailed,
              color: Theme.of(context).primaryColor,
            ),
            trailing: AppText(
              text: 'Manar',
              fontSize: fontSize,
              color: AppColors.greyColor,
            ),
          )
        ],
      );
}
