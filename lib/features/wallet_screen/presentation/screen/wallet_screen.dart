import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/app_routes/app_routes_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  List<WalletModel> walletList = [
    WalletModel(
        country: "Egypt",
        numberOrEmail: "+20 114317019",
        points: "54",
        vendor: "Mobilawy"),
    WalletModel(
        country: "Egypt",
        numberOrEmail: "ahmedfahmy@gmail.com",
        points: "100",
        vendor: "Shell"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: getAppBar(
            context: context,
            route: AppBarRoutes.wallet,
            onPressed: addButtonOnPressed,
            title: AppText(
              text: "Wallet",
              fontSize: 15.sp,
              color: AppColors.white,
            ),
          ),
        ),
        body: Padding(
          padding:  EdgeInsets.all(15.w),
          child: CupertinoListSection.insetGrouped(
            margin: EdgeInsets.zero,
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Dismissible(
                  direction: DismissDirection.endToStart,
                  key: ObjectKey(walletList[index]),
                  background: Container(
                    color: Colors.red,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                  ),
                  onDismissed: (direction) {
                    setState(() {
                      walletList.removeAt(index);
                    });
                  },
                  child: getListItem(item: walletList[index]),
                ),
                separatorBuilder: (context, index) => const Divider(
                  height: 0,
                ),
                itemCount: walletList.length,
              ),
            ],
          ),
        ));
  }

  Widget getListItem({required WalletModel item}) => Padding(
      padding: EdgeInsets.all(10.w),
      child: CupertinoListTile.notched(
        onTap: () {},
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                AppText(
                  text: item.vendor,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                ),
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
            AppText(
              text: item.numberOrEmail,
              fontSize: fontSize,
            ),
            gap(height: 10.h),
            Row(
              children: [
                AppText(
                  text: item.country,
                  fontSize: fontSize,
                ),
                gap(width: 15.w),
                AppText(
                  text: item.points,
                  fontSize: fontSize,
                )
              ],
            ),
          ],
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: AppColors.secondaryColor,
          size: 15.w,
        ),
      ));

  addButtonOnPressed() {
    NamedNavigatorImpl().push(Routes.addWalletScreenRoute);
  }


}

class WalletModel {
  String country;
  String numberOrEmail;
  String points;
  String vendor;

  WalletModel(
      {required this.country,
      required this.numberOrEmail,
      required this.points,
      required this.vendor});
}
