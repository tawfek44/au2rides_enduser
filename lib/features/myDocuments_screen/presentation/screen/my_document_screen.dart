import 'package:au2rides/core/widgets/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class MyDocumentScreen extends StatefulWidget {
  const MyDocumentScreen({super.key});

  @override
  State<MyDocumentScreen> createState() => _MyDocumentScreenState();
}

class _MyDocumentScreenState extends State<MyDocumentScreen> {
  List<MyDocumentModel> myDocs = [
    MyDocumentModel(
        documentName: "National ID",
        documentIsVerified: "Verified",
        countryName: "Egypt",
        documentNumber: "5657984365465",
        documentExpirationDate: "20-6-2024"),
    MyDocumentModel(
        documentName: "Passport",
        documentIsVerified: "Verified",
        countryName: "UK",
        documentNumber: "6442326687098",
        documentExpirationDate: "20-9-2028")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          title: AppText(
            text: "My Documents",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => myDocumentsItem(doc: myDocs[index]),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 2,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: AppColors.white,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(corner))
            ),
            context: context,
            builder: (context) => Directionality(
              textDirection: TextDirection.ltr,
              child: Padding(
                padding: EdgeInsets.all(15.w),
                child: Wrap(
                  children: [
                    CupertinoListSection.insetGrouped(
                      margin: EdgeInsets.only(left: 0,right: 0,top: 0,bottom: 15.h),
                      children: [
                        getListTileInModalButtonSheet(
                          icon: CupertinoIcons.arrow_up_down,
                          title: "Passport",
                          choice: ChoicesInListTile.documentType
                        ),
                        getListTileInModalButtonSheet(
                          icon: CupertinoIcons.right_chevron,
                          title: "Issuing Country",
                          choice: ChoicesInListTile.issuedCountry
                        ),
                        getTextFieldInModalButtonSheet(hintText: "Document Number"),
                        getTextFieldInModalButtonSheet(hintText: "Issued Date"),
                        getTextFieldInModalButtonSheet(hintText: "Expiry Date"),

                      ],
                    ),
                    AppButton(label: "Save", onPressed: (){})
                  ],
                ),
              ),
            ),
          );
        },
        backgroundColor: Theme.of(context).primaryColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.w)),
        child: const Icon(
          Icons.add,
          color: AppColors.white,
        ),
      ),
    );
  }

  Widget getTextFieldInModalButtonSheet({required hintText,}) => CupertinoTextField(
      placeholder: hintText,
      placeholderStyle: TextStyle(
          fontSize: fontSize,
          color: AppColors.greyColor,
          height: 1.5.h),
      style: TextStyle(fontSize: fontSize),
      decoration: BoxDecoration(
          border: Border.all(style: BorderStyle.none)));
  Widget getListTileInModalButtonSheet(
          {required String title, required IconData icon,required ChoicesInListTile choice}) =>
      CupertinoListTile.notched(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        onTap: () {
          switch(choice) {
            case ChoicesInListTile.documentType:
              
              break;
            case ChoicesInListTile.issuedCountry:
              // TODO: Handle this case.
              break;
          }
        },
        title: AppText(
          text: title,
          fontSize: fontSize,
        ),
        trailing: Icon(
          icon,
          color: AppColors.secondaryColor,
          size: 15.w,
        ),
      );

  Widget myDocumentsItem({required MyDocumentModel doc}) =>
      CupertinoListTile.notched(
        onTap: () {},
        title: Column(
          children: [
            Row(
              children: [
                AppText(
                  text: doc.documentName,
                  fontSize: fontSize,
                ),
                gap(width: 20.w),
                ClipOval(
                  child: Container(
                    color: Colors.green,
                    height: 25.h,
                    width: 50.w,
                    child: Center(
                        child: Text(
                      doc.documentIsVerified,
                      style: TextStyle(
                          color: Colors.white, fontSize: fontSize - 2.sp),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
              ],
            ),
            gap(height: 10.h),
            Row(
              children: [
                AppText(
                  text: doc.countryName,
                  fontSize: fontSize,
                ),
                const Spacer(),
                AppText(
                  text: doc.documentNumber,
                  fontSize: fontSize,
                ),
              ],
            ),
            gap(height: 10.h),
            Row(
              children: [
                AppText(
                  text: "Expires",
                  fontSize: fontSize,
                ),
                const Spacer(),
                AppText(
                  text: doc.documentExpirationDate,
                  fontSize: fontSize,
                ),
              ],
            )
          ],
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: AppColors.secondaryColor,
          size: 15.w,
        ),
      );
}

class MyDocumentModel {
  String documentName;
  String documentIsVerified;
  String countryName;
  String documentNumber;
  String documentExpirationDate;

  MyDocumentModel(
      {required this.documentName,
      required this.documentIsVerified,
      required this.countryName,
      required this.documentNumber,
      required this.documentExpirationDate});
}
enum ChoicesInListTile {documentType, issuedCountry}
