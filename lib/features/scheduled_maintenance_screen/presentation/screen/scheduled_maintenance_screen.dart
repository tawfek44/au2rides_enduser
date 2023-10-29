import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/app_routes/app_routes_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class ScheduledMaintenanceScreen extends StatefulWidget {
  const ScheduledMaintenanceScreen({super.key});

  @override
  State<ScheduledMaintenanceScreen> createState() => _ScheduledMaintenanceScreenState();
}

class _ScheduledMaintenanceScreenState extends State<ScheduledMaintenanceScreen> {
  @override
  Widget build(BuildContext context) {
    List<RemindersModel> remindersList = [
      RemindersModel(
          date: "5-7-2022",
          fuelUpItemIsVerified: "Verified",
          odometer: "25 KM",
          title: "Gas Fuel Up"
      ),
      RemindersModel(
          date: "5-7-2023",
          fuelUpItemIsVerified: "Verified",
          odometer: "235 KM",
          title: "Oil Change"
      ),
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          route: AppBarRoutes.myDocuments,
          onPressed: (){
            NamedNavigatorImpl().push(Routes.addMaintenanceScreenRoute);
          },
          title: AppText(
            text: "Scheduled Maintenance",
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
              CupertinoListSection.insetGrouped(
                margin: EdgeInsets.zero,
                children: [
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Dismissible(
                      direction: DismissDirection.endToStart,
                      key: ObjectKey(remindersList[index]),
                      background: Container(
                        color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.delete,
                              color: AppColors.white,
                              size: 25.w,
                            )
                          ],
                        ),
                      ),
                      onDismissed: (direction) {
                        setState(() {
                          remindersList.removeAt(index);
                        });
                      },
                      child: remindersItem(remindersModel: remindersList[index]),
                    ),
                    separatorBuilder: (context, index) =>  Divider(
                      height: 0,
                      indent: 15.w,
                    ),
                    itemCount: remindersList.length,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget remindersItem({required RemindersModel remindersModel}) =>
      CupertinoListTile.notched(
        padding: EdgeInsets.all(15.w),
        onTap: () {},
        title: Column(
          children: [
            Row(
              children: [
                AppText(
                  text: remindersModel.title,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                ),
                gap(width: 20.w),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(corner)),
                  child: Padding(
                    padding:  EdgeInsets.all(5.w),
                    child: Center(
                        child: Text(
                          remindersModel.fuelUpItemIsVerified,
                          style: TextStyle(
                              color: Colors.white, fontSize: fontSize - 2.sp),
                          textAlign: TextAlign.center,
                        )),
                  ),
                ),
              ],
            ),
            gap(height: 7.h),
            Row(
              children: [
                AppText(
                  text: "Date",
                  fontSize: fontSize,
                ),
                const Spacer(),
                AppText(
                  text: remindersModel.date,
                  fontSize: fontSize,
                ),
              ],
            ),
            gap(height: 7.h),
            Row(
              children: [
                AppText(
                  text: "Odometer",
                  fontSize: fontSize,
                ),
                const Spacer(),
                AppText(
                  text: remindersModel.odometer,
                  fontSize: fontSize,
                ),
              ],
            ),
          ],
        ),
        trailing: Padding(
          padding:  EdgeInsets.only(left: 10.w),
          child: Icon(
            Icons.arrow_forward_ios,
            color: AppColors.secondaryColor,
            size: 15.w,
          ),
        ),
      );
}

class RemindersModel {
  String date;
  String fuelUpItemIsVerified;
  String odometer;
  String title;

  RemindersModel(
      {required this.date,
        required this.fuelUpItemIsVerified,
        required this.odometer,
        required this.title,});
}
