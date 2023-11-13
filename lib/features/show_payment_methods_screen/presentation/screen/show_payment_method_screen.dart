import 'package:au2rides/core/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class ShowPaymentMethodsScreen extends StatefulWidget {
  const ShowPaymentMethodsScreen({super.key});

  @override
  State<ShowPaymentMethodsScreen> createState() => _ShowPaymentMethodsScreenState();
}

class _ShowPaymentMethodsScreenState extends State<ShowPaymentMethodsScreen> {
  List<String>paymentMethodsList=["Paypal","MasterCard","Visa","Cash","Others"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          title: AppText(
            text: "Payment Method",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.w),

          child: Column(
            children: [
              getSearchBar(),
              gap(height: 15.h),
              CupertinoListSection.insetGrouped(
                margin: EdgeInsets.zero,
                children: [
                  getCurrencyListView(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  getSearchBar() => CupertinoListSection.insetGrouped(
    margin: EdgeInsets.zero,
    children: [
      CupertinoListTile(
        leading: const Icon(
          Icons.search,
          color: AppColors.greyColor,
        ),
        leadingToTitle: 5.w,
        title: CupertinoTextField(
          style: TextStyle(fontSize: fontSize),
          placeholder: "Search...",
          decoration:
          BoxDecoration(border: Border.all(style: BorderStyle.none)),
          onChanged: (String text) {

          },
        ),
      )
    ],
  );
  Widget getCurrencyListView()=> ListView.separated(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: paymentMethodsList.length,
    itemBuilder: (context, index) {
      return getCurrenciesItem(currencyName: paymentMethodsList[index]);
    },
    separatorBuilder: (BuildContext context, int index) {
      return Divider(
        indent: 55.w,
        height: 0,
      );
    },
  );
  Widget getCurrenciesItem({required currencyName}) => CupertinoListTile(
      leading:  SizedBox(
        width: 50.w,
        child: Image.asset("images/img.png"),
      ),
      title: AppText(
        text: currencyName,
        fontSize: fontSize,
      ),
      trailing: Icon(
        CupertinoIcons.checkmark,
        color: Theme.of(context).primaryColor,
      )
  );
}
