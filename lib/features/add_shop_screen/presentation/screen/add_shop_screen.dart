import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_routes/app_routes.dart';
import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';
import '../../../../core/widgets/file_picker_utils.dart';

class AddShopScreen extends StatefulWidget {
  const AddShopScreen({super.key});

  @override
  State<AddShopScreen> createState() => _AddShopScreenState();
}

class _AddShopScreenState extends State<AddShopScreen> {
  PlatformFile? selectedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          route: AppBarRoutes.saveAndDelete,
          onPressed: () {},
          onPressedDelete: () {},
          title: AppText(
            text: "Add Shop",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            getProfileHeader(),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
              child: Column(
                children: [
                  getReusableSection(header: "Name",sectionName: SectionName.name),
                  getReusableSection(header: "CONTACT",sectionName: SectionName.contact),
                  getReusableSection(header: "ADDRESS",sectionName: SectionName.address),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }


  Widget getReusableTextField({String? placeHolder})=> CupertinoTextField(
    padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 7.h),
    placeholder: placeHolder??"",
    placeholderStyle: TextStyle(
      fontSize: fontSize,
      height: 1.7.h,
      color: AppColors.greyColor
    ),
    decoration:  const BoxDecoration(border: Border(right: BorderSide.none)),
  );
  Widget getReusableSection({required String header,required SectionName sectionName})=> CupertinoListSection.insetGrouped(
    header: AppText(text: header,fontSize: fontSize,color: AppColors.greyColor,),
    margin: EdgeInsets.zero,
    children: [
      if(sectionName == SectionName.name)...[
        getReusableTextField(),
      ]
      else if(sectionName == SectionName.contact)...[
        getReusableTextField(placeHolder: "Phone Number"),
        getReusableTextField(placeHolder: "Contact Person"),
        getReusableTextField(placeHolder: "Email Address"),
      ]
      else...[
          getReusableTextField(placeHolder: "Street"),
          getReusableTextField(placeHolder: "City"),
          getReusableTextField(placeHolder: "State"),
          getReusableTextField(placeHolder: "Country"),
          CupertinoListTile(
            onTap: (){},
            title: AppText(text: "Shoubra,cairo,egypt",fontSize: fontSize,color: AppColors.greyColor,),
            trailing: Icon(CupertinoIcons.right_chevron,color: AppColors.greyColor,),
          )
        ]

    ],
  );
  getProfileHeader() => Container(
    width: double.infinity,
    decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(corner + 10.w),
          bottomRight: Radius.circular(corner + 10.w),
        )),
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: Column(
        children: [
          buildImageWidget(context),
          gap(height: 10.h),
          getRateBarAndQRCodeRow()

        ],
      ),
    ),
  );
  Widget buildImageWidget(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w),
      child: SizedBox(
        height: 170.h,
        width: double.infinity,
        child: Card(
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(corner)
          ),
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            children: [
              Center(
                child: IconButton(
                  icon: Icon(
                    Icons.add_a_photo,
                    size: 56.w,
                  ),
                  onPressed: () {
                    FilePickerUtils.pickFile((file) {
                      setState(() {
                        selectedImage = file;
                      });
                    }, [
                      FileExtension.jpeg,
                      FileExtension.jpg,
                      FileExtension.png
                    ]);
                  },
                ),
              ),
              if (selectedImage != null)
                InkWell(
                  onTap: () {
                    FilePickerUtils.pickFile((file) {
                      setState(() {
                        selectedImage = file;
                      });
                    }, [
                      FileExtension.jpeg,
                      FileExtension.jpg,
                      FileExtension.png,
                    ]);
                  },
                  child: SizedBox(
                      width: double.infinity,
                      child: Image.file(
                        File(selectedImage!.path!),
                        fit: BoxFit.fitWidth,
                      )),
                )
            ],
          ),
        ),
      ),
    );
  }

  getRateBarWidget() => SizedBox(
    width: MediaQuery.of(context).size.width / 2,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        getUserRatingBar(ratingValue: 2.75, itemSize: 20.w),
      ],
    ),
  );

  getQRCodeButton() => SizedBox(
    width: MediaQuery.of(context).size.width / 2,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            NamedNavigatorImpl().push(Routes.searchQRScreenRoute);
          },
          icon: SizedBox(
            width: 40.w,
            child: Image.asset("images/qrcode.png"),
          ),
        ),
      ],
    ),
  );

  Widget getRateBarAndQRCodeRow() => IntrinsicHeight(
    child: Row(
      children: [
        getRateBarWidget(),
        const VerticalDivider(
          width: 0,
        ),
        getQRCodeButton(),
      ],
    ),
  );
}
enum TextFieldName{name,phone,contact,email,street,city,state,country,postalCode}
enum SectionName{name,contact,address}