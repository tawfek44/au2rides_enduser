import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final fontSize = 11.sp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: getAppBar(
            context: context,
            title: AppText(
              text: "Contact Us",
              fontSize: 16.sp,
              color: AppColors.white,
            ),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              getContactInfoSection(),
              gap(height: 20.h),
              getDetailsSection(),
              gap(height: 20.h),
              getAttachmentsSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSection(
      {required String header, required List<TextFieldDto> fields}) {
    return CupertinoListSection.insetGrouped(
      margin: EdgeInsets.zero,
      header: AppText(
          maxLines: 1,
          text: header,
          color: Colors.grey,
          fontWeight: FontWeight.normal,
          fontSize: 12.sp),
      children: fields.map((fieldDto) {
        switch (fieldDto.fieldType) {
          case FieldType.text:
            {
              return getTextField(
                  placeHolder: fieldDto.fieldName,
                  maxLines: fieldDto.maxLines ?? 1);
            }
          case FieldType.listTile:
            {
              return getListTile(
                title: fieldDto.fieldName,
                trailingWidget: fieldDto.trailingWidget!,
              );
            }
        }
      }).toList(),
    );
  }

  Widget getTextField({required String placeHolder, required int maxLines}) =>
      CupertinoListTile.notched(
        onTap: () {},
        padding: EdgeInsets.symmetric(horizontal: 13.w),
        title: CupertinoTextField(
          placeholder: placeHolder,
          placeholderStyle: TextStyle(
              fontSize: fontSize,
              color: AppColors.lightGreyColorForText,
              height: 1.7.h),
          decoration:
              const BoxDecoration(border: Border(right: BorderSide.none)),
          maxLines: maxLines,
        ),
      );

  Widget getListTile({
    required String title,
    required Widget trailingWidget
  }) =>
      CupertinoListTile.notched(
        onTap: () {
          switch (title){

          }
        },
        padding: EdgeInsets.symmetric(horizontal: 13.w),
        title: AppText(
          text: title,
          fontSize: fontSize,
        ),
        trailing: trailingWidget
      );

  Widget getDetailsSection() => buildSection(
        header: "DETAILS",
        fields: [
          TextFieldDto(
              fieldName: "Type",
              onChanged: (x) {},
              fieldType: FieldType.listTile,
              trailingWidget: Row(
                children: [
                  AppText(
                    text: "Feedback",
                    fontSize: fontSize,
                    color: AppColors.lightGreyColorForText!,
                  ),
                  Icon(
                    CupertinoIcons.arrow_up_down,
                    color: AppColors.lightGreyColorForText,
                  )
                ],
              ),
          ),
          TextFieldDto(
              fieldName: "Subject",
              onChanged: (subject) {},
              fieldType: FieldType.text,
              maxLines: smallMaxLines),
          TextFieldDto(
              fieldName: "Write your message",
              onChanged: (subject) {},
              fieldType: FieldType.text,
              maxLines: highMaxLines),
        ],
      );

  Widget getContactInfoSection() => buildSection(
        header: "CONTACT INFO",
        fields: [
          TextFieldDto(
              fieldName: "Name", onChanged: (t) {}, fieldType: FieldType.text),
          TextFieldDto(
              fieldName: "Email", onChanged: (t) {}, fieldType: FieldType.text),
        ],
      );
  Widget getAttachmentsSection()=>  buildSection(
    header: "ATTACHMENTS",
    fields: [
      TextFieldDto(
        fieldName: "Add Image...",
        onChanged: (t) {
        },
        fieldType: FieldType.listTile,
        trailingWidget: const Icon(CupertinoIcons.add_circled),
      ),
    ],
  );
}

class TextFieldDto {
  final String fieldName;
  final IconData? leadingIcon;
  final Widget? trailingWidget;
  final Function(Object text) onChanged;
  final String? destination;
  final TextInputType? inputType;
  final FieldType fieldType;
  final int? maxLines;

  TextFieldDto(
      {required this.fieldName,
      required this.onChanged,
      this.leadingIcon,
      this.trailingWidget,
      this.destination,
      this.inputType = TextInputType.text,
      this.fieldType = FieldType.text,
      this.maxLines});
}

enum FieldType { text, listTile }
