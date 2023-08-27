import 'package:au2rides/core/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_routes/app_routes.dart';
import '../../../core/app_routes/app_routes_names.dart';
import '../../../core/constants/constants.dart';
import '../../../core/styles/colors.dart';

class CountriesScreen extends StatefulWidget {
  const CountriesScreen({super.key});

  @override
  State<CountriesScreen> createState() => _CountriesScreenState();
}

class _CountriesScreenState extends State<CountriesScreen> {
  List<String> countries = ["Egypt","Qatar","Brazil"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(text: "Countries",fontSize: 16.sp,),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: "Countries",

                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
              ),
              gap(height: 10.h),
              getCountriesSection(),
            ],
          )
        ),
      ),
    );
  }
  Widget getCountriesSection() => ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: countries.length,
      itemBuilder: (context,index)=>getCountryItemWidget(index: index)
  );
  Widget getCountryItemWidget({required index})=>Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(Radius.circular(corner))),
      child: Column(
        children: [
          getCountriesWidget(index: index),
          if(index!=countries.length-1)...[
            Divider(
              height: 0,
              indent: 55.w,
            ),
          ]
        ],
      ));
  Widget getCountriesWidget({required index})=>Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: () {
        NamedNavigatorImpl().push(Routes.countriesScreenRoute);
      },
      child: Padding(
        padding: EdgeInsets.only(
            left: 10.w, right: 10.w, top: 15.h, bottom: 15.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.flag,color: Theme.of(context).primaryColor,),
            gap(width: 20.w),
            AppText(
              text: countries[index],
              fontSize: 13.sp,
              color: AppColors.greyColor,
            ),
            const Spacer(),
            const Icon(
              CupertinoIcons.forward,
              color: AppColors.greyColor,
            )
          ],
        ),
      ),
    ),
  );
}
