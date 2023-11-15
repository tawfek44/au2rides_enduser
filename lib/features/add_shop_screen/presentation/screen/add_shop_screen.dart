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
            getQrCodeSection(),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  getReusableSection(header: "NAME",sectionName: SectionName.name),
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


  Widget getReusableTextField({String? placeHolder,required Icon icon})=> CupertinoListTile(
    leading: icon,
    title: CupertinoTextField(
      placeholder: placeHolder??"",
      style: TextStyle(
        fontSize: fontSize
      ),
      decoration:  const BoxDecoration(border: Border(right: BorderSide.none)),
    ),
  );
  Widget getReusableSection({required String header,required SectionName sectionName})=> CupertinoListSection.insetGrouped(
    header: AppText(text: header,fontSize: fontSize,color: AppColors.greyColor,),
    margin: EdgeInsets.zero,
    children: [
      if(sectionName == SectionName.name)...[
        getReusableTextField(icon:  Icon(Icons.person,color: Theme.of(context).primaryColor)),
      ]
      else if(sectionName == SectionName.contact)...[
        getReusableTextField(placeHolder: "Phone Number", icon:  Icon(Icons.phone,color: Theme.of(context).primaryColor)),
        getReusableTextField(placeHolder: "Contact Person", icon:  Icon(Icons.person,color: Theme.of(context).primaryColor)),
        getReusableTextField(placeHolder: "Email Address", icon:  Icon(Icons.email_outlined,color: Theme.of(context).primaryColor)),
      ]
      else...[
          getReusableTextField(placeHolder: "Street",icon:  Icon(Icons.directions,color: Theme.of(context).primaryColor)),
          getReusableTextField(placeHolder: "City",icon:  Icon(Icons.location_city,color: Theme.of(context).primaryColor)),
          getReusableTextField(placeHolder: "State",icon:  Icon(Icons.merge_type,color: Theme.of(context).primaryColor)),
          getReusableTextField(placeHolder: "Country",icon:  Icon(CupertinoIcons.globe,color: Theme.of(context).primaryColor,)),
          CupertinoListTile(
            onTap: (){},
            leading: Icon(CupertinoIcons.globe,color: Theme.of(context).primaryColor,),
            title: AppText(text: "Shoubra,cairo,egypt",fontSize: fontSize,color: AppColors.greyColor,),
            trailing: const Icon(CupertinoIcons.right_chevron,color: AppColors.greyColor,),
          )
        ]

    ],
  );
   getQrCodeSection(){
    return Padding(
      padding:  EdgeInsets.all(15.w),
      child: CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          getRateBarAndQRCodeRow()
        ],
      ),
    );
  }
  getProfileHeader() => Container(
    width: double.infinity,
    decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(corner),
          bottomRight: Radius.circular(corner),
        )),
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: Column(
        children: [
          buildImageWidget(context),
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

  getQRCodeButton() => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        onPressed: () {
          NamedNavigatorImpl().push(Routes.searchQRScreenRoute);
        },
        icon: SizedBox(
          width: 80.w,
          child: Image.asset("images/qrcode.png"),
        ),
      ),
    ],
  );

  Widget getRateBarAndQRCodeRow() => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      getQRCodeButton(),
    ],
  );
}
enum TextFieldName{name,phone,contact,email,street,city,state,country,postalCode}
enum SectionName{name,contact,address}