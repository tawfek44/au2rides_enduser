
import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/app_routes/app_routes_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class IdentityCardOrPassportScreen extends StatefulWidget {
  const IdentityCardOrPassportScreen({super.key});

  @override
  State<IdentityCardOrPassportScreen> createState() => _IdentityCardOrPassportScreenState();
}

class _IdentityCardOrPassportScreenState extends State<IdentityCardOrPassportScreen> {

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
          onPressed: addButtonOnPressed,
          route: AppBarRoutes.add,
          title: AppText(
            text: "Identity Card / Passport",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(15.w),
        child: CupertinoListSection.insetGrouped(
          margin: EdgeInsets.zero,
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Dismissible(
                direction: DismissDirection.endToStart,
                key: ObjectKey(myDocs[index]),
                background: Container(
                  color: Colors.red,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end ,
                      children: [
                         Icon(Icons.delete,color: AppColors.white,size: 25.w,)
                      ],
                    ),
                  ),
                ),
                onDismissed: (direction){
                  setState(() {
                    myDocs.removeAt(index);
                  });
                },
                child: myDocumentsItem(doc: myDocs[index]),
              ),
              separatorBuilder: (context, index) => const Divider(height: 0,),
              itemCount: myDocs.length,
            ),
          ],
        ),
      ),
    );
  }

  addButtonOnPressed() =>NamedNavigatorImpl().push(Routes.addNewIdentityCardOrPassportScreenRoute);










  Widget myDocumentsItem({required MyDocumentModel doc}) =>
      CupertinoListTile.notched(
        onTap: () {
          NamedNavigatorImpl().push(Routes.addNewIdentityCardOrPassportScreenRoute);
        },
        title: Column(
          children: [
            Row(
              children: [
                AppText(
                  text: doc.documentName,
                  fontSize: fontSize,
                ),
                gap(width: 20.w),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(corner)),
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




