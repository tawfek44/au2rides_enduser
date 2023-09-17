import 'package:au2rides/core/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class CurrencyScreen extends StatefulWidget {
  const CurrencyScreen({super.key});

  @override
  State<CurrencyScreen> createState() => _CurrencyScreenState();
}

class _CurrencyScreenState extends State<CurrencyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        titleSpacing: 0,
        iconTheme: const IconThemeData(
          color: AppColors.white,
        ),
        title: AppText(
          text: "Currency",
          color: AppColors.white,
          fontSize: 16.sp,
        ),
      ),
      body:
      Container(
        color: Colors.white,
        child: Padding(
          padding:  EdgeInsets.all(10.w),
          child: ListView.separated(
            itemCount: 2,
            itemBuilder: (context, index) {
              return Padding(
                padding:  EdgeInsets.symmetric(vertical: 10.h),
                child:
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: (){},
                    child: Row(
                      children: [
                        SizedBox(
                          width: 50.w,
                          child: Image.asset("images/img.png"),
                        ),
                        gap(width: 10.w),
                        AppText(text: "Egyptian Pound",fontSize: fontSize,),
                        const Spacer(),
                        AppText(text: "EGP",fontSize: fontSize,color: Colors.grey[500]!,),
                        gap(width: 5.w),
                        Icon(CupertinoIcons.checkmark,color: Theme.of(context).primaryColor,)
                      ],
                    ),
                  ),
                ),
              );
            }, separatorBuilder: (BuildContext context, int index) {
              return  Divider(indent: 55.w,height: 0,);
          },

          ),
        ),
      ),
    );
  }
}
