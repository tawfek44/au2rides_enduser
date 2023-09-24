import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/styles/colors.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_routes/app_routes.dart';
import '../../../core/app_routes/app_routes_names.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  @override
  Widget build(BuildContext context) {
    List<String>genderItemList=["Male","Female","Prefer not to answer"];
    List<IconData>genderIconList=[Icons.male,Icons.female,Icons.do_not_disturb_on_total_silence];
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          title: AppText(
            text: "Choose you gender",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
          body: Padding(
            padding: EdgeInsets.all(20.w),
            child: ListView.builder(
              itemCount: genderItemList.length,
                itemBuilder: (context,index)=>  Container(
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.all(Radius.circular(corner))),
                    child: Column(
                      children: [
                        getCountriesWidget(text: genderItemList[index],icon: genderIconList[index]),
                        if(index!=genderItemList.length-1)...[
                          Divider(
                            indent: 55.w,
                            height: 0,
                          )
                        ]
                      ],
                    )),
            ),
          ),
    ));
  }
  Widget getCountriesWidget({
     IconData? icon,
    required text,
})=>
      Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (){
            NamedNavigatorImpl().push(Routes.enterUserInfoScreenRoute);
          },
          child: Padding(
            padding: EdgeInsets.only(
                left: 10.w, right: 10.w, top: 15.h, bottom: 15.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(icon,color: Theme.of(context).primaryColor,),
                gap(width: 20.w),
                AppText(
                  text: text,
                  fontSize: 13.sp,
                  color: AppColors.greyColor,
                ),
                const Spacer(),


              ],
            ),
          ),
        ),
      );
}
