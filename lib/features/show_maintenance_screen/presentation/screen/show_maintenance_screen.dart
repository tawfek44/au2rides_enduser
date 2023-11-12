import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_routes/app_routes.dart';
import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class ShowMaintenanceScreen extends StatefulWidget {
  const ShowMaintenanceScreen({super.key});

  @override
  State<ShowMaintenanceScreen> createState() => _ShowMaintenanceScreenState();
}

class _ShowMaintenanceScreenState extends State<ShowMaintenanceScreen> {
  List<ShowMaintenanceModel> maintenanceList = [
    ShowMaintenanceModel(
      cost: "50 LE",
      fuelUpItemIsVerified: "Verified",
      title: "brake",
      odometer: "25 KM",
      date: "22-6-2023"
    ),
    ShowMaintenanceModel(
      cost: "1000 LE",
      fuelUpItemIsVerified: "Not Verified",
      title: "Motor",
      odometer: "250 KM",
      date: "22-3-2024"
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          route: AppBarRoutes.showFuelUp,
          onPressed: () {
            NamedNavigatorImpl().push(Routes.addMaintenanceScreenRoute);
          },
          title: AppText(
            text: "Show Maintenance",
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
              gap(height: 10.h),
              CupertinoListSection.insetGrouped(
                margin: EdgeInsets.zero,
                children: [
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Dismissible(
                      direction: DismissDirection.endToStart,
                      key: ObjectKey(maintenanceList[index]),
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
                          maintenanceList.removeAt(index);
                        });
                      },
                      child: myFuelUpItem(maintenanceModel: maintenanceList[index]),
                    ),
                    separatorBuilder: (context, index) =>  Divider(
                      height: 0,
                      indent: 15.w,
                    ),
                    itemCount: maintenanceList.length,
                  ),
                ],
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
          text: 'My Ride Name',
          fontSize: fontSize,
          color: AppColors.greyColor,
        ),
      )
    ],
  );

  Widget myFuelUpItem({required ShowMaintenanceModel maintenanceModel}) =>
      CupertinoListTile.notched(
        padding: EdgeInsets.all(15.w),
        onTap: () {
          NamedNavigatorImpl().push(Routes.addMaintenanceScreenRoute);
        },
        title: Column(
          children: [
            Row(
              children: [
                AppText(
                  text: maintenanceModel.title,
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
                          maintenanceModel.fuelUpItemIsVerified,
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
                  text: maintenanceModel.date,
                  fontSize: fontSize,
                ),
              ],
            ),
            gap(height: 7.h),
            Row(
              children: [
                AppText(
                  text: "Odomoter",
                  fontSize: fontSize,
                ),
                const Spacer(),
                AppText(
                  text: maintenanceModel.odometer,
                  fontSize: fontSize,
                ),
              ],
            ),
            gap(height: 7.h),
            Row(
              children: [
                AppText(
                  text: "Cost",
                  fontSize: fontSize,
                ),
                const Spacer(),
                AppText(
                  text: maintenanceModel.cost,
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

class ShowMaintenanceModel {
  String title;
  String date;
  String fuelUpItemIsVerified;
  String odometer;
  String cost;

  ShowMaintenanceModel(
      {required this.title,
        required this.date,
        required this.fuelUpItemIsVerified,
        required this.odometer,
        required this.cost});
}
