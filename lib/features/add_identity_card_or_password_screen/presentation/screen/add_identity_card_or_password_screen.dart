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
class AddIdentityCardOrPasswordScreen extends StatefulWidget {
  const AddIdentityCardOrPasswordScreen({super.key});

  @override
  State<AddIdentityCardOrPasswordScreen> createState() => _AddIdentityCardOrPasswordScreenState();
}

class _AddIdentityCardOrPasswordScreenState extends State<AddIdentityCardOrPasswordScreen> {
  DateTime selectedIssuedDate = DateTime.now();
  DateTime selectedExpiryDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: getAppBar(
            context: context,
            route: AppBarRoutes.addWallet,
            title: AppText(
              text: "Add Identity Card / Passport",
              fontSize: 16.sp,
              color: AppColors.white,
            ),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(15.w),
          child: Column(
            children: [
              getDocumentDetailsListSection(),
              gap(height: 15.h),
              getDocumentFrontImage(),
              gap(height: 15.h),
              getDocumentBackImage(),
              gap(height: 15.h),
              getNotesListSection()
            ],
          ),
        ),
      ),
    );
  }
  Widget getNotesListSection()=>CupertinoListSection.insetGrouped(
    margin: EdgeInsets.zero,
    children: [
      getNotesSection(),
    ],
  );
  Widget getDocumentBackImage()=> CupertinoListSection.insetGrouped(
    margin: EdgeInsets.zero,
    children: [
      Padding(
        padding:  EdgeInsets.symmetric(vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getImageTitle(imageTitle: "Document Back"),
            getDocumentImage(),
          ],
        ),
      ),

    ],

  );
  Widget getDocumentFrontImage()=>CupertinoListSection.insetGrouped(
    margin: EdgeInsets.zero,
    children: [
      Padding(
        padding:  EdgeInsets.symmetric(vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getImageTitle(imageTitle: "Document Front"),
            getDocumentImage(),
          ],
        ),
      ),

    ],

  );
  Widget getDocumentDetailsListSection()=>CupertinoListSection.insetGrouped(
    margin: EdgeInsets.zero,
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
        ],
      )
    ],
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
              _showIdentityOrPassportChoicesDialog(context);
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
  _showIdentityOrPassportChoicesDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Directionality(
            textDirection: TextDirection.ltr,
            child: CupertinoAlertDialog(
              title: Center(
                  child: AppText(
                    text: "Document Type",
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                  )),
              content: AppText(
                text: "Choose Document Type..",
                textAlign: TextAlign.center,
                fontSize: fontSize,
                maxLines: highMaxLines,
              ),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: AppText(
                    text: "Cancel",
                    fontSize: fontSize,
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  },
                ),
                CupertinoDialogAction(
                  child: AppText(
                    text: "Passport",
                    fontSize: fontSize,
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  },
                ),
                CupertinoDialogAction(
                  child: AppText(
                    text: "Identity Card",
                    fontSize: fontSize,
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  },
                ),
              ],
            ),
          );
        });
  }
}
enum ChoicesInListTile { documentType, issuedCountry }
enum ModalBottomSheetListTileChoices { document, date }
enum ModalBottomSheetDateType { issuedDate, expiryDate, other }