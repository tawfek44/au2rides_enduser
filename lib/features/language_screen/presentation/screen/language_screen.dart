import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  List<String>languagesList=["Arabic","English"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          title: AppText(
            text: "Languages",
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
              CupertinoListSection.insetGrouped(
                margin: EdgeInsets.zero,
                children: [
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => CupertinoListTile(
                      title: AppText(text: languagesList[index],fontSize: fontSize,),
                    ),
                    separatorBuilder: (context, index) =>  const Divider(height: 0,thickness: 0.5,),
                    itemCount: languagesList.length,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
