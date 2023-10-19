import 'package:au2rides/core/widgets/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({super.key});

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: getAppBar(
            context: context,
            title: AppText(
              text: "Add New Item",
              fontSize: 16.sp,
              color: AppColors.white,
            ),
          )),
      body: Padding(
        padding: EdgeInsets.all(15.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              getSearchTextField(),
              gap(height: 15.h),
              CupertinoListSection.insetGrouped(
                margin: EdgeInsets.zero,
                children: [
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    separatorBuilder: (context, index) => Divider(
                      indent: 55.w,
                      thickness: 0.5,
                      height: 0,
                    ),
                    itemBuilder: (index, context) => getItemWidget(),
                  ),
                ],
              ),

              gap(height: 20.h),
              AppButton(label: "Create Item...", onPressed: (){}),
            ],
          ),
        ),
      ),
    );
  }

  getItemWidget() => Padding(
    padding:  EdgeInsets.symmetric(vertical: 10.h),
    child: CupertinoListTile(
      leading: Icon(CupertinoIcons.app_badge,color: Theme.of(context).primaryColor,),
          title: AppText(
            text: "Car Wash",
            fontSize: fontSize,
          ),
          subtitle: AppText(
            text: "General",
            fontSize: fontSize - 1.sp,
            color: AppColors.greyColor,
          ),
        ),
  );

  getSearchTextField() => Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(corner)),
        child: CupertinoListTile(
          backgroundColor: AppColors.white,
          leading: const Icon(
            CupertinoIcons.search,
            color: AppColors.greyColor,
          ),
          title: CupertinoTextField(
            style: TextStyle(fontSize: fontSize),
            textAlign: TextAlign.left,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            maxLines: 1,
            placeholderStyle:
                TextStyle(fontSize: fontSize, color: AppColors.greyColor),
            placeholder: "Search",
            decoration:
                BoxDecoration(border: Border.all(style: BorderStyle.none)),
          ),
          leadingToTitle: 5.w,
        ),
      );
}
