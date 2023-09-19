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
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        titleSpacing: 0,
        iconTheme: const IconThemeData(
          color: AppColors.white,
        ),
        title: AppText(
          text: "Transfer History",
          color: AppColors.white,
          fontSize: 16.sp,
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(15.w),
        child: ListView.separated(
          itemBuilder: (context, index){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(text: "Mobilawy",fontWeight: FontWeight.bold,),
                gap(height: 15.h),
                AppText(text: "Points: 55677",fontSize: fontSize,),
                gap(height: 5.h),
                AppText(text: "Money: 55 EGP",fontSize: fontSize,),
                gap(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppText(text: "Success",fontSize: fontSize,)
                  ],
                )
              ],
            );
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 2,
        ),
      ),
    );
  }
}
