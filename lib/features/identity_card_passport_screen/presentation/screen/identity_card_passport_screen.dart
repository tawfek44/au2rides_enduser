import 'package:au2rides/core/widgets/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:intl/intl.dart' as intl;
import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class IdentityCardOrPassportScreen extends StatefulWidget {
  const IdentityCardOrPassportScreen({super.key});

  @override
  State<IdentityCardOrPassportScreen> createState() => _IdentityCardOrPassportScreenState();
}

class _IdentityCardOrPassportScreenState extends State<IdentityCardOrPassportScreen> {
  DateTime selectedIssuedDate = DateTime.now();
  DateTime selectedExpiryDate = DateTime.now();
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
          route: AppBarRoutes.myDocuments,
          title: AppText(
            text: "Identity Card / Password",
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

  addButtonOnPressed() => showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: AppColors.white,
        shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(corner),
                topRight: Radius.circular(corner))),
        context: context,
        builder: (context) => Directionality(
          textDirection: TextDirection.ltr,
          child: StatefulBuilder(
            builder: (context, StateSetter setState) => Padding(
              padding: EdgeInsets.only(
                  top: 15.w,
                  right: 15.w,
                  left: 15.w,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 10.h),
              child: SingleChildScrollView(
                child: Wrap(
                  children: [
                    CupertinoListSection.insetGrouped(
                      margin: EdgeInsets.only(
                          left: 0, right: 0, top: 0, bottom: 15.h),
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            getListTileInModalButtonSheet(
                                icon: CupertinoIcons.right_chevron,
                                title: "Document Type",
                                choice: ChoicesInListTile.documentType,
                                value: "Passport",
                                leadingIcon: Icon(
                                  CupertinoIcons.doc,
                                  color: Theme.of(context).primaryColor,
                                )),
                            Divider(
                              height: 0,
                              indent: 55.w,
                            ),
                            getListTileInModalButtonSheet(
                                icon: CupertinoIcons.right_chevron,
                                title: "Issuing Country",
                                choice: ChoicesInListTile.issuedCountry,
                                value: "Egypt",
                                leadingIcon: Icon(
                                  CupertinoIcons.globe,
                                  color: Theme.of(context).primaryColor,
                                )),
                            Divider(
                              height: 0,
                              indent: 55.w,
                            ),
                            getTextFieldInModalButtonSheet(
                                title: "Document Number",
                                stateSetter: setState,
                                choice:
                                    ModalBottomSheetListTileChoices.document,
                                dateType: ModalBottomSheetDateType.other,
                                icon: Icon(
                                  CupertinoIcons.doc_plaintext,
                                  color: Theme.of(context).primaryColor,
                                )),
                            Divider(
                              height: 0,
                              indent: 55.w,
                            ),
                            getTextFieldInModalButtonSheet(
                                title: "Issued Date",
                                stateSetter: setState,
                                choice: ModalBottomSheetListTileChoices.date,
                                dateType: ModalBottomSheetDateType.issuedDate,
                                icon: Icon(CupertinoIcons.rectangle_dock,
                                    color: Theme.of(context).primaryColor)),
                            Divider(
                              height: 0,
                              indent: 55.w,
                            ),
                            getTextFieldInModalButtonSheet(
                                title: "Expiry Date",
                                stateSetter: setState,
                                dateType: ModalBottomSheetDateType.expiryDate,
                                choice: ModalBottomSheetListTileChoices.date,
                                icon: Icon(CupertinoIcons.doc_text_search,
                                    color: Theme.of(context).primaryColor)),
                            Divider(
                              height: 0,
                              indent: 55.w,
                            ),
                            getImageTitle(imageTitle: "Document Front"),
                            getDocumentImage(),
                            const Divider(),
                            getImageTitle(imageTitle: "Document Back"),
                            getDocumentImage(),
                            getNotesSection()
                          ],
                        )
                      ],
                    ),
                    AppButton(label: "Save", onPressed: () {}),
                    gap(height: 10.h),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  Widget getDocumentImage() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: FullScreenWidget(
          disposeLevel: DisposeLevel.Low,
          child: Container(
            height: 200.h,
            decoration: BoxDecoration(
                color: AppColors.greyColor,
                borderRadius: BorderRadius.circular(corner)),
            width: double.infinity,
            child: Image.asset("images/img.png"),
          ),
        ),
      );

  Widget getImageTitle({required String imageTitle}) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: AppText(
          text: imageTitle,
          fontSize: fontSize,
        ),
      );

  Widget getNotesSection() => CupertinoListSection.insetGrouped(
        header: AppText(
          text: "Notes",
          color: AppColors.greyColor,
          fontSize: fontSize,
        ),
        margin: EdgeInsets.zero,
        children: [
          CupertinoListTile.notched(
            onTap: () {},
            padding: EdgeInsets.symmetric(horizontal: 13.w),
            title: const CupertinoTextField(
              decoration: BoxDecoration(border: Border(right: BorderSide.none)),
              maxLines: 5,
            ),
          )
        ],
      );

  Widget getTextFieldInModalButtonSheet(
          {required title,
          required icon,
          required ModalBottomSheetListTileChoices choice,
          required ModalBottomSheetDateType dateType,
          required StateSetter stateSetter}) =>
      CupertinoListTile(
        title: AppText(
          text: title,
          fontSize: fontSize,
        ),
        leading: icon,
        trailing: choice == ModalBottomSheetListTileChoices.date
            ? Row(
                children: [
                  getDateWidget(stateSetter: stateSetter, dateType: dateType),
                ],
              )
            : SizedBox(
                width: 100.w,
                child: CupertinoTextField(
                  placeholder: "ex:23545465",
                  placeholderStyle: TextStyle(
                      fontSize: fontSize,
                      color: AppColors.greyColor,
                      height: 1.5.h),
                  style: TextStyle(fontSize: fontSize),
                  decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.none)),
                ),
              ),
      );

  Widget getDateWidget(
          {required StateSetter stateSetter,
          required ModalBottomSheetDateType dateType}) =>
      InkWell(
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: dateType == ModalBottomSheetDateType.expiryDate
                    ? selectedExpiryDate
                    : selectedIssuedDate,
                firstDate: DateTime(1800),
                lastDate: DateTime(2101));
            if (pickedDate != null) {
              setState(() {
                if (dateType == ModalBottomSheetDateType.expiryDate) {
                  selectedExpiryDate = pickedDate;
                } else {
                  selectedIssuedDate = pickedDate;
                }
              });
              stateSetter(() {
                if (dateType == ModalBottomSheetDateType.expiryDate) {
                  selectedExpiryDate = pickedDate;
                } else {
                  selectedIssuedDate = pickedDate;
                }
              });
            }
          },
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.lightGreyColor,
                borderRadius: BorderRadius.circular(5.w)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 5.h),
              child: AppText(
                text: dateType == ModalBottomSheetDateType.expiryDate
                    ? intl.DateFormat('dd MMM yyyy').format(selectedExpiryDate)
                    : intl.DateFormat('dd MMM yyyy').format(selectedIssuedDate),
                fontSize: fontSize - 1.sp,
              ),
            ),
          ));

  showDateDialog(
      {required StateSetter stateSetter,
      required ModalBottomSheetDateType dateType}) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: dateType == ModalBottomSheetDateType.expiryDate
            ? selectedExpiryDate
            : selectedIssuedDate,
        firstDate: DateTime(1800),
        lastDate: DateTime(2101));
    if (pickedDate != null) {
      setState(() {
        if (dateType == ModalBottomSheetDateType.expiryDate) {
          selectedExpiryDate = pickedDate;
        } else if (dateType == ModalBottomSheetDateType.issuedDate) {
          selectedIssuedDate = pickedDate;
        }
      });
      stateSetter(() {
        if (dateType == ModalBottomSheetDateType.expiryDate) {
          selectedExpiryDate = pickedDate;
        } else if (dateType == ModalBottomSheetDateType.issuedDate) {
          selectedIssuedDate = pickedDate;
        }
      });
    }
  }

  Widget getListTileInModalButtonSheet({
    required String title,
    required IconData icon,
    required ChoicesInListTile choice,
    required String value,
    required Widget leadingIcon,
  }) =>
      CupertinoListTile.notched(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        onTap: () {
          switch (choice) {
            case ChoicesInListTile.documentType:
              break;
            case ChoicesInListTile.issuedCountry:
              // TODO: Handle this case.
              break;
          }
        },
        leading: leadingIcon,
        title: AppText(
          text: title,
          fontSize: fontSize,
        ),
        trailing: Row(
          children: [
            AppText(
              text: value,
              fontSize: fontSize,
              color: AppColors.greyColor,
            ),
            gap(width: 5.w),
            Icon(
              icon,
              color: AppColors.secondaryColor,
              size: 15.w,
            ),
          ],
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

enum ChoicesInListTile { documentType, issuedCountry }

enum ModalBottomSheetListTileChoices { document, date }

enum ModalBottomSheetDateType { issuedDate, expiryDate, other }
