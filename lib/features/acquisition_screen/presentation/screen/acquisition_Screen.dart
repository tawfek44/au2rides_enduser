import 'package:au2rides/core/widgets/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart'as intl;

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../generated/l10n.dart';

class AcquisitionScreen extends StatefulWidget {
  const AcquisitionScreen({super.key});

  @override
  State<AcquisitionScreen> createState() => _AcquisitionScreenState();
}

class _AcquisitionScreenState extends State<AcquisitionScreen> {
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
          route: AppBarRoutes.save,
          title: AppText(
            text: S.current.acquisitionDetails,
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
              CupertinoListSection.insetGrouped(
                margin: EdgeInsets.zero,
                children: [
                  getDateSection(),
                  getTypeListTile(),
                  getPriceListTile(),
                  getOdometerListTile()
                ],
              ),
              addAttachment(),
              getNotesSection(context: context),
            ],
          ),
        ),
      ),
    );
  }

  getOdometerListTile()=>CupertinoListTile(
    title: AppText(
      text: S.current.odometer,
      fontSize: fontSize,
    ),
    trailing: AppText(text: "KM",color: AppColors.greyColor,fontSize: fontSize,),
    leading:  Icon(Icons.speed,color: Theme.of(context).primaryColor),
    additionalInfo: SizedBox(
      width: 90.w,
      child: CupertinoTextField(
        style: TextStyle(fontSize: fontSize),
        textAlign: TextAlign.right,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        maxLines: 1,
        placeholderStyle: TextStyle(
            fontSize: fontSize,
            color: AppColors.greyColor),
        placeholder: "0.0",
        decoration: BoxDecoration(
          border: Border.all(style: BorderStyle.none)),
      ),
    ),
  );
  getPriceListTile() =>CupertinoListTile(
    title: AppText(
      text: S.current.price,
      fontSize: fontSize,
    ),
    trailing: AppText(text: "EGP",color: AppColors.greyColor,fontSize: fontSize,),
    leading:  Icon(Icons.monetization_on_outlined,color: Theme.of(context).primaryColor),
    additionalInfo: SizedBox(
      width: 90.w,
      child: CupertinoTextField(
        style: TextStyle(fontSize: fontSize),
        textAlign: TextAlign.right,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        maxLines: 1,
        placeholderStyle: TextStyle(
            fontSize: fontSize,
            color: AppColors.greyColor),
        placeholder: "0.0",
        decoration: BoxDecoration(
            border: Border.all(style: BorderStyle.none)),
      ),
    ),
  );
  getTypeListTile() => CupertinoListTile(
    onTap: (){
      showAcquisitionDialog(context);
    },
        title: AppText(
          text: S.current.type,
          fontSize: fontSize,
        ),
        trailing: const Icon(Icons.unfold_more,color: AppColors.greyColor,),
        leading:  Icon(Icons.merge_type_outlined,color: Theme.of(context).primaryColor),
        additionalInfo: AppText(text: "Purchase",fontSize: fontSize,color: AppColors.greyColor,),
      );
  void showAcquisitionDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Directionality(
            textDirection: TextDirection.ltr,
            child: CupertinoAlertDialog(
              title: Center(
                  child: AppText(
                    text:S.current.acquisitionType,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                  )),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: AppText(
                    text: S.current.purchase,
                    fontSize: fontSize,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                CupertinoDialogAction(
                  child: AppText(
                    text: S.current.lease,
                    fontSize: fontSize,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                CupertinoDialogAction(
                  child: AppText(
                    text: S.current.cancel,
                    fontSize: fontSize,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        });
  }
  Widget addAttachment() => CupertinoListSection.insetGrouped(
        header: AppText(
          text: S.current.attachment,
          fontSize: fontSize,
          color: AppColors.greyColor,
        ),
        margin: EdgeInsets.zero,
        children: [
          CupertinoListTile(
            onTap: () {},
            title: AppText(
              text: S.current.attachmentTitle,
              fontSize: fontSize,
              color: AppColors.greyColor,
            ),
            trailing: const Icon(
              CupertinoIcons.add_circled,
              color: AppColors.greyColor,
            ),
          )
        ],
      );



  Widget getDateSection() => CupertinoListTile(
        title: AppText(
          text: S.current.date,
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
            text: intl.DateFormat('dd MMM yyyy').format(selectedDate),
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

  void getDateDialog() async {
    final TimeOfDay? timePicked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (timePicked != null) {
      setState(() {
        dayTime = timePicked;
        tempDate =
            intl.DateFormat("hh:mm").parse("${dayTime.hour}:${dayTime.minute}");
        dateFormat = intl.DateFormat("h:mm a");
      });
    }
  }
}
