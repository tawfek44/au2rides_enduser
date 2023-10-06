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
  List<String> listOfChoices=["Mobil","Orange","Etisalat","Shell"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
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
              addProviderSection(hintText: "Add provider..."),
              gap(height: 20.h),
              CupertinoListSection.insetGrouped(
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
            ],
          ),
        ),
      ),
    );
  }

  Widget addProviderSection({required String hintText}) =>
      CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          CupertinoListTile(
            trailing: CircleAvatar(
              radius: 17.w,
              backgroundColor: Theme.of(context).primaryColor,
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {

                },
                icon:  const Icon(
                  CupertinoIcons.add,
                  color: AppColors.white,
                ),
              ),
            ),
            title: SizedBox(
              width: 250.w,
              child: CupertinoTextField(
                keyboardType: TextInputType.number,
                maxLines: 1,
                placeholderStyle: TextStyle(
                    fontSize: fontSize, height: 1.7.h, color: AppColors.greyColor),
                placeholder: hintText,
                style: TextStyle(fontSize: fontSize),
                decoration:
                BoxDecoration(border: Border.all(style: BorderStyle.none)),
              ),
            ),
          )
        ],
      );
}
