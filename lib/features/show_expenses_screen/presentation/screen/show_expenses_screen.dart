import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class ShowExpenseScreen extends StatefulWidget {
  const ShowExpenseScreen({super.key});

  @override
  State<ShowExpenseScreen> createState() => _ShowExpenseScreenState();
}

class _ShowExpenseScreenState extends State<ShowExpenseScreen> {
  bool recurrenceBool=false;
  List<ShowExpensesModel> expensesList = [
    ShowExpensesModel(
        cost: "50 LE",
        fuelUpItemIsVerified: "Verified",
        title: "brake",
        date: "22-6-2023"
    ),
    ShowExpensesModel(
        cost: "1000 USD",
        fuelUpItemIsVerified: "Verified",
        title: "Motor",
        date: "22-3-2024"
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
            // NamedNavigatorImpl().push(Routes.addFuelScreenRoute);
          },
          title: AppText(
            text: "Show Expenses",
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
                      key: ObjectKey(expensesList[index]),
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
                          expensesList.removeAt(index);
                        });
                      },
                      child: myExpensesItem(expensesModel: expensesList[index]),
                    ),
                    separatorBuilder: (context, index) =>  Divider(
                      height: 0,
                      indent: 15.w,
                    ),
                    itemCount: expensesList.length,
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
        onTap: (){
          _showRecurrenceDialog(context);
        },
        title: AppText(
          text: "Expense Type",
          fontSize: fontSize,
        ),
        leading: Icon(
          Icons.exposure,
          color: Theme.of(context).primaryColor,
        ),
        additionalInfo: AppText(
          text:  recurrenceBool? 'Other':"Rides",
          fontSize: fontSize,
          color: AppColors.greyColor,
        ),
        trailing: const Icon(CupertinoIcons.arrow_up_down,color: AppColors.greyColor,)
      ),
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
  _showRecurrenceDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Directionality(
            textDirection: TextDirection.ltr,
            child: CupertinoAlertDialog(
              title: Center(
                  child: AppText(
                    text: "Expense Type",
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                  )),
              content: AppText(
                text: "Choose the expense Type either Rides or Other.",
                fontSize: fontSize,
                maxLines: 10,
              ),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: AppText(text:"RIDES",fontSize: fontSize,),
                  onPressed: () {
                    setState(() {
                      recurrenceBool=false;
                      Navigator.of(context).pop();
                    });
                  },
                ),
                CupertinoDialogAction(
                  child: AppText(text:"OTHER",fontSize: fontSize,),
                  onPressed: () {
                    setState(() {
                      recurrenceBool=true;
                      Navigator.of(context).pop();
                    });
                  },
                ),
                CupertinoDialogAction(
                  child: AppText(text:"CANCEL",fontSize: fontSize,),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        });
  }
  Widget myExpensesItem({required ShowExpensesModel expensesModel}) =>
      CupertinoListTile.notched(
        padding: EdgeInsets.all(15.w),
        onTap: () {},
        title: Column(
          children: [
            Row(
              children: [
                AppText(
                  text: expensesModel.title,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                ),
                gap(width: 20.w),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(corner)),
                  child: Padding(
                    padding:  EdgeInsets.all(5.w),
                    child: Center(
                        child: Text(
                          expensesModel.fuelUpItemIsVerified,
                          style: TextStyle(
                              color: Colors.white, fontSize: fontSize - 2.sp),
                          textAlign: TextAlign.center,
                        )),
                  ),
                ),
              ],
            ),
            gap(height: 7.h),
            Row(
              children: [
                AppText(
                  text: "Date",
                  fontSize: fontSize,
                ),
                const Spacer(),
                AppText(
                  text: expensesModel.date,
                  fontSize: fontSize,
                ),
              ],
            ),
            gap(height: 7.h),
            Row(
              children: [
                AppText(
                  text: "Cost",
                  fontSize: fontSize,
                ),
                const Spacer(),
                AppText(
                  text: expensesModel.cost,
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

class ShowExpensesModel {
  String title;
  String date;
  String fuelUpItemIsVerified;
  String cost;

  ShowExpensesModel(
      {required this.title,
        required this.date,
        required this.fuelUpItemIsVerified,
        required this.cost});
}