import 'package:au2rides/core/widgets/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class CreateItemScreen extends StatefulWidget {
  const CreateItemScreen({super.key});

  @override
  State<CreateItemScreen> createState() => _CreateItemScreenState();
}

class _CreateItemScreenState extends State<CreateItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          title: AppText(
            text: "Create New Item",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(15.w),
          child: Column(
            children: [
              getNewItemSectionWidget(),
              gap(height: 20.h),
              AppButton(label: "Save", onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }
Widget getNewItemSectionWidget()=> CupertinoListSection.insetGrouped(
  margin: EdgeInsets.zero,
  children: [
    getCupertinoListTile(
        title: "Name",
        leadingIcon: CupertinoIcons.wrench,
        choices: ItemInfoChoices.name),
    getCupertinoListTile(
        title: "Type",
        leadingIcon: Icons.payment_outlined,
        choices: ItemInfoChoices.type),
    getCupertinoListTile(
        title: "Department",
        leadingIcon: Icons.dashboard,
        choices: ItemInfoChoices.department),
  ],
);
  Widget getCupertinoListTile({
    required String title,
    required IconData leadingIcon,
    required ItemInfoChoices choices,
  }) =>
      CupertinoListTile(
        title: AppText(
          text: title,
          fontSize: fontSize,
        ),
        leading: Icon(
          leadingIcon,
          color: Theme.of(context).primaryColor,
        ),
        trailing: choices == ItemInfoChoices.department
            ? const Icon(
                CupertinoIcons.right_chevron,
                color: AppColors.greyColor,
              )
            : null,
        additionalInfo: choices == ItemInfoChoices.department
            ? AppText(
                text: "Finance",
                fontSize: fontSize,
                color: AppColors.greyColor,
              )
            : choices == ItemInfoChoices.type?AppText(
                text: "Expense",
                fontSize: fontSize,
                color: AppColors.greyColor,
              ):null,
      );
}

enum ItemInfoChoices { name, type, department }
