
import 'dart:io';

import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/styles/colors.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/widgets/file_picker_utils.dart';

class AddRideScreen extends StatefulWidget {
  const AddRideScreen({super.key});

  @override
  State<AddRideScreen> createState() => _AddRideScreenState();
}

class _AddRideScreenState extends State<AddRideScreen> {
  PlatformFile? selectedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: getAppBar(
            context: context,
            title: AppText(text:"Add new ride",fontSize: 16.sp,color: AppColors.white,),
            leading: IconButton(
              color: AppColors.white,
              icon: const Icon(CupertinoIcons.back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
          child: Column(
            children: [
              buildImageWidget(context),
              getNameSection(),
              getVINSection(),
              getManufacturerDetailsSection(),
              getMetricsSection(),
              getFuelSection(),
              getTirePressureSection(),
              getFrontSection(),
              getRearSection(),
              getLicenceSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget getLicenceSection()=> buildSection(
    context,
    [
      TextFieldDto(
        groupName: "LICENCE",
        fieldName: "Licence Plate",
        info: "Licence Plate",
        leadingIcon: CupertinoIcons.textformat_abc,
        fieldType: FieldType.text,
        inputType: TextInputType.text,
        onChanged: (text) {
        },
      ),
      TextFieldDto(
        groupName: "MANUFACTURING DETAILS",
        fieldName: "Start Date",
        info: "Start Date",
        leadingIcon: CupertinoIcons.calendar,
        fieldType: FieldType.date,
        inputType: TextInputType.datetime,
        onChanged: (text) {
        },
      ),
      TextFieldDto(
        groupName: "MANUFACTURING DETAILS",
        fieldName: "End Date",
        info: "End Date",
        leadingIcon: CupertinoIcons.calendar_badge_minus,
        fieldType: FieldType.date,
        inputType: TextInputType.datetime,
        onChanged: (text) {
        },
      ),
    ],
  );
  Widget getRearSection()=> buildSection(
    context,
    [
      TextFieldDto(
        groupName: "REAR",
        fieldName: "Pressure",
        info: "Pressure",
        leadingIcon: Icons.tire_repair_outlined,
        fieldType: FieldType.text,
        inputType: TextInputType.number,
        trailingWidget:  AppText( text:"psi",
        fontSize: 13.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.greyColor
        ),
        onChanged: (text) {
        },
      ),
      TextFieldDto(
        groupName: "FRONT",
        fieldName: "Size",
        info: "Size",
        leadingIcon: Icons.tire_repair_outlined,
        fieldType: FieldType.text,
        inputType: TextInputType.number,
        trailingWidget:AppText( text:"psi",
            fontSize: 13.sp,
            fontWeight: FontWeight.normal,
            color: AppColors.greyColor
        ),
        onChanged: (text) {
        },
      ),
    ],
  );
  Widget getFrontSection()=> buildSection(
    context,
    [
      TextFieldDto(
        groupName: "FRONT",
        fieldName: "Pressure",
        info: "Pressure",
        leadingIcon: Icons.tire_repair_outlined,
        fieldType: FieldType.text,
        inputType: TextInputType.number,
        trailingWidget:  AppText( text:"psi",
          fontSize: 13.sp,
          fontWeight: FontWeight.normal,
          color: AppColors.greyColor
        ),
        onChanged: (text) {
        },
      ),
      TextFieldDto(
          groupName: "FRONT",
          fieldName: "Size",
          info: "Size",
          leadingIcon: Icons.tire_repair_outlined,
          fieldType: FieldType.text,
          inputType: TextInputType.number,
          trailingWidget: AppText( text:"psi",
          fontSize: 13.sp,
          fontWeight: FontWeight.normal,
          color: AppColors.greyColor
        ),
        onChanged: (text) {
        },
      ),
    ],
  );
  Widget getTirePressureSection()=> buildSection(
    context,
    [
      TextFieldDto(
        groupName: "TIRE PRESSURE",
        fieldName: "Units",
        info: "htgh",
        leadingIcon: Icons.tire_repair_outlined,
        fieldType: FieldType.listTile,
        onChanged: (text) {
        },
      ),
    ],
  );
  Widget getFuelSection()=>buildSection(context, [
      TextFieldDto(
        groupName: "FUEL",
        fieldName: "Fuel Type",
        info: "hbg",
        leadingIcon: Icons.local_gas_station_outlined,
        fieldType: FieldType.listTile,
        onChanged: (text) {
        },
      ),
      TextFieldDto(
        groupName: "FUEL",
        fieldName: "Fuel Units",
        info:"dfhj",
        leadingIcon: CupertinoIcons.speedometer,
        fieldType: FieldType.listTile,
        onChanged: (text) {
        },
      ),
      TextFieldDto(
        groupName: "FUEL",
        fieldName: "Consumption",
        info: "tyu",
        leadingIcon: CupertinoIcons.speedometer,
        fieldType: FieldType.listTile,
        onChanged: (text) {
        },
      ),
    ],);
  Widget getMetricsSection()=>buildSection(
    context,
    [
      TextFieldDto(
        groupName: "METRICS",
        fieldName: "Unit",
        info: "jhk",
        leadingIcon: CupertinoIcons.waveform,
        fieldType: FieldType.listTile,
        onChanged: (text) {
        },
      ),
      TextFieldDto(
        groupName: "METRICS",
        fieldName: "Odometer",
        info: "Odometer",
        leadingIcon: CupertinoIcons.speedometer,
        fieldType: FieldType.text,
        trailingWidget: const Text("km",
          style:  TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.normal),
        ),
        onChanged: (text) {
        },
      ),
    ],
  );
  Widget getManufacturerDetailsSection()=> buildSection(context, [
    TextFieldDto(
      groupName: "MANUFACTURING DETAILS",
      fieldName: "Type",
      info: "hjk",
      leadingIcon: CupertinoIcons.equal_circle,
      fieldType: FieldType.listTile,
      onChanged: (text) {

      },
    ),
    TextFieldDto(
      groupName: "MANUFACTURING DETAILS",
      fieldName: "Year",
      info: "Year",
      leadingIcon: CupertinoIcons.calendar,
      fieldType: FieldType.date,
      inputType: TextInputType.datetime,
      onChanged: (text) {
        var year = int.tryParse(text as String);
      },
    ),
    TextFieldDto(
      groupName: "MANUFACTURING DETAILS",
      fieldName: "Make",
      info: "hgjk",
      fieldType: FieldType.listTile,
      leadingIcon: CupertinoIcons.car,
      onChanged: (text) {
      },
    ),
  ],);
  Widget getVINSection()=>buildSection(context, [
    TextFieldDto(
        groupName: "VIN",
        fieldName: "VIN",
        info: "EX:WQ2BF2A53MLB51234",
        onChanged: (text) {

        },
        leadingIcon: Icons.tag,
        trailingIcon: CupertinoIcons.viewfinder)
  ]);
  Widget getNameSection()=>buildSection(context, [
    TextFieldDto(
        groupName: "NAME",
        fieldName: "NAME",
        info: "Requierd",
        onChanged: (text) {

        },
        leadingIcon: Icons.local_offer_outlined)
  ]);
  Widget buildSection(BuildContext context, List<TextFieldDto> fields) {
    return CupertinoListSection.insetGrouped(
      margin: EdgeInsets.zero,
      header: AppText(
        maxLines: 1,
        text: fields[0].groupName,
        color: Colors.grey,
        fontWeight: FontWeight.normal,
          fontSize: 12.sp
      ),
      children: fields.map((fieldDto) {
        switch (fieldDto.fieldType) {
          case FieldType.date:
            {
              return buildDateTile(context, fieldDto);
            }
          case FieldType.text:
            {
              return buildTextFieldTile(context, fieldDto);
            }
          case FieldType.listTile:
            {
              return buildChoosingTile(context, fieldDto);
            }
        }
      }).toList(),
    );
  }

  CupertinoListTile buildChoosingTile(
      BuildContext context, TextFieldDto fieldDto) {
    return CupertinoListTile.notched(
      onTap: () async {
        if (fieldDto.destination != null) {
          var value = await Navigator.pushNamed(context, fieldDto.destination!);
          if (value != null) {
            setState(() {
              fieldDto.onChanged(value);
            });
          }
        }
      },
      title: AppText(text:fieldDto.fieldName,fontSize: 15.sp,),
      additionalInfo: AppText(text:fieldDto.info,fontSize: 13.sp,color: AppColors.greyColor,),
      trailing: fieldDto.trailingWidget ??
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          ),
      leading: Icon(
        fieldDto.leadingIcon,
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  Widget buildDateTile(BuildContext context, TextFieldDto fieldDto) {
    return CupertinoListTile.notched(
      onTap: () {
       // showModalBottomSheet(
        //    backgroundColor: Colors.white,
        //    context: context, builder: (BuildContext context) {  },
      },

      title: AppText(text:fieldDto.fieldName,fontSize: 15.sp,),
      additionalInfo: AppText(text:fieldDto.info,fontSize: 13.sp,color: AppColors.greyColor,),
      trailing: fieldDto.trailingWidget ??
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          ),
      leading: Icon(
        fieldDto.leadingIcon,
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  Widget buildTextFieldTile(BuildContext context, TextFieldDto fieldDto) {
    return CupertinoTextField(
      keyboardType: fieldDto.inputType,
      suffix: Padding(
        padding:  EdgeInsets.only(left:15.w, right: 15.w,bottom: 16.h,top:16.h),
        child: fieldDto.trailingWidget ??
            Icon(
              fieldDto.trailingIcon,
              color: Theme.of(context).primaryColor,
            ),
      ),
      prefix: Padding(
        padding:  EdgeInsets.only(left:15.w, right: 15.w,bottom: 16.h,top:16.h),
        child: Icon(
          fieldDto.leadingIcon,
          color: Theme.of(context).primaryColor,
        ),
      ),
      placeholder: fieldDto.info,
      placeholderStyle: TextStyle(
        fontSize: 15.sp,
        color: AppColors.greyColor,
          height: 1.5.h
      ),
      maxLines: 1,
      onChanged: (name) {
        fieldDto.onChanged(name);
      },
    );
  }
  Widget buildImageWidget(BuildContext context) {
    return SizedBox(
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
    );
  }



}


class TextFieldDto {
  final String groupName;
  final String fieldName;
  final String info;
  final IconData leadingIcon;
  final IconData? trailingIcon;
  final Widget? trailingWidget;
  final Function(Object text) onChanged;
  final String? destination;
  final TextInputType? inputType;
  final FieldType fieldType;

  TextFieldDto({
    required this.groupName,
    required this.fieldName,
    required this.info,
    required this.onChanged,
    required this.leadingIcon,
    this.trailingIcon,
    this.trailingWidget,
    this.destination,
    this.inputType = TextInputType.text,
    this.fieldType = FieldType.text,
  });
}

enum FieldType { text, date, listTile }



