import 'package:au2rides/core/widgets/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class ItemRemindersScreen extends StatefulWidget {
  const ItemRemindersScreen({super.key});

  @override
  State<ItemRemindersScreen> createState() => _ItemRemindersScreenState();
}

class _ItemRemindersScreenState extends State<ItemRemindersScreen> {
  bool odometerFlag = false, timeFlag = false;

  DateTime checkAtSelectedDate = DateTime.now();
  DateTime changeAtSelectedDate = DateTime.now();
  TimeOfDay checkAtDayTime = TimeOfDay.fromDateTime(DateTime.now());
  TimeOfDay changeAtDayTime = TimeOfDay.fromDateTime(DateTime.now());
  late DateTime changeAtTempDate;
  late DateTime checkAtTempDate;
  var changeAtDateFormat;
  var checkAtDateFormat;

  @override
  Widget build(BuildContext context) {
    changeAtTempDate = DateFormat("hh:mm")
        .parse("${changeAtDayTime.hour}:${changeAtDayTime.minute}");
    checkAtTempDate = DateFormat("hh:mm")
        .parse("${checkAtDayTime.hour}:${checkAtDayTime.minute}");
    changeAtDateFormat = DateFormat("h:mm a");
    checkAtDateFormat = DateFormat("h:mm a");
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          route: AppBarRoutes.save,
          title: AppText(
            text: "Reminders",
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
              getListTile(
                  reminderTitle: "Odometer Reminder",
                  choice: RemindersNameChoice.odometer),
              gap(height: 20.h),
              getListTile(
                  reminderTitle: "Date Reminder",
                  choice: RemindersNameChoice.time),
            ],
          ),
        ),
      ),
    );
  }

  Widget getOdometer({required String title}) => CupertinoListTile(
        title: AppText(
          text: title,
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
        trailing: AppText(
          text: "KM",
          color: AppColors.greyColor,
          fontSize: fontSize,
        ),
      );

  Widget getListTile(
          {required String reminderTitle,
          required RemindersNameChoice choice}) =>
      CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          CupertinoListTile(
            title: AppText(
              text: reminderTitle,
              fontSize: fontSize,
            ),
            trailing: Transform.scale(
              scale: .9,
              child: Switch.adaptive(
                value: choice == RemindersNameChoice.odometer
                    ? odometerFlag
                    : timeFlag,
                onChanged: (value) {
                  switch (choice) {
                    case RemindersNameChoice.odometer:
                      setState(() {
                        odometerFlag = !odometerFlag;
                      });
                      break;
                    case RemindersNameChoice.time:
                      setState(() {
                        timeFlag = !timeFlag;
                      });
                      break;
                  }
                },
              ),
            ),
          ),
          if (odometerFlag && choice == RemindersNameChoice.odometer) ...[
            getOdometer(title: "Check at"),
            getOdometer(title: "Change at"),
          ] else if (timeFlag && choice == RemindersNameChoice.time) ...[
            getDateSection(
                title: "Check at", choice: RemindersTimeDateChoice.checkAt),
            getDateSection(
                title: "Change at", choice: RemindersTimeDateChoice.changeAt),
          ],
        ],
      );

  Widget getDateSection(
          {required String title, required RemindersTimeDateChoice choice}) =>
      CupertinoListTile(
        title: AppText(
          text: title,
          fontSize: fontSize,
        ),
        trailing: Row(
          children: [
            getDateWidget(choice: choice),
          ],
        ),
      );

  Widget getTimeWidget({required RemindersTimeDateChoice choice}) => InkWell(
        onTap:(){
          getDateDialog(choice: choice);
        },
        child: Container(
          decoration: BoxDecoration(
              color: AppColors.lightGreyColor,
              borderRadius: BorderRadius.circular(5.w)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 5.h),
            child: AppText(
              text: choice == RemindersTimeDateChoice.changeAt
                  ? changeAtDateFormat.format(changeAtTempDate).toString()
                  : checkAtDateFormat.format(checkAtTempDate).toString(),
              fontSize: fontSize,
            ),
          ),
        ),
      );

  Widget getDateWidget({required RemindersTimeDateChoice choice}) => InkWell(
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: choice == RemindersTimeDateChoice.changeAt
                ? changeAtSelectedDate
                : checkAtSelectedDate,
            firstDate: DateTime(1800),
            lastDate: DateTime(2101));
        if (pickedDate != null) {
          switch (choice) {
            case RemindersTimeDateChoice.checkAt:
              setState(() {
                checkAtSelectedDate = pickedDate;
              });
              break;
            case RemindersTimeDateChoice.changeAt:
              setState(() {
                changeAtSelectedDate = pickedDate;
              });
              break;
          }

        }
      },
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.lightGreyColor,
            borderRadius: BorderRadius.circular(5.w)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 5.h),
          child: AppText(
            text: choice == RemindersTimeDateChoice.changeAt
                ? DateFormat('dd MMM yyyy').format(changeAtSelectedDate)
                : DateFormat('dd MMM yyyy').format(checkAtSelectedDate),
            fontSize: fontSize,
          ),
        ),
      ));

  void getDateDialog({required RemindersTimeDateChoice choice}) async {
    final TimeOfDay? timePicked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (timePicked != null) {
      switch(choice) {
        case RemindersTimeDateChoice.checkAt:
          setState(() {
            checkAtDayTime = timePicked;
            checkAtTempDate =
                DateFormat("hh:mm").parse("${checkAtDayTime.hour}:${checkAtDayTime.minute}");
            checkAtDateFormat = DateFormat("h:mm a");
          });
          break;
        case RemindersTimeDateChoice.changeAt:
          setState(() {
            changeAtDayTime = timePicked;
            changeAtTempDate =
                DateFormat("hh:mm").parse("${changeAtDayTime.hour}:${changeAtDayTime.minute}");
            changeAtDateFormat = DateFormat("h:mm a");
          });
          break;
      }

    }
  }
}

enum RemindersNameChoice { odometer, time }

enum RemindersTimeDateChoice { checkAt, changeAt }
