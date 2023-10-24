import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart' as intl;

import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class AddExpensesScreen extends StatefulWidget {
  const AddExpensesScreen({super.key});

  @override
  State<AddExpensesScreen> createState() => _AddExpensesScreenState();
}

class _AddExpensesScreenState extends State<AddExpensesScreen> {
  List<NewItemClass> newItemClassList = [
    NewItemClass(
        icon: CupertinoIcons.bell_slash,
        title: "Insurance",
        reminder: "No reminder set",
        leadingIcon: CupertinoIcons.ant,
        subTitle: "Finance"),
    NewItemClass(
        icon: CupertinoIcons.bell_slash,
        title: "Lease",
        reminder: "No reminder set",
        leadingIcon: CupertinoIcons.airplane,
        subTitle: "General"),
    NewItemClass(
        icon: CupertinoIcons.bell_slash,
        title: "Accessories",
        reminder: "No reminder set",
        leadingIcon: CupertinoIcons.arrow_counterclockwise_circle,
        subTitle: "Aesthetics"),
    NewItemClass(
        icon: CupertinoIcons.bell_slash,
        title: "Lease Payment",
        reminder: "No reminder set",
        leadingIcon: CupertinoIcons.badge_plus_radiowaves_right,
        subTitle: "Finance"),
  ];
  bool expenseTypeBool = false;
  DateTime selectedDate = DateTime.now();
  TimeOfDay dayTime = TimeOfDay.fromDateTime(DateTime.now());
  late DateTime tempDate;
  var dateFormat;
  bool byOwnerBool = false;
  bool costBool = false;
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    tempDate =
        intl.DateFormat("hh:mm").parse("${dayTime.hour}:${dayTime.minute}");
    dateFormat = intl.DateFormat("h:mm a");
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          title: AppText(
            text: "Add Expenses",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getRideNameSection(),
              gap(height: 30.h),
              getDataAndOdometerSection(),
              getWorkSection(),
              gap(height: 10.h),
              getItemsSection(),
              gap(height: 10.h),
              getDocumentsSection(),
              gap(height: 10.h),
              getNotesSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget getItemWidget({required int index}) =>
      Padding(
        padding:  EdgeInsets.symmetric(vertical: 10.h),
        child: CupertinoListTile(
          onTap: (){
            NamedNavigatorImpl().push(Routes.itemRemindersScreenRoute);
          },
          trailing: const Icon(CupertinoIcons.right_chevron,color: AppColors.greyColor,),
          leading:Icon(newItemClassList[index].leadingIcon,color: Theme.of(context).primaryColor,),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: newItemClassList[index].title,
                fontSize: fontSize,
              ),
              gap(height: 5.h),
              AppText(
                text: newItemClassList[index].subTitle,
                fontSize: fontSize-1.sp,
                color: AppColors.greyColor,
              ),
              gap(height: 5.h),
              Row(
                children: [
                  Icon(
                    newItemClassList[index].icon,
                    color: AppColors.greyColor,
                    size: 15.w,
                  ),
                  gap(width: 5.w),
                  AppText(
                    text: newItemClassList[index].reminder,
                    fontSize: fontSize-1.sp,
                    color: AppColors.greyColor,
                  ),
                ],
              )
            ],
          ),
        ),
      );

  Widget getItemsSection() => CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        header: AppText(
          text: "ITEMS",
          fontSize: fontSize,
          color: AppColors.greyColor,
        ),
        children: [
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => getItemWidget(index: index),
            separatorBuilder: (context, index) => Divider(indent: 55.w,height: 0,thickness: .5,),
            itemCount: newItemClassList.length,),
          CupertinoListTile(
            onTap: () {
              NamedNavigatorImpl().push(Routes.addItemScreenRoute);
            },
            title: AppText(
              text: "Add Item...",
              fontSize: fontSize,
            ),
            trailing: Icon(
              CupertinoIcons.add_circled,
              color: Theme.of(context).primaryColor,
            ),
          ),


        ],
      );

  Widget getWorkSection() => CupertinoListSection.insetGrouped(
        header: AppText(
          text: "WORK",
          fontSize: fontSize,
          color: AppColors.greyColor,
        ),
        margin: EdgeInsets.zero,
        children: [
          getWorkListTile(
              title: "By Owner",
              icon: Icons.perm_identity,
              choices: WorkSectionChoices.byOwner),
          getWorkListTile(
              title: "Shop",
              icon: CupertinoIcons.wrench_fill,
              choices: WorkSectionChoices.shop),
          getWorkListTile(
              title: "Cost",
              icon: Icons.shopping_cart,
              choices: WorkSectionChoices.cost),
          getWorkListTile(
              title: "Payment Method",
              icon: Icons.payment_rounded,
              choices: WorkSectionChoices.paymentMethod),
        ],
      );

  Widget getWorkListTile(
      {required WorkSectionChoices choices,
      required String title,
      required IconData icon}) {
    if (choices == WorkSectionChoices.byOwner ||
        choices == WorkSectionChoices.cost) {
      return CupertinoListTile(
        title: AppText(
          text: title,
          fontSize: fontSize,
        ),
        leading: Icon(
          icon,
          color: Theme.of(context).primaryColor,
        ),
        additionalInfo: choices == WorkSectionChoices.cost
            ? SizedBox(
                width: 90.w,
                child: CupertinoTextField(
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  maxLines: 1,
                  placeholderStyle: TextStyle(
                      fontSize: fontSize,
                      height: 1.5.h,
                      color: AppColors.greyColor),
                  placeholder: "0.0",
                  decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.none)),
                ),
              )
            : AppText(text: ""),
        trailing: choices == WorkSectionChoices.byOwner
            ? Transform.scale(
                scale: .9,
                child: Switch.adaptive(
                  value: byOwnerBool,
                  onChanged: (value) {
                    if (choices == WorkSectionChoices.byOwner) {
                      setState(() {
                        byOwnerBool = !byOwnerBool;
                      });
                    }
                  },
                ),
              )
            : AppText(
                text: "EGP",
                fontSize: fontSize,
                color: AppColors.greyColor,
              ),
      );
    } else {
      return CupertinoListTile(
        onTap: () {},
        title: AppText(
          text: title,
          fontSize: fontSize,
        ),
        leading: Icon(
          icon,
          color: Theme.of(context).primaryColor,
        ),
        additionalInfo: choices == WorkSectionChoices.shop
            ? AppText(text: "")
            : AppText(
                text: "Not Set",
                color: AppColors.greyColor,
                fontSize: fontSize,
              ),
        trailing: const Icon(
          CupertinoIcons.right_chevron,
          color: AppColors.greyColor,
        ),
      );
    }
  }

  Widget getDocumentsSection() => CupertinoListSection.insetGrouped(
        header: AppText(
          text: "Documents",
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

  Widget getRideNameSection() => CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          CupertinoListTile(
              onTap: () {
                _showExpenseTypeDialog(context);
              },
              title: AppText(
                text: "Type",
                fontSize: fontSize,
              ),
              leading: Icon(
                Icons.payment,
                color: Theme.of(context).primaryColor,
              ),
              additionalInfo: AppText(
                text: expenseTypeBool ? "Other" : "Expense",
                fontSize: fontSize,
                color: AppColors.greyColor,
              ),
              trailing: const Icon(
                CupertinoIcons.right_chevron,
                color: AppColors.greyColor,
              )),
          if (!expenseTypeBool) ...[
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
          ]
        ],
      );

  _showExpenseTypeDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Directionality(
            textDirection: TextDirection.ltr,
            child: CupertinoAlertDialog(
              title: Center(
                  child: AppText(
                text: "Choose the expense type",
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              )),
              content: AppText(
                text: "Choose the type either Expense or Other.",
                fontSize: fontSize,
                maxLines: 10,
              ),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: AppText(
                    text: "Expense",
                    fontSize: fontSize,
                  ),
                  onPressed: () {
                    setState(() {
                      expenseTypeBool = false;
                      Navigator.of(context).pop();
                    });
                  },
                ),
                CupertinoDialogAction(
                  child: AppText(
                    text: "Other",
                    fontSize: fontSize,
                  ),
                  onPressed: () {
                    setState(() {
                      expenseTypeBool = true;
                      Navigator.of(context).pop();
                    });
                  },
                ),
                CupertinoDialogAction(
                  child: AppText(
                    text: "CANCEL",
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

  Widget getDateSection() => CupertinoListTile.notched(
        title: AppText(
          text: "Date",
          fontSize: fontSize,
        ),
        leading: Icon(
          CupertinoIcons.calendar,
          color: Theme.of(context).primaryColor,
        ),
        trailing: Row(
          children: [getDateWidget(), gap(width: 5.w), getTimeWidget()],
        ),
      );

  Widget getOdometerSection() => CupertinoListTile(
        padding: EdgeInsets.symmetric(horizontal: 13.w),
        title: AppText(
          text: "Odometer",
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
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            maxLines: 1,
            placeholderStyle: TextStyle(
                fontSize: fontSize, height: 1.5.h, color: AppColors.greyColor),
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

  Widget getTimeWidget() => InkWell(
        onTap: getDateDialog,
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
}

enum WorkSectionChoices { byOwner, shop, cost, paymentMethod }

class NewItemClass {
  String title, subTitle, reminder;
  IconData icon, leadingIcon;

  NewItemClass(
      {required this.title,
      required this.subTitle,
      required this.reminder,
      required this.icon,
      required this.leadingIcon});
}
