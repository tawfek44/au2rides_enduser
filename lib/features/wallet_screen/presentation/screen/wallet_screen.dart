import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: getAppBar(
            context: context,
            title: AppText(
              text: "Wallet",
              fontSize: 15.sp,
              color: AppColors.white,
            ),
          ),
        ),
        body: ListView.separated(
          itemBuilder: (context,index) => Padding(
            padding: EdgeInsets.all(10.w),
            child: CupertinoListTile.notched(
              onTap: (){},
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      AppText(text: "Mobil",fontSize: fontSize,fontWeight: FontWeight.bold,),
                      gap(width: 15.w),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(corner)),
                        height: 25.h,
                        width: 50.w,
                        child: Center(
                            child: Text(
                              "Linked",
                              style: TextStyle(
                                  color: Colors.white, fontSize: fontSize - 2.sp),
                              textAlign: TextAlign.center,
                            )),
                      ),
                    ],
                  ),
                  gap(height: 10.h),
                  Row(
                    children: [
                      AppText(text: "Egypt",fontSize: fontSize,),
                      gap(width: 15.w),
                      AppText(text: "Points",fontSize: fontSize,)
                    ],
                  ),
                  gap(height: 10.h),
                  AppText(text: "+02 1143178019",fontSize: fontSize,)
                ],
              ),
              trailing: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.secondaryColor,
              size: 15.w,
            ),

            )
          ),
          separatorBuilder: (context,index)=>const Divider(height: 0,),
          itemCount: 2,
        ));
  }
}
