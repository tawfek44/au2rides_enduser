import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../core/constants/constants.dart';
import '../../../core/styles/colors.dart';
import '../../../core/widgets/app_text.dart';

class AddReminderScreen extends StatefulWidget {
  const AddReminderScreen({super.key});

  @override
  State<AddReminderScreen> createState() => _AddReminderScreenState();
}

class _AddReminderScreenState extends State<AddReminderScreen> {
  bool odometerJustOnceCheckBoxMark = false;
  bool dateJustOnceCheckBoxMark = false;
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
            title: AppText(
              text: "Add New Reminder",
              fontSize: 15.sp,
              color: AppColors.white,
            ),
            onPressedDelete: () {},
            onPressed: () {},
            route: AppBarRoutes.addWallet),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            children: [
              getRideNameSection(),
              gap(height: 20.h),
              getReminderTypeWidget(),
              gap(height: 10.h),
              CupertinoListSection.insetGrouped(
                margin: EdgeInsets.zero,
                children: [
                  getTypeListTile(
                      title: "Recurrence",
                      additionalInfo: "Just Once",
                      trailingIcon: CupertinoIcons.right_chevron,
                      leadingIcon: Icon(
                        CupertinoIcons.bell_fill,
                        color: Theme.of(context).primaryColor,
                      )),
                  getJustOnceWidget(
                    boolCheckMark: odometerJustOnceCheckBoxMark,
                    title: "KM",
                    choice: CheckBoxMarkRoute.odometer,
                  ),
                  getJustOnceWidget(
                    boolCheckMark: dateJustOnceCheckBoxMark,
                    title: "Date",
                    choice: CheckBoxMarkRoute.date,
                  )
                ],
              ),
              gap(height: 20.h),
              getNotesSection()
            ],
          ),
        ),
      ),
    );
  }

  Widget getJustOnceWidget({
    required bool boolCheckMark,
    required String title,
    required CheckBoxMarkRoute choice,
  }) =>
      CupertinoListTile(
        leading: CupertinoCheckbox(
          value: boolCheckMark,
          onChanged: (bool? value) {
            setState(() {
              switch (choice) {
                case CheckBoxMarkRoute.odometer:
                  odometerJustOnceCheckBoxMark = !odometerJustOnceCheckBoxMark;
                  break;
                case CheckBoxMarkRoute.date:
                  dateJustOnceCheckBoxMark = !dateJustOnceCheckBoxMark;
                  break;
              }
            });
          },
        ),
        title: AppText(
          text: title,
          fontSize: fontSize,
        ),
        additionalInfo: choice == CheckBoxMarkRoute.odometer
            ? getOdometerTextField()
            : getDateSection(),
      );

  // Widget getRepeatEveryWidget(){

  // }
  Widget getOdometerTextField() => SizedBox(
        width: 90.w,
        child: CupertinoTextField(
          textAlign: TextAlign.right,
          keyboardType: TextInputType.number,
          maxLines: 1,
          style: TextStyle(fontSize: fontSize),
          placeholderStyle: TextStyle(
              fontSize: fontSize, height: 1.5.h, color: AppColors.greyColor),
          placeholder: "0.0",
          decoration:
              BoxDecoration(border: Border.all(style: BorderStyle.none)),
        ),
      );

  Widget getDateSection() => getDateWidget();

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

  Widget getReminderTypeWidget() => CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          getTypeListTile(
            title: "Reminder Type",
            additionalInfo: "Not Set",
            trailingIcon: CupertinoIcons.arrow_up_down,
          ),
          getTypeListTile(
            trailingIcon: CupertinoIcons.right_chevron,
            additionalInfo: "Not Set",
            title: "Type",
          ),
        ],
      );

  Widget getNotesSection() => CupertinoListSection.insetGrouped(
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
            title: const CupertinoTextField(
              decoration: BoxDecoration(border: Border(right: BorderSide.none)),
              maxLines: 5,
            ),
          )
        ],
      );

  Widget getTypeListTile(
          {required String title,
          required String additionalInfo,
          required IconData trailingIcon,
          Widget? leadingIcon}) =>
      CupertinoListTile.notched(
        onTap: () {},
        title: AppText(
          text: title,
          fontSize: fontSize,
        ),
        additionalInfo: AppText(
          text: additionalInfo,
          fontSize: fontSize,
          color: AppColors.greyColor,
        ),
        leading: leadingIcon,
        trailing: Icon(
          trailingIcon,
          color: AppColors.greyColor,
        ),
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
              text: 'Manar',
              fontSize: fontSize,
              color: AppColors.greyColor,
            ),
          )
        ],
      );
}

enum CheckBoxMarkRoute { odometer, date }
