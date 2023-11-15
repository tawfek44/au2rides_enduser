import 'package:au2rides/core/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class TransactionHistoryScreen extends StatefulWidget {
  const TransactionHistoryScreen({super.key});

  @override
  State<TransactionHistoryScreen> createState() =>
      _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          title: AppText(
            text: "Points Transfer Logs",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.w),
        child: ListView.separated(
          itemBuilder: (context, index){
            return getTransactionItem();
          },
          separatorBuilder: (context, index) => gap(height: 10.h),
          itemCount: 2,
        ),
      ),
    );
  }
  getTransactionItem()=>Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.grey[400]!
      ),
        borderRadius: BorderRadius.circular(corner)
    ),
    child: Padding(
      padding:  EdgeInsets.all(10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getTransactionItemTitle(),
          gap(height: 15.h),
          getTransactionItemDate(),
          gap(height: 5.h),
          getTransactionItemPoints(),
          gap(height: 5.h),
          getTransactionAmount(),
          gap(height: 5.h),
          getTransactionItemStatus(),
        ],
      ),
    ),
  );
  getTransactionItemTitle() => AppText(text: "Mobilawy",fontWeight: FontWeight.bold,fontSize: fontSize+1.sp,);
  getTransactionItemDate() =>Row(
    children: [
      AppText(text: "Transaction Date",fontSize: fontSize,),
      const Spacer(),
      AppText(text: "02 June 2023",fontSize: fontSize,color: Theme.of(context).primaryColor,),
    ],
  );
  getTransactionItemPoints()=>Row(
    children: [
      AppText(text: "My points",fontSize: fontSize,),
      const Spacer(),
      AppText(text: "55677",fontSize: fontSize,color: Theme.of(context).primaryColor,),
    ],
  );
  getTransactionAmount()=>Row(
    children: [
      AppText(text: "Amount",fontSize: fontSize,),
      const Spacer(),
      AppText(text: "55 EGP",fontSize: fontSize,color: Theme.of(context).primaryColor,),
    ],
  );
  getTransactionItemStatus()=>Row(
    children: [
      AppText(text: "Transaction Status",fontSize: fontSize,),
      const Spacer(),
      AppText(text: "Success",fontSize: fontSize,color: Colors.green,)
    ],
  );
}
