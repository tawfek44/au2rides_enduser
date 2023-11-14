import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../core/app_routes/app_routes_names.dart';
import '../../../core/styles/colors.dart';
import '../../../core/widgets/app_text.dart';

class AddFuelScreen extends StatefulWidget {
  const AddFuelScreen({super.key});

  @override
  State<AddFuelScreen> createState() => _AddFuelScreenState();
}

class _AddFuelScreenState extends State<AddFuelScreen> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay dayTime = TimeOfDay.fromDateTime(DateTime.now());
  late DateTime tempDate;
  var dateFormat;
  @override
  Widget build(BuildContext context) {
    tempDate = DateFormat("hh:mm").parse("${dayTime.hour}:${dayTime.minute}");
    dateFormat = DateFormat("h:mm a");
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: getAppBar(
            context: context,
            route: AppBarRoutes.saveAndDelete,
            title: AppText(
              text: "Add Fuel Up",
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
                text: "Fuel Up",
                fontSize: fontSize+5.sp,
                fontWeight: FontWeight.bold,
              ),
              gap(height: 5.h),
              getRideNameSection(),
              gap(height: 30.h),
              getDataAndOdometerSection(),
              gap(height: 30.h),
              getCostSection(),
              gap(height: 30.h),
              getDocumentsSection(),
              gap(height: 10.h),
              getNotesSection()
            ],
          ),
        ),
      ),
    );
  }

  Widget getNotesSection() =>
      CupertinoListSection.insetGrouped(
        header: AppText(
          text: "NOTES",
          color: AppColors.greyColor,
          fontSize: fontSize,
        ),
        margin: EdgeInsets.zero,
        children: [
          CupertinoListTile.notched(
            onTap: () {},
            title: const CupertinoTextField(
              decoration: BoxDecoration(border: Border(right: BorderSide.none)),
              maxLines: 5,
            ),
          )
        ],
      );

  Widget getDocumentsSection() =>
      CupertinoListSection.insetGrouped(
        header: AppText(
          text: "DOCUMENTS",
          color: AppColors.greyColor,
          fontSize: fontSize,
        ),
        margin: EdgeInsets.zero,
        children: [
          CupertinoListTile.notched(
            onTap: () {},
            trailing: const Icon(
              CupertinoIcons.add_circled,
              color: AppColors.greyColor,
            ),
            title: AppText(
              text: "Attach Document...",
              color: AppColors.greyColor,
              fontSize: fontSize,
            ),
          )
        ],
      );


  Widget getPaymentMethodSection() =>
      CupertinoListTile.notched(
        onTap: () {
          NamedNavigatorImpl().push(Routes.multiSelectionScreenRoute);
        },
        title: AppText(
          text: "Payment Method",
          fontSize: fontSize,
        ),
        leading: Icon(
          Icons.payment,
          color: Theme
              .of(context)
              .primaryColor,
        ),
        additionalInfo: AppText(
          text: "Not Set",
          color: AppColors.greyColor,
          fontSize: fontSize,
        ),
        trailing: const Icon(
          CupertinoIcons.forward,
          color: AppColors.greyColor,
        ),
      );

  Widget getFuelBrandSection() =>
      CupertinoListTile.notched(
        onTap: () {
          NamedNavigatorImpl().push(Routes.multiSelectionScreenRoute);
        },
        title: AppText(
          text: "Fuel Brand",
          fontSize: fontSize,
        ),
        leading: Icon(
          Icons.local_gas_station,
          color: Theme
              .of(context)
              .primaryColor,
        ),
        additionalInfo: AppText(
          text: "Not Set",
          color: AppColors.greyColor,
          fontSize: fontSize,
        ),
        trailing: const Icon(
          CupertinoIcons.forward,
          color: AppColors.greyColor,
        ),
      );

  Widget getCostSection() =>
      CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          Column(
            children: [
              getOctaneSection(),
              Divider(
                indent: 60.w,
                height: 0,
              ),
              getFuelBrandSection(),
              Divider(
                indent: 60.w,
                height: 0,
              ),
              getQuantitySection(),
              Divider(
                indent: 60.w,
                height: 0,
              ),
              getCostPerLiterSection(),
              Divider(
                indent: 60.w,
                height: 0,
              ),
              getTotalSection(),
              Divider(
                indent: 60.w,
                height: 0,
              ),
              getPaymentMethodSection(),



            ],
          )
        ],
      );

  Widget getTotalSection() =>
      CupertinoListTile.notched(
        title: AppText(
          text: "Total Cost",
          fontSize: fontSize,
        ),
        leading: Icon(
          Icons.shopping_cart,
          color: Theme
              .of(context)
              .primaryColor,
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
          text: "EGP",
          color: AppColors.greyColor,
          fontSize: fontSize,
        ),
      );

  Widget getQuantitySection() =>
      CupertinoListTile.notched(
        title: AppText(
          text: "Quantity",
          fontSize: fontSize,
        ),
        leading: Icon(
          Icons.production_quantity_limits,
          color: Theme
              .of(context)
              .primaryColor,
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
          text: "L",
          color: AppColors.greyColor,
          fontSize: fontSize,
        ),
      );

  Widget getCostPerLiterSection() =>
      CupertinoListTile.notched(
        title: AppText(
          text: "Cost Per Liter",
          fontSize: fontSize,
        ),
        leading: Icon(
          Icons.local_gas_station,
          color: Theme
              .of(context)
              .primaryColor,
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
          text: "EGP",
          color: AppColors.greyColor,
          fontSize: fontSize,
        ),
      );

  Widget getOctaneSection() =>
      CupertinoListTile.notched(
          onTap: () {
            NamedNavigatorImpl().push(Routes.multiSelectionScreenRoute);
          },
          backgroundColor: Colors.transparent,
          title: AppText(
            text: "Octane",
            fontSize: fontSize,
          ),
          leading: Icon(
            Icons.rate_review_outlined,
            color: Theme
                .of(context)
                .primaryColor,
          ),
          additionalInfo: AppText(
            text: "Not Set",
            color: AppColors.greyColor,
            fontSize: fontSize,
          ),
          trailing: const Icon(
            CupertinoIcons.forward,
            color: AppColors.greyColor,
          ));

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

  Widget getOdometerSection() =>
      CupertinoListTile.notched(
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
            placeholderStyle: TextStyle(
                fontSize: fontSize, height: 1.7.h, color: AppColors.greyColor),
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
              text: 'My Ride Name',
              fontSize: fontSize,
              color: AppColors.greyColor,
            ),
          )
        ],
      );
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
}
