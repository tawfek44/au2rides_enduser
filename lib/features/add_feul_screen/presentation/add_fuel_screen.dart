import 'package:au2rides/core/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styles/colors.dart';
import '../../../core/widgets/app_text.dart';

class AddFuelScreen extends StatefulWidget {
  const AddFuelScreen({super.key});

  @override
  State<AddFuelScreen> createState() => _AddFuelScreenState();
}

class _AddFuelScreenState extends State<AddFuelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: AppText(
          text: "Add fuel",
          fontSize: 16.sp,
          color: AppColors.white,
        ),
        leading: IconButton(
          color: AppColors.white,
          icon: const Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: "Fuel Up",
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
              ),
              gap(height: 5.h),
              getRideNameSection(),
              gap(height: 30.h),
              getDataAndOdometerSection(),
              gap(height: 30.h),
              getCostSection(),
              gap(height: 30.h),
              getFuelBrandAndPaymentMethods(),
              gap(height: 5.h),
              getDocumentsSection(),
              gap(height: 10.h),
              getNotesSection()
            ],
          ),
        ),
      ),
    );
  }

  Widget getNotesSection()=>CupertinoListSection.insetGrouped(
    header: AppText(text: "Notes",color: AppColors.greyColor,fontSize: 15.sp,),
    margin: EdgeInsets.zero,
    children: [
      CupertinoListTile.notched(
        onTap: (){},
        padding: EdgeInsets.symmetric(horizontal: 13.w),
        title: const CupertinoTextField(
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide.none
            )
          ),
          maxLines: 5,
        ),)
    ],
  );
  Widget getDocumentsSection()=>CupertinoListSection.insetGrouped(
    header: AppText(text: "Documents",color: AppColors.greyColor,fontSize: 15.sp,),
    margin: EdgeInsets.zero,
    children: [
      CupertinoListTile.notched(
        onTap: (){},
        padding: EdgeInsets.symmetric(horizontal: 13.w),
        trailing: const Icon(CupertinoIcons.add_circled,color: AppColors.greyColor,),
          title: AppText(text: "Attach Document...",color: AppColors.greyColor,fontSize: 15.sp,),)
    ],
  );
  Widget getFuelBrandAndPaymentMethods()=>CupertinoListSection.insetGrouped(
    margin: EdgeInsets.zero,
    children: [
      Column(
        children: [
          getFuelBrandSection(),
          Divider(
            indent: 60.w,
            height: 0,
          ),
          getPaymentMethodSection()
        ],
      )
    ],
  );
  Widget getPaymentMethodSection()=>CupertinoListTile.notched(
    onTap: (){},
    padding: EdgeInsets.symmetric(horizontal: 13.w),
    title: AppText(
      text: "Payment Method",
      fontSize: 15.sp,
    ),
    leading: Icon(
      Icons.payment,
      color: Theme.of(context).primaryColor,
    ),
    additionalInfo:  AppText(
      text: "Not Set",
      color: AppColors.greyColor,
      fontSize: 15.sp,
    ),
    trailing: const Icon(
      CupertinoIcons.forward,
      color: AppColors.greyColor,
    ),);
  Widget getFuelBrandSection()=>CupertinoListTile.notched(
    onTap: (){},
    padding: EdgeInsets.symmetric(horizontal: 13.w),
    title: AppText(
      text: "Fuel Brand",
      fontSize: 15.sp,
    ),
    leading: Icon(
      Icons.local_gas_station,
      color: Theme.of(context).primaryColor,
    ),
    additionalInfo:  AppText(
      text: "Not Set",
      color: AppColors.greyColor,
      fontSize: 15.sp,
    ),
    trailing: const Icon(
      CupertinoIcons.forward,
      color: AppColors.greyColor,
    ),);
  Widget getCostSection() => CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          Column(
            children: [
              getOctaneSection(),
              Divider(
                indent: 60.w,
                height: 0,
              ),
              getCostPerLiterSection(),
              Divider(
                indent: 60.w,
                height: 0,
              ),
              getQuantitySection(),
              Divider(
                indent: 60.w,
                height: 0,
              ),
              getTotalSection(),
            ],
          )
        ],
      );
  Widget getTotalSection() =>CupertinoListTile(
    padding: EdgeInsets.symmetric(horizontal: 13.w),
    title: AppText(
      text: "Total Cost",
      fontSize: 15.sp,
    ),
    leading: Icon(
      Icons.shopping_cart,
      color: Theme.of(context).primaryColor,
    ),
    additionalInfo: SizedBox(
      width: 90.w,
      child: CupertinoTextField(
        textAlign: TextAlign.right,
        keyboardType: TextInputType.number,
        maxLines: 1,
        placeholderStyle: TextStyle(
            fontSize: 14.sp, height: 1.5.h, color: AppColors.greyColor),
        placeholder: "0.0",
        decoration:
        BoxDecoration(border: Border.all(style: BorderStyle.none)),
      ),
    ),
    trailing: AppText(
      text: "EGP",
      color: AppColors.greyColor,
      fontSize: 15.sp,
    ),);
  Widget getQuantitySection() =>CupertinoListTile(
    padding: EdgeInsets.symmetric(horizontal: 13.w),
    title: AppText(
      text: "Quantity",
      fontSize: 15.sp,
    ),
    leading: Icon(
      Icons.production_quantity_limits,
      color: Theme.of(context).primaryColor,
    ),
    additionalInfo: SizedBox(
      width: 90.w,
      child: CupertinoTextField(
        textAlign: TextAlign.right,
        keyboardType: TextInputType.number,
        maxLines: 1,
        placeholderStyle: TextStyle(
            fontSize: 14.sp, height: 1.5.h, color: AppColors.greyColor),
        placeholder: "0.0",
        decoration:
        BoxDecoration(border: Border.all(style: BorderStyle.none)),
      ),
    ),
    trailing: AppText(
      text: "L",
      color: AppColors.greyColor,
      fontSize: 15.sp,
    ),);

  Widget getCostPerLiterSection()=>CupertinoListTile(
      padding: EdgeInsets.symmetric(horizontal: 13.w),
      title: AppText(
        text: "Cost Per Liter",
        fontSize: 15.sp,
      ),
      leading: Icon(
        Icons.local_gas_station,
        color: Theme.of(context).primaryColor,
      ),
      additionalInfo: SizedBox(
        width: 90.w,
        child: CupertinoTextField(
          textAlign: TextAlign.right,
          keyboardType: TextInputType.number,
          maxLines: 1,
          placeholderStyle: TextStyle(
              fontSize: 14.sp, height: 1.5.h, color: AppColors.greyColor),
          placeholder: "0.0",
          decoration:
          BoxDecoration(border: Border.all(style: BorderStyle.none)),
        ),
      ),
      trailing: AppText(
        text: "EGP",
        color: AppColors.greyColor,
        fontSize: 15.sp,
      ),);
  Widget getOctaneSection() => CupertinoListTile.notched(
      onTap: () {},
      backgroundColor: Colors.transparent,
      title: AppText(
        text: "Octane",
        fontSize: 15.sp,
      ),
      leading: Icon(
        Icons.rate_review_outlined,
        color: Theme.of(context).primaryColor,
      ),
      additionalInfo: AppText(
        text: "Not Set",
        color: AppColors.greyColor,
        fontSize: 15.sp,
      ),
      trailing: const Icon(
        CupertinoIcons.forward,
        color: AppColors.greyColor,
      ));

  Widget getDataAndOdometerSection() => CupertinoListSection.insetGrouped(
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

  Widget getOdometerSection() => CupertinoListTile(
    padding: EdgeInsets.symmetric(horizontal: 13.w),
        title: AppText(
          text: "Odometer",
          fontSize: 15.sp,
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
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            maxLines: 1,
            placeholderStyle: TextStyle(
                fontSize: 14.sp, height: 1.5.h, color: AppColors.greyColor),
            placeholder: "0.0",
            decoration:
                BoxDecoration(border: Border.all(style: BorderStyle.none)),
          ),
        ),
        trailing: AppText(
          text: "Km",
          color: AppColors.greyColor,
          fontSize: 15.sp,
        ),
      );

  Widget getDateSection() => CupertinoListTile.notched(
        title: AppText(
          text: "Date",
          fontSize: 15.sp,
        ),
        leading: Icon(
          CupertinoIcons.calendar,
          color: Theme.of(context).primaryColor,
        ),
        trailing: Row(
          children: [getDateWidget(), gap(width: 5.w), getTimeWidget()],
        ),
      );

  Widget getTimeWidget() => Container(
        decoration: BoxDecoration(
            color: AppColors.lightGreyColor,
            borderRadius: BorderRadius.circular(5.w)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 5.h),
          child: AppText(
            text: "06:15 PM",
            fontSize: 12.sp,
          ),
        ),
      );

  Widget getDateWidget() => Container(
        decoration: BoxDecoration(
            color: AppColors.lightGreyColor,
            borderRadius: BorderRadius.circular(5.w)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 5.h),
          child: AppText(
            text: "18 Jan 2023",
            fontSize: 12.sp,
          ),
        ),
      );

  Widget getRideNameSection() => CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          CupertinoListTile(
            title: AppText(
              text: "Vehicle",
              fontSize: 15.sp,
            ),
            leading: Icon(
              CupertinoIcons.car_detailed,
              color: Theme.of(context).primaryColor,
            ),
            trailing: AppText(
              text: 'Manar',
              color: AppColors.greyColor,
            ),
          )
        ],
      );
}
