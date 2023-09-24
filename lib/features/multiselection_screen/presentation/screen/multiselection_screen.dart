import 'package:au2rides/core/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class MultiSelectionScreen extends StatefulWidget {
  const MultiSelectionScreen({super.key});

  @override
  State<MultiSelectionScreen> createState() => _MultiSelectionScreenState();
}

class _MultiSelectionScreenState extends State<MultiSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> listOfChoices=["Choice1","Choice2","Choice3"];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          title: AppText(
            text: "MultiSelection",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(15.w),
          child: CupertinoListSection.insetGrouped(
            margin: EdgeInsets.zero,
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => CupertinoListTile.notched(
                    onTap: (){},
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
                  trailing: Icon(Icons.check,color: Theme.of(context).primaryColor,),
                ),
                separatorBuilder: (context, index) => Divider(height: 0,indent: 55.w,),
                itemCount: listOfChoices.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
