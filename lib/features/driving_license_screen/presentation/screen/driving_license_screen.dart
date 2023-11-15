import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/app_routes/app_routes_names.dart';
import 'package:au2rides/core/widgets/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class DrivingLicenseScreen extends StatefulWidget {
  const DrivingLicenseScreen({super.key});

  @override
  State<DrivingLicenseScreen> createState() => _DrivingLicenseScreenState();
}

class _DrivingLicenseScreenState extends State<DrivingLicenseScreen> {

  List<DrivingLicenceModel> myDrivingLicences = [
    DrivingLicenceModel(
        documentIsVerified: "Verified",
        countryName: "Egypt",
        documentNumber: "5657984365465",
        documentExpirationDate: "20-6-2024"),
    DrivingLicenceModel(
        documentIsVerified: "Verified",
        countryName: "UK",
        documentNumber: "6442326687098",
        documentExpirationDate: "20-9-2028")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          onPressed: addButtonOnPressed,
          route: AppBarRoutes.add,
          title: AppText(
            text: "Driving Licenses",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(15.w),
        child: CupertinoListSection.insetGrouped(
          margin: EdgeInsets.zero,
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Dismissible(
                direction: DismissDirection.endToStart,
                key: ObjectKey(myDrivingLicences[index]),
                background: Container(
                  color: Colors.red,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end ,
                      children: [
                         Icon(Icons.delete,color: AppColors.white,size: 25.w,)
                      ],
                    ),
                  ),
                ),
                onDismissed: (direction){
                  setState(() {
                    myDrivingLicences.removeAt(index);
                  });
                },
                child: drivingLicenceItem(drivingLicenceModel: myDrivingLicences[index]),
              ),
              separatorBuilder: (context, index) => const Divider(height: 0,),
              itemCount: myDrivingLicences.length,
            ),
          ],
        ),
      ),
    );
  }

  addButtonOnPressed() =>NamedNavigatorImpl().push(Routes.addDrivingLicenceScreenRoute);


  Widget drivingLicenceItem({required DrivingLicenceModel drivingLicenceModel}) =>
      CupertinoListTile.notched(
        onTap: () {
          NamedNavigatorImpl().push(Routes.addDrivingLicenceScreenRoute);
        },
        title: Column(
          children: [
            Row(
              children: [
                AppText(
                  text: "Driving Licence",
                  fontSize: fontSize,
                ),
                gap(width: 20.w),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(corner)),
                  height: 25.h,
                  width: 50.w,
                  child: Center(
                      child: Text(
                        drivingLicenceModel.documentIsVerified,
                    style: TextStyle(
                        color: Colors.white, fontSize: fontSize - 2.sp),
                    textAlign: TextAlign.center,
                  )),
                ),
              ],
            ),
            gap(height: 10.h),
            Row(
              children: [
                AppText(
                  text: drivingLicenceModel.countryName,
                  fontSize: fontSize,
                ),
                const Spacer(),
                AppText(
                  text: drivingLicenceModel.documentNumber,
                  fontSize: fontSize,
                ),
              ],
            ),
            gap(height: 10.h),
            Row(
              children: [
                AppText(
                  text: "Expires",
                  fontSize: fontSize,
                ),
                const Spacer(),
                AppText(
                  text: drivingLicenceModel.documentExpirationDate,
                  fontSize: fontSize,
                ),
              ],
            )
          ],
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: AppColors.secondaryColor,
          size: 15.w,
        ),
      );
}


class DrivingLicenceModel {
  String documentIsVerified;
  String countryName;
  String documentNumber;
  String documentExpirationDate;

  DrivingLicenceModel(
      {
        required this.documentIsVerified,
        required this.countryName,
        required this.documentNumber,
        required this.documentExpirationDate});
}