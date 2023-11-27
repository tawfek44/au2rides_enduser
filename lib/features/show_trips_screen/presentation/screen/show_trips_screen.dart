import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../core/app_routes/app_routes.dart';
import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class ShowTripsScreen extends StatefulWidget {
  const ShowTripsScreen({super.key});

  @override
  State<ShowTripsScreen> createState() => _ShowTripsScreenState();
}

class _ShowTripsScreenState extends State<ShowTripsScreen> {
  List<ShowTripsModel> tripsList = [
    ShowTripsModel(
      date: "5-7-2022",
      odometerStart: "25 KM",
      odometerEnd: "20 KM",
      tripTitle: "Alex"
    ),
    ShowTripsModel(
        date: "5-7-2023",
        odometerStart: "25 KM",
        odometerEnd: "200 KM",
        tripTitle: "Cairo"
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
           NamedNavigatorImpl().push(Routes.addTripScreenRoute);
          },
          title: AppText(
            text: "Trips Logs",
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
                      key: ObjectKey(tripsList[index]),
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
                          tripsList.removeAt(index);
                        });
                      },
                      child: tripsItem(tripsModel: tripsList[index]),
                    ),
                    separatorBuilder: (context, index) =>  Divider(
                      height: 0,
                      indent: 15.w,
                    ),
                    itemCount: tripsList.length,
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

  Widget tripsItem({required ShowTripsModel tripsModel}) =>
      CupertinoListTile.notched(
        padding: EdgeInsets.all(15.w),
        onTap: () {
          NamedNavigatorImpl().push(Routes.addTripScreenRoute);
        },
        title: Column(
          children: [
            Row(
              children: [
                AppText(
                  text: tripsModel.tripTitle,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            gap(height: 7.h),
            Row(
              children: [
                AppText(
                  text: "date",
                  fontSize: fontSize,
                ),
                const Spacer(),
                AppText(
                  text: tripsModel.date,
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
                  text: tripsModel.odometerStart,
                  fontSize: fontSize,
                ),
                gap(width: 5.w),
                AppText(text: "-",fontSize: fontSize,),
                gap(width: 5.w),
                AppText(
                  text: tripsModel.odometerEnd,
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
class ShowTripsModel {
  String tripTitle;
  String date;
  String odometerStart;
  String odometerEnd;

  ShowTripsModel(
      {required this.tripTitle,
        required this.date,
        required this.odometerStart,
        required this.odometerEnd,});
}
