import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/app_routes/app_routes_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_screen_image/full_screen_image.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';
import 'package:intl/intl.dart' as intl;
class AddDrivingLicenceScreen extends StatefulWidget {
  const AddDrivingLicenceScreen({super.key});

  @override
  State<AddDrivingLicenceScreen> createState() => _AddDrivingLicenceScreenState();
}

class _AddDrivingLicenceScreenState extends State<AddDrivingLicenceScreen> {
  DateTime selectedIssuedDate = DateTime.now();
  DateTime selectedExpiryDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          route: AppBarRoutes.addWallet,
          context: context,
          title: AppText(
            text: "Add Driving License",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CupertinoListSection.insetGrouped(
                margin: EdgeInsets.zero,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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

                    ],
                  )
                ],
              ),
             gap(height: 15.h),
              CupertinoListSection.insetGrouped(
                margin: EdgeInsets.zero,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getImageTitle(imageTitle: "Document Front"),
                      getDocumentImage(),
                    ],
                  )
                ],
              ),
              gap(height: 15.h),
              CupertinoListSection.insetGrouped(
                margin: EdgeInsets.zero,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getImageTitle(imageTitle: "Document Back"),
                      getDocumentImage(),
                    ],
                  )
                ],
              ),
              gap(height: 15.h),
              CupertinoListSection.insetGrouped(
                margin: EdgeInsets.zero,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getNotesSection()
                    ],
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

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
          maxLines: highMaxLines,
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
            NamedNavigatorImpl().push(Routes.countriesScreenRoute);
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
}

enum ChoicesInListTile { documentType, issuedCountry }

enum ModalBottomSheetListTileChoices { document, date }

enum ModalBottomSheetDateType { issuedDate, expiryDate, other }