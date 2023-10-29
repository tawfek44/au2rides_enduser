import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../core/constants/constants.dart';
import '../../../core/styles/colors.dart';
import '../../../core/widgets/app_text.dart';

class AddOdometerScreen extends StatefulWidget {
  const AddOdometerScreen({super.key});

  @override
  State<AddOdometerScreen> createState() => _AddOdometerScreenState();
}

class _AddOdometerScreenState extends State<AddOdometerScreen> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay dayTime = TimeOfDay.fromDateTime(DateTime.now());
  late DateTime tempDate;
  var dateFormat;
  @override
  Widget build(BuildContext context) {
    tempDate = DateFormat("hh:mm").parse("${dayTime.hour}:${dayTime.minute}");
    dateFormat = DateFormat("h:mm a");
    return Scaffold(
      appBar:  PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: getAppBar(
            context: context,
            title:  AppText(
              text: "Add Odometer",
              fontSize: 16.sp,
              color: AppColors.white,
            ),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: "Odometer Reading",
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
              gap(height: 5.h),
              getRideNameSection(),
              gap(height: 30.h),
              getDataAndOdometerSection(),
              gap(height: 10.h),
              getNotesSection()
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
          color: Theme
              .of(context)
              .primaryColor,
        ),
        trailing: AppText(
          text: 'Manar',
          fontSize: fontSize,
          color: AppColors.greyColor,
        ),
      )
    ],
  );

  Widget getDataAndOdometerSection() =>
      CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          Column(
            children: [
              getDateSection(),
              Divider(
                indent: 60.w,
                height: 0,
              ),
              getOdometerSection()
            ],
          )
        ],
      );

  Widget getDateSection() =>
      CupertinoListTile.notched(
        title: AppText(
          text: "Date",
          fontSize: fontSize,
        ),
        leading: Icon(
          CupertinoIcons.calendar,
          color: Theme
              .of(context)
              .primaryColor,
        ),
        trailing: Row(
          children: [getDateWidget(), gap(width: 5.w), getTimeWidget()],
        ),
      );
  Widget getOdometerSection() =>
      CupertinoListTile(
        padding: EdgeInsets.symmetric(horizontal: 13.w),
        title: AppText(
          text: "Odometer",
          fontSize: fontSize,
        ),
        leading: Icon(
          CupertinoIcons.speedometer,
          color: Theme
              .of(context)
              .primaryColor,
        ),
        additionalInfo: SizedBox(
          width: 90.w,
          child: CupertinoTextField(
            textAlign: TextAlign.right,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            maxLines: 1,
            style: TextStyle(
              fontSize: fontSize
            ),
            placeholderStyle: TextStyle(
                fontSize: fontSize, color: AppColors.greyColor),
            placeholder: "0.0",
            decoration:
            BoxDecoration(border: Border.all(style: BorderStyle.none)),
          ),
        ),
        trailing: AppText(
          text: "Km",
          color: AppColors.greyColor,
          fontSize: fontSize,
        ),
      );

  Widget getTimeWidget() =>
      InkWell(
        onTap: getDateDialog ,
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.lightGreyColor,
              borderRadius: BorderRadius.circular(5.w)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 5.h),
            child: AppText(
              text: dateFormat.format(tempDate).toString(),
              fontSize: fontSize,
            ),
          ),
        ),
      );

  Widget getDateWidget() =>
      InkWell(
          onTap:showDateDialog ,
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
        lastDate: DateTime(2101)
    );
    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }
  void getDateDialog() async {
    final TimeOfDay? timePicked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (timePicked != null) {
      setState(() {
        dayTime= timePicked;
        tempDate = DateFormat("hh:mm").parse("${dayTime.hour}:${dayTime.minute}");
        dateFormat = DateFormat("h:mm a");
      });
    }
  }

  Widget getNotesSection() =>
      CupertinoListSection.insetGrouped(
        header: AppText(
          text: "Notes",
          color: AppColors.greyColor,
          fontSize: fontSize,
        ),
        margin: EdgeInsets.zero,
        children: [
          CupertinoListTile.notched(
            onTap: () {},
            padding: EdgeInsets.symmetric(horizontal: 13.w),
            title:  CupertinoTextField(
              style: TextStyle(fontSize: fontSize),
              decoration: const BoxDecoration(border: Border(right: BorderSide.none)),
              maxLines: 5,
            ),
          )
        ],
      );
}
