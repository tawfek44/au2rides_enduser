import 'package:au2rides/core/widgets/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class ChooseProviderScreen extends StatefulWidget {
  const ChooseProviderScreen({super.key});

  @override
  State<ChooseProviderScreen> createState() => _ChooseProviderScreenState();
}

class _ChooseProviderScreenState extends State<ChooseProviderScreen> {
  List<String> listOfChoices = ["Mobil", "Orange", "Etisalat", "Shell"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          route: AppBarRoutes.add,
          onPressed: () {
            showProviderModalBottomSheet();
          },
          title: AppText(
            text: "Choose Provider",
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
              getProvidersList(),
            ],
          ),
        ),
      ),
    );
  }

  showProviderModalBottomSheet() => showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(corner),
        ),
        context: context,
        builder: (context) => Wrap(
          children: [
            Padding(
              padding:  EdgeInsets.all(10.w),
              child: Column(
                children: [
                  CupertinoListSection.insetGrouped(
                    margin: EdgeInsets.zero,
                    children: [
                      CupertinoListTile(
                        title: CupertinoTextField(
                          style: TextStyle(fontSize: fontSize),
                          placeholder: "Provider Name",
                          decoration: const BoxDecoration(
                              border: Border(right: BorderSide.none)),
                        ),
                      ),
                    ],
                  ),
                  gap(height: 10.h),
                  AppButton(label: "Add Provider", onPressed: (){})
                ],
              ),
            ),

          ],
        ),
      );

  getProvidersList() => CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>
                getProviderItemWidget(index: index),
            separatorBuilder: (context, index) => Divider(
              height: 0,
              indent: 55.w,
            ),
            itemCount: listOfChoices.length,
          ),
        ],
      );

  getProviderItemWidget({required int index}) => CupertinoListTile.notched(
        onTap: () {},
        backgroundColor: Colors.white,
        leading: SizedBox(
            width: 30.w,
            height: 30.h,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30.w),
                child: Image.asset("images/img.png"))),
        title: AppText(
          text: listOfChoices[index],
          fontSize: fontSize,
        ),
        trailing: Icon(
          Icons.check,
          color: Theme.of(context).primaryColor,
        ),
      );
}
