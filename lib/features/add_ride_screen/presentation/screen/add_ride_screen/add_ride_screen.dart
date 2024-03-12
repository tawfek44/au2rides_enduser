import 'dart:io';

import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/dependancy_injection/injection.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/styles/colors.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:au2rides/features/add_ride_screen/data/models/add_ride_body/add_ride_body_model.dart';
import 'package:au2rides/features/add_ride_screen/presentation/bloc/add_ride_cubit.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../core/app_routes/app_routes_names.dart';
import '../../../../../core/widgets/file_picker_utils.dart';
import '../../../../../generated/l10n.dart';
import 'package:intl/intl.dart' as intl;

import '../choose_ride_makes_screen/data/data_sources/choose_ride_makes_datasource.dart';

class AddRideScreen extends StatefulWidget {
  const AddRideScreen({super.key});

  @override
  State<AddRideScreen> createState() => _AddRideScreenState();
}

class _AddRideScreenState extends State<AddRideScreen> {
  PlatformFile? selectedImage;
  var date = DateTime.now().year.toString();
  DateTime initialDate = DateTime.now();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:
          isArabicLocalization() ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(AppBar().preferredSize.height),
            child: getAppBar(
              route: AppBarRoutes.save,
              onPressed: () async {
                await context
                    .read<AddRideCubit>()
                    .addRide(addRideBody: getAddRideBodyObject());
              },
              context: context,
              title: AppText(
                text: S.current.addNewRide,
                fontSize: 16.sp,
                color: AppColors.white,
              ),
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
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
      ),
    );
  }

  Widget getRegionalDetailsSection() => buildSection(
        context,
        [
          TextFieldDto(
            groupName: S.current.regionalDetails,
            fieldName: S.current.country,
            info: "Egypt",
            destination: Routes.countriesScreenRoute,
            leadingIcon: CupertinoIcons.globe,
            fieldType: FieldType.listTile,
            onChanged: (text) {},
          ),
          TextFieldDto(
            groupName: S.current.regionalDetails,
            fieldName: S.current.currency,
            info: "EGP",
            destination: Routes.currencyScreenRoute,
            leadingIcon: CupertinoIcons.money_dollar,
            fieldType: FieldType.listTile,
            onChanged: (text) {},
          ),
        ],
      );

  Widget getFuelSection() => buildSection(
        context,
        [
          TextFieldDto(
            groupName: S.current.fuel,
            fieldName: S.current.fuelType,
            info: getIt<UserRepository>().getSelectedFuelTypeName,
            destination: Routes.chooseFuelTypesScreen,
            leadingIcon: Icons.local_gas_station_outlined,
            fieldType: FieldType.listTile,
            onChanged: (text) {},
          ),
          TextFieldDto(
            groupName: S.current.fuel,
            fieldName: S.current.fuelUnits,
            info: "Liters",
            destination: Routes.multiSelectionScreenRoute,
            leadingIcon: CupertinoIcons.speedometer,
            fieldType: FieldType.listTile,
            onChanged: (text) {},
          ),
          TextFieldDto(
            groupName: S.current.fuel,
            fieldName: S.current.consumption,
            info: "Liters / 100 KM",
            leadingIcon: CupertinoIcons.speedometer,
            destination: Routes.multiSelectionScreenRoute,
            fieldType: FieldType.listTile,
            onChanged: (text) {},
          ),
        ],
      );

  Widget getMetricsSection() => buildSection(
        context,
        [
          TextFieldDto(
            groupName: S.current.metrics,
            fieldName: S.current.unit,
            info: getIt<UserRepository>().getSelectedMetricUnitName,
            destination: Routes.chooseMetricUnitsScreen,
            leadingIcon: CupertinoIcons.waveform,
            fieldType: FieldType.listTile,
            onChanged: (text) {},
          ),
          TextFieldDto(
            groupName: S.current.metrics,
            fieldName: S.current.odometer,
            info: S.current.odometer,
            leadingIcon: CupertinoIcons.speedometer,
            fieldType: FieldType.text,
            trailingWidget: Text(
              "km",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: fontSize,
                  fontWeight: FontWeight.normal),
            ),
            onChanged: (text) {},
          ),
        ],
      );

  Widget getManufacturerDetailsSection() => Directionality(
        textDirection:
            isArabicLocalization() ? TextDirection.rtl : TextDirection.ltr,
        child: buildSection(
          context,
          [
            TextFieldDto(
                groupName: S.current.manufacturingDetails,
                fieldName: S.current.type,
                info: getIt<UserRepository>().getSelectedRideType,
                leadingIcon: CupertinoIcons.equal_circle,
                fieldType: FieldType.listTile,
                onChanged: (text) {},
                destination: Routes.chooseRideTypeScreen,
                fieldNameEnum: FieldNameEnum.rideType),
            TextFieldDto(
              groupName: S.current.manufacturingDetails,
              fieldName: S.current.yearText,
              info: date.toString(),
              destination: Routes.multiSelectionScreenRoute,
              leadingIcon: CupertinoIcons.calendar,
              fieldType: FieldType.date,
              inputType: TextInputType.datetime,
              onChanged: (text) {},
            ),
            TextFieldDto(
              groupName: S.current.manufacturingDetails,
              fieldName: S.current.makeText,
              info: getIt<UserRepository>().getSelectedRideMakes,
              fieldType: FieldType.listTile,
              leadingIcon: CupertinoIcons.car,
              destination: Routes.chooseRideMakesScreen,
              fieldNameEnum: FieldNameEnum.rideName,
              onChanged: (text) {},
            ),
            TextFieldDto(
              groupName: S.current.manufacturingDetails,
              fieldName: S.current.modelText,
              info: getIt<UserRepository>().getSelectedRideModelName,
              destination: Routes.chooseRideModelsScreen,
              leadingIcon: CupertinoIcons.car_detailed,
              fieldType: FieldType.listTile,
              fieldNameEnum: FieldNameEnum.rideModel,
              onChanged: (text) {},
            ),
            TextFieldDto(
              groupName: S.current.manufacturingDetails,
              fieldName: S.current.trimText,
              info: "Comfort",
              fieldType: FieldType.listTile,
              leadingIcon: CupertinoIcons.car,
              fieldNameEnum: FieldNameEnum.rideCategory,
              destination: Routes.multiSelectionScreenRoute,
              onChanged: (text) {},
            ),
          ],
        ),
      );

  Widget getRegistrationDetailsSection() => buildSection(context, [
        TextFieldDto(
          groupName: S.current.registrationDetails,
          fieldName: S.current.registrationDetails,
          info: S.current.vin,
          onChanged: (text) {},
          fieldType: FieldType.text,
          inputType: TextInputType.text,
          leadingIcon: Icons.tag,
        ),
        TextFieldDto(
          groupName: S.current.registrationDetails,
          fieldName: S.current.licencePlate,
          info: S.current.licencePlateNumber,
          leadingIcon: CupertinoIcons.textformat_abc,
          fieldType: FieldType.text,
          inputType: TextInputType.text,
          onChanged: (text) {},
        ),
      ]);

  Widget getNameSection() => buildSection(context, [
        TextFieldDto(
            groupName: S.current.name,
            fieldName: S.current.name,
            info: S.current.required,
            onChanged: (text) {},
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
          fontSize: fontSize),
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

  Widget buildChoosingTile(BuildContext context, TextFieldDto fieldDto) {
    if (getIt<UserRepository>().getSelectedRideTypeId == -1) {
      if (fieldDto.fieldNameEnum == FieldNameEnum.rideType) {
        return getChoosingTile(context, fieldDto, false);
      } else {
        return getChoosingTile(context, fieldDto, true);
      }
    } else {
      return getChoosingTile(context, fieldDto, false);
    }
  }

  getChoosingTile(BuildContext context, TextFieldDto fieldDto, bool isDimmed) =>
      AbsorbPointer(
        absorbing: isDimmed,
        child: CupertinoListTile.notched(
          onTap: () async {
            if (fieldDto.destination != null) {
              var value =
                  await NamedNavigatorImpl().push(fieldDto.destination!);
              if (value != null) {
                setState(() {
                  fieldDto.onChanged(value);
                });
              }
            }
          },
          title: AppText(
            text: fieldDto.fieldName,
            fontSize: fontSize,
          ),
          additionalInfo: AppText(
            text: fieldDto.info,
            fontSize: fontSize,
            color: AppColors.greyColor,
          ),
          trailing: fieldDto.trailingWidget ??
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
              ),
          leading: Icon(
            fieldDto.leadingIcon,
            color: Theme.of(context).primaryColor,
          ),
        ),
      );

  showDateDialog() async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: AppText(
          text: S.current.selectYear,
          fontSize: fontSize,
        ),
        content: SizedBox(
          height: 300.h,
          width: 300.w,
          child: YearPicker(
            initialDate: initialDate,
            firstDate: DateTime(1900),
            lastDate: DateTime(3000),
            selectedDate: DateTime.now(),
            onChanged: (DateTime value) {
              setState(() {
                date = value.toString().split("-")[0];
              });
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }

  Widget buildDateTile(BuildContext context, TextFieldDto fieldDto) {
    return CupertinoListTile.notched(
      onTap: () {
        showDateDialog();
      },
      title: AppText(
        text: fieldDto.fieldName,
        fontSize: fontSize,
      ),
      additionalInfo: AppText(
        text: fieldDto.info,
        fontSize: fontSize,
        color: AppColors.greyColor,
      ),
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
      trailing: fieldDto.trailingWidget ??
          Icon(
            fieldDto.trailingIcon,
            color: Theme.of(context).primaryColor,
          ),
      title: CupertinoTextField(
        keyboardType: fieldDto.inputType,
        placeholder: fieldDto.info,
        style: TextStyle(fontSize: fontSize),
        decoration: const BoxDecoration(border: Border(right: BorderSide.none)),
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
        shape:
            BeveledRectangleBorder(borderRadius: BorderRadius.circular(corner)),
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

  getAddRideBodyObject() {
    return const AddRideBodyModel(
      registeredRideId: "64f19801-c1c2-4491-89a2-4ada10a12fc3",
      rideName: "registered ride name",
      rideImageUrl: "registered ride image url",
      rideVinNumber: "registered ride vin number",
      rideTypeId: 1,
      manufacturingYear: 2023,
      makeId: "64f19801-c1c2-4491-89a2-4ada10a12fc3",
      rideModelId: "64f19801-c1c2-4491-89a2-4ada10a12fc3",
      rideTrimId: "64f19801-c1c2-4491-89a2-4ada10a12fc3",
      metricUnitId: 1,
      odometer: 6765768,
      fuelTypeId: 1,
      fuelUnitId: 1,
      fuelConsumptionUnitTypeId: 1,
      countryId: 1,
      plateNumber: "plateNumber",
      currencyId: 1,
      notes: "notes",
    ).toJson();
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
  final FieldNameEnum? fieldNameEnum;

  TextFieldDto({
    required this.groupName,
    required this.fieldName,
    required this.info,
    required this.onChanged,
    required this.leadingIcon,
    this.trailingIcon,
    this.trailingWidget,
    this.destination,
    this.fieldNameEnum,
    this.inputType = TextInputType.text,
    this.fieldType = FieldType.text,
  });
}

enum FieldType { text, date, listTile }

enum FieldNameEnum { rideType, rideYear, rideName, rideModel, rideCategory }
