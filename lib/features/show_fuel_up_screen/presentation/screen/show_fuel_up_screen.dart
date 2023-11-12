import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class ShowFuelUpScreen extends StatefulWidget {
  const ShowFuelUpScreen({super.key});

  @override
  State<ShowFuelUpScreen> createState() => _ShowFuelUpScreenState();
}

class _ShowFuelUpScreenState extends State<ShowFuelUpScreen> {
  List<MyFuelUpModel> myFuelUpList = [
    MyFuelUpModel(
      cost: "50 LE",
      date: "5-7-2022",
      fuelUpItemIsVerified: "Verified",
      liters: "50 Liters",
      odometer: "25 KM",
    ),
    MyFuelUpModel(
      cost: "90 LE",
      date: "5-9-2022",
      fuelUpItemIsVerified: "Not Verified",
      liters: "100 Liters",
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
          route: AppBarRoutes.showFuelUp,
          onPressed: () {
            NamedNavigatorImpl().push(Routes.addFuelScreenRoute);
          },
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
                      child: myFuelUpItem(fuelUpModel: myFuelUpList[index]),
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

  Widget myFuelUpItem({required MyFuelUpModel fuelUpModel}) =>
      CupertinoListTile.notched(
        padding: EdgeInsets.all(15.w),
        onTap: () {},
        title: Column(
          children: [
            Row(
              children: [
                AppText(
                  text: fuelUpModel.date,
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
                          fuelUpModel.fuelUpItemIsVerified,
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
                  text: fuelUpModel.odometer,
                  fontSize: fontSize,
                ),
              ],
            ),
            gap(height: 7.h),
            Row(
              children: [
                AppText(
                  text: "Liters",
                  fontSize: fontSize,
                ),
                const Spacer(),
                AppText(
                  text: fuelUpModel.liters,
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
                  text: fuelUpModel.cost,
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

class MyFuelUpModel {
  String date;
  String fuelUpItemIsVerified;
  String odometer;
  String liters;
  String cost;

  MyFuelUpModel(
      {required this.date,
        required this.fuelUpItemIsVerified,
        required this.odometer,
        required this.liters,
        required this.cost});
}
