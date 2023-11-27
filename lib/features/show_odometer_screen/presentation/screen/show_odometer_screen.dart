
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_routes/app_routes.dart';
import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class ShowOdometerScreen extends StatefulWidget {
  const ShowOdometerScreen({super.key});

  @override
  State<ShowOdometerScreen> createState() => _ShowOdometerScreenState();
}

class _ShowOdometerScreenState extends State<ShowOdometerScreen> {
  List<ShowOdometerModel> myFuelUpList = [
    ShowOdometerModel(
      date: "5-7-2022",
      fuelUpItemIsVerified: "Verified",
      odometer: "25 KM",
    ),
    ShowOdometerModel(
      date: "5-9-2022",
      fuelUpItemIsVerified: "Not Verified",
      odometer: "250 KM",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          onPressed: (){
            NamedNavigatorImpl().push(Routes.addOdometerScreenRoute);
          },
          route: AppBarRoutes.add,
          title: AppText(
            text: "Odometer Reading Log",
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
                      key: ObjectKey(myFuelUpList[index]),
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
                          myFuelUpList.removeAt(index);
                        });
                      },
                      child: showOdometerItem(odometerModel: myFuelUpList[index]),
                    ),
                    separatorBuilder: (context, index) =>  Divider(
                      height: 0,
                      indent: 15.w,
                    ),
                    itemCount: myFuelUpList.length,
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
  Widget showOdometerItem({required ShowOdometerModel odometerModel}) =>
      CupertinoListTile.notched(
        padding: EdgeInsets.all(15.w),
        onTap: () {
          NamedNavigatorImpl().push(Routes.addOdometerScreenRoute);
        },
        title: Column(
          children: [
            Row(
              children: [
                AppText(
                  text: odometerModel.date,
                  fontSize: fontSize,
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
                          odometerModel.fuelUpItemIsVerified,
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
                  text: "Odomoter",
                  fontSize: fontSize,
                ),
                const Spacer(),
                AppText(
                  text: odometerModel.odometer,
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
class ShowOdometerModel {
  String date;
  String fuelUpItemIsVerified;
  String odometer;

  ShowOdometerModel(
      {required this.date,
        required this.fuelUpItemIsVerified,
        required this.odometer,});
}