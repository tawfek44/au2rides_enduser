import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/app_routes/app_routes_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class TirePressureDetailsScreen extends StatefulWidget {
  const TirePressureDetailsScreen({super.key});

  @override
  State<TirePressureDetailsScreen> createState() =>
      _TirePressureDetailsScreenState();
}

class _TirePressureDetailsScreenState extends State<TirePressureDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          title: AppText(
            text: "Tire Pressure",
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
              getTirePressureSection(),
              getFrontSection(),
              getRearSection()
            ],
          ),
        ),
      ),
    );
  }
  getRearSection()=>CupertinoListSection.insetGrouped(
    margin: EdgeInsets.zero,
    header: AppText(
      text: "REAR",
      fontSize: fontSize,
      color: AppColors.greyColor,
    ),
    children: [
      CupertinoListTile(
        onTap: (){
          NamedNavigatorImpl().push(Routes.multiSelectionScreenRoute);
        },
        leading: Icon(Icons.tire_repair,color: Theme.of(context).primaryColor,),
        title: AppText(
          text: "Pressure",
          fontSize: fontSize,
        ),
        additionalInfo: AppText(text: "565",fontSize: fontSize,color: AppColors.greyColor,),
        trailing: AppText(text: "psi",fontSize: fontSize,color: AppColors.greyColor,),
      ),
      CupertinoListTile(
        onTap: (){
          NamedNavigatorImpl().push(Routes.multiSelectionScreenRoute);
        },
        leading: Icon(Icons.tire_repair,color: Theme.of(context).primaryColor,),
        title: AppText(
          text: "Size",
          fontSize: fontSize,
        ),
        additionalInfo: AppText(text: "123",fontSize: fontSize,color: AppColors.greyColor,),
        trailing: AppText(text: "psi",fontSize: fontSize,color: AppColors.greyColor,),
      )
    ],
  );
  getFrontSection()=> CupertinoListSection.insetGrouped(
    margin: EdgeInsets.zero,
    header: AppText(
      text: "FRONT",
      fontSize: fontSize,
      color: AppColors.greyColor,
    ),
    children: [
      CupertinoListTile(
        onTap: (){
          NamedNavigatorImpl().push(Routes.multiSelectionScreenRoute);
        },
        leading: Icon(Icons.tire_repair,color: Theme.of(context).primaryColor,),
        title: AppText(
          text: "Pressure",
          fontSize: fontSize,
        ),
        additionalInfo: AppText(text: "565",fontSize: fontSize,color: AppColors.greyColor,),
        trailing: AppText(text: "psi",fontSize: fontSize,color: AppColors.greyColor,),
      ),
      CupertinoListTile(
        onTap: (){
          NamedNavigatorImpl().push(Routes.multiSelectionScreenRoute);
        },
        leading: Icon(Icons.tire_repair,color: Theme.of(context).primaryColor,),
        title: AppText(
          text: "Size",
          fontSize: fontSize,
        ),
        additionalInfo: AppText(text: "123",fontSize: fontSize,color: AppColors.greyColor,),
        trailing: AppText(text: "psi",fontSize: fontSize,color: AppColors.greyColor,),
      )
    ],
  );
  getTirePressureSection()=>  CupertinoListSection.insetGrouped(
    margin: EdgeInsets.zero,
    header: AppText(
      text: "TIRE PRESSURE",
      fontSize: fontSize,
      color: AppColors.greyColor,
    ),
    children: [
      CupertinoListTile(
        onTap: (){
          NamedNavigatorImpl().push(Routes.multiSelectionScreenRoute);
        },
        leading: Icon(Icons.tire_repair,color: Theme.of(context).primaryColor,),
        title: AppText(
          text: "Units",
          fontSize: fontSize,
        ),
        trailing: const Icon(CupertinoIcons.right_chevron,color: AppColors.greyColor,),
      )
    ],
  );
}
