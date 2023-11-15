import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class AddTripScreen extends StatefulWidget {
  const AddTripScreen({super.key});

  @override
  State<AddTripScreen> createState() => _AddTripScreenState();
}

class _AddTripScreenState extends State<AddTripScreen> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay dayTime = TimeOfDay.fromDateTime(DateTime.now());
  late DateTime tempDate;
  var dateFormat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          route: AppBarRoutes.saveAndDelete,
          onPressed: () {},
          onPressedDelete: () {},
          title: AppText(
            text: "Add Trip",
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
              geTripNameSection(),
              gap(height: 10.h),
              getReusableContainer(
                dateTitle: "Start Date",
                odometerTitle: "Initial Odometer",
                pointLocationTitle: "Start Point",
              ),
              gap(height: 10.h),
              getReusableContainer(
                dateTitle: "End Date",
                odometerTitle: "Final Odometer",
                pointLocationTitle: "End Point",
              ),
              gap(height: 10.h),
              CupertinoListSection.insetGrouped(
                margin: EdgeInsets.zero,
                children: [
                  CupertinoListTile.notched(
                    title: AppText(
                      text: "Total KM",
                      fontSize: fontSize,
                    ),
                    additionalInfo: AppText(text: "687 KM",fontSize: fontSize,color: AppColors.greyColor,),
                  ),
                  CupertinoListTile.notched(
                    title: AppText(
                      text: "Total Cost",
                      fontSize: fontSize,
                    ),
                    additionalInfo: SizedBox(
                      width: 90.w,
                      child: CupertinoTextField(
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.number,
                        maxLines: 1,
                        placeholderStyle: TextStyle(
                            fontSize: fontSize, height: 1.7.h, color: AppColors.greyColor),
                        placeholder: "0.0",
                        decoration:
                        BoxDecoration(border: Border.all(style: BorderStyle.none)),
                      ),
                    ),
                    trailing: AppText(text: "EGP",fontSize: fontSize,color: AppColors.greyColor,),
                  )
                ],
              ),
              getNotesSection(context: context)
            ],
          ),
        ),
      ),
    );
  }

  Widget getReusableContainer(
          {required String dateTitle,
          required String odometerTitle,
          required String pointLocationTitle}) =>
      CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          getDateSection(title: dateTitle),
          getOdometer(title: odometerTitle),
          getPointLocationWidget(title: pointLocationTitle)
        ],
      );

  Widget getPointLocationWidget({required String title}) =>
      CupertinoListTile.notched(
        onTap: () {},
        title: AppText(
          text: title,
          fontSize: fontSize,
        ),
        leading: Icon(
          CupertinoIcons.location_solid,
          color: Theme.of(context).primaryColor,
        ),
        additionalInfo: AppText(
          text: "GPS",
          color: AppColors.greyColor,
          fontSize: fontSize,
        ),
        trailing: const Icon(
          CupertinoIcons.right_chevron,
          color: AppColors.greyColor,
        ),
      );

  Widget getOdometer({required String title}) => CupertinoListTile.notched(
        title: AppText(
          text: title,
          fontSize: fontSize,
        ),
        leading: Icon(
          CupertinoIcons.speedometer,
          color: Theme.of(context).primaryColor,
        ),
        additionalInfo: SizedBox(
          width: 90.w,
          child: CupertinoTextField(
            textAlign: TextAlign.right,
            keyboardType: TextInputType.number,
            maxLines: 1,
            placeholderStyle: TextStyle(
                fontSize: fontSize, height: 1.7.h, color: AppColors.greyColor),
            placeholder: "0.0",
            decoration:
                BoxDecoration(border: Border.all(style: BorderStyle.none)),
          ),
        ),
        trailing: AppText(
          text: "KM",
          color: AppColors.greyColor,
          fontSize: fontSize,
        ),
      );

  Widget getDateSection({required String title}) => CupertinoListTile.notched(
        title: AppText(
          text: title,
          fontSize: fontSize,
        ),
        leading: Icon(
          CupertinoIcons.calendar,
          color: Theme.of(context).primaryColor,
        ),
        trailing: Row(
          children: [getDateWidget()],
        ),
      );

  Widget getDateWidget() => InkWell(
      onTap: showDateDialog,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.lightGreyColor,
            borderRadius: BorderRadius.circular(5.w)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 5.h),
          child: AppText(
            text: DateFormat('dd MMM yyyy').format(selectedDate),
            fontSize: fontSize,
          ),
        ),
      ));

  void showDateDialog() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1800),
        lastDate: DateTime(2101));
    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  Widget geTripNameSection() => CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          CupertinoListTile(
            title: AppText(
              text: "Trip Name",
              fontSize: fontSize,
            ),
            leading: Icon(Icons.beach_access,color: Theme.of(context).primaryColor,),
            trailing:SizedBox(
              width: 90.w,
              child: CupertinoTextField(
                style: TextStyle(fontSize: fontSize),
                textAlign: TextAlign.right,
                keyboardType: TextInputType.text,
                maxLines: 1,
                placeholderStyle: TextStyle(
                    fontSize: fontSize,
                    color: AppColors.greyColor),
                placeholder: "Alex - Cairo",
                decoration: BoxDecoration(
                    border: Border.all(style: BorderStyle.none)),
              ),
            ),
          )
        ],
      );

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

}
