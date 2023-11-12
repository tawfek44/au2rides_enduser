import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class DashboardSignsScreen extends StatefulWidget {
  const DashboardSignsScreen({super.key});

  @override
  State<DashboardSignsScreen> createState() => _DashboardSignsScreenState();
}

class _DashboardSignsScreenState extends State<DashboardSignsScreen> {
  List<Map<String, IconData>> addItemNamesListInEnglish = [
    {"TRAC OFF Indicator": Icons.ac_unit_sharp},
    {"Security Light": Icons.ac_unit_sharp},
    {"Traction Control Off": Icons.ac_unit_sharp},
    {"SRS Airbag ON_OFF Indicator": Icons.ac_unit_sharp},
    {"Direction/Signal Indicator": Icons.ac_unit_sharp},
    {"Maintenance required reminder light": Icons.ac_unit_sharp},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          title: AppText(
            text: "Dashboard Signs",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.speedometer,
                color: Theme.of(context).primaryColor,
                size: 40.w,
              ),
              AppText(
                text: "Dashboard Signs",
                fontSize: fontSize,
              ),
              gap(height: 10.h),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 170,
                    childAspectRatio: 3 / 3,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.h),
                itemCount: addItemNamesListInEnglish.length,
                itemBuilder: (context, index) => getModalBottomSheetItemWidget(index: index),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getModalBottomSheetItemWidget({required index}) => Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black,width: .5.h),
      borderRadius: BorderRadius.all(Radius.circular(corner)),
      color: AppColors.white,
    ),
    child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              addItemNamesListInEnglish[index].values.first,
              color: Theme.of(context).primaryColor,
              size: 40.w,
            ),
            SizedBox(
              height: 5.h,
            ),
            AppText(
              text: addItemNamesListInEnglish[index].keys.first,
              fontSize: 12.sp,
              maxLines: 10,
              textAlign: TextAlign.center,
            ),
          ],
        ),
  );
}
