
import 'dart:io';


import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/styles/colors.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/app_routes/app_routes.dart';
import '../../../core/app_routes/app_routes_names.dart';
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
            route: AppBarRoutes.save,
            context: context,
            title: AppText(text:"Add new ride",fontSize: 16.sp,color: AppColors.white,),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
          child: Column(
            children: [
              buildImageWidget(context),
              getNameSection(),
              getRegistrationDetailsSection(),
              getManufacturerDetailsSection(),
              getMetricsSection(),
              getFuelSection(),
              getRegionalDetailsSection()
            ],
          ),
        ),
      ),
    );
  }

  Widget getRegionalDetailsSection()=>buildSection(context, [
    TextFieldDto(
      groupName: "REGIONAL DETAILS",
      fieldName: "Country",
      info: "Egypt",
      destination: Routes.countriesScreenRoute,
      leadingIcon: CupertinoIcons.globe,
      fieldType: FieldType.listTile,
      onChanged: (text) {
      },
    ),
    TextFieldDto(
      groupName: "REGIONAL DETAILS",
      fieldName: "Currency",
      info: "EGP",
      destination: Routes.currencyScreenRoute,
      leadingIcon: CupertinoIcons.money_dollar,
      fieldType: FieldType.listTile,
      onChanged: (text) {
      },
    ),
  ],);
  Widget getFuelSection()=>buildSection(context, [
      TextFieldDto(
        groupName: "FUEL",
        fieldName: "Fuel Type",
        info: "Gasoline",
        destination: Routes.multiSelectionScreenRoute,
        leadingIcon: Icons.local_gas_station_outlined,
        fieldType: FieldType.listTile,
        onChanged: (text) {
        },
      ),
      TextFieldDto(
        groupName: "FUEL",
        fieldName: "Fuel Units",
        info:"Liters",
        destination: Routes.multiSelectionScreenRoute,
        leadingIcon: CupertinoIcons.speedometer,
        fieldType: FieldType.listTile,
        onChanged: (text) {
        },
      ),
      TextFieldDto(
        groupName: "FUEL",
        fieldName: "Consumption",
        info: "Liters / 100 KM",
        leadingIcon: CupertinoIcons.speedometer,
        destination: Routes.multiSelectionScreenRoute,
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
        info: "Kilometers",
        destination: Routes.multiSelectionScreenRoute,
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
        trailingWidget:  Text("km",
          style:  TextStyle(
              color: Colors.grey,
              fontSize: fontSize,
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
      info: "Car",
      leadingIcon: CupertinoIcons.equal_circle,
      fieldType: FieldType.listTile,
      onChanged: (text) {

      },
      destination: Routes.multiSelectionScreenRoute
    ),
    TextFieldDto(
      groupName: "MANUFACTURING DETAILS",
      fieldName: "Year",
      info: "Year",
      destination: Routes.multiSelectionScreenRoute,
      leadingIcon: CupertinoIcons.calendar,
      fieldType: FieldType.date,
      inputType: TextInputType.datetime,
      onChanged: (text) {

      },
    ),
    TextFieldDto(
      groupName: "MANUFACTURING DETAILS",
      fieldName: "Make",
      info: "MG",
      fieldType: FieldType.listTile,
      leadingIcon: CupertinoIcons.car,
      destination: Routes.multiSelectionScreenRoute,
      onChanged: (text) {
      },
    ),
    TextFieldDto(
      groupName: "MANUFACTURING DETAILS",
      fieldName: "Model",
      info: "ZS",
      destination: Routes.multiSelectionScreenRoute,
      leadingIcon: CupertinoIcons.car_detailed,
      fieldType: FieldType.listTile,
      onChanged: (text) {

      },
    ),
    TextFieldDto(
      groupName: "MANUFACTURING DETAILS",
      fieldName: "Trim",
      info: "Comfort",
      fieldType: FieldType.listTile,
      leadingIcon: CupertinoIcons.car,
      destination: Routes.multiSelectionScreenRoute,
      onChanged: (text) {
      },
    ),
  ],);
  Widget getRegistrationDetailsSection()=>buildSection(context, [
    TextFieldDto(
        groupName: "REGISTRATION DETAILS",
        fieldName: "REGISTRATION DETAILS",
        info: "VIN : EX:WQ2BF2A53MLB51234",
        onChanged: (text) {

        },
        fieldType: FieldType.text,
        inputType: TextInputType.text,
        leadingIcon: Icons.tag,
       ),
    TextFieldDto(
      groupName: "REGISTRATION DETAILS",
      fieldName: "Licence Plate",
      info: "License Plate : ex:123 ABC",
      leadingIcon: CupertinoIcons.textformat_abc,
      fieldType: FieldType.text,
      inputType: TextInputType.text,
      onChanged: (text) {
      },
    ),
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
          fontSize: fontSize
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

          var value = await NamedNavigatorImpl().push(fieldDto.destination!);
          if (value != null) {
            setState(() {
              fieldDto.onChanged(value);
            });
          }
        }
      },
      title: AppText(text:fieldDto.fieldName,fontSize: fontSize,),
      additionalInfo: AppText(text:fieldDto.info,fontSize: fontSize,color: AppColors.greyColor,),
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

      title: AppText(text:fieldDto.fieldName,fontSize: fontSize,),
      additionalInfo: AppText(text:fieldDto.info,fontSize: fontSize,color: AppColors.greyColor,),
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
    return CupertinoListTile(
      leading: Icon(
        fieldDto.leadingIcon,
        color: Theme.of(context).primaryColor,
      ),
      trailing: fieldDto.trailingWidget ?? Icon(
        fieldDto.trailingIcon,
        color: Theme.of(context).primaryColor,
      ),
      title: CupertinoTextField(
        keyboardType: fieldDto.inputType,
        placeholder: fieldDto.info,
        style: TextStyle(
          fontSize: fontSize
        ),
        decoration:
        const BoxDecoration(border: Border(right: BorderSide.none)),
        placeholderStyle: TextStyle(
          fontSize: fontSize,
          color: AppColors.greyColor,
        ),
        maxLines: 1,
        onChanged: (name) {
          fieldDto.onChanged(name);
        },
      ),
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



