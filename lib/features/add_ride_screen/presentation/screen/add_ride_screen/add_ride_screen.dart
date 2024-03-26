import 'dart:io';

import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/dependancy_injection/injection.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/styles/colors.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:au2rides/features/add_ride_screen/data/models/add_ride_body/add_ride_body_model.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:uuid/uuid.dart';
import '../../../../../core/app_routes/app_routes.dart';
import '../../../../../core/app_routes/app_routes_names.dart';
import '../../../../../core/widgets/app_snack_bar.dart';
import '../../../../../generated/l10n.dart';
import 'package:intl/intl.dart' as intl;
import 'package:path/path.dart' as p;
import '../../bloc/add_ride_cubit.dart';

class AddRideScreen extends StatefulWidget {
  const AddRideScreen({super.key});

  @override
  State<AddRideScreen> createState() => _AddRideScreenState();
}

class _AddRideScreenState extends State<AddRideScreen> {
  var image;
  PlatformFile? selectedImage;
  var manufactureYear = DateTime.now().year.toString();
  DateTime initialDate = DateTime.now();
  String rideName = "";
  String rideVINNumber = "";
  String plateNumberText = "";
  int odometerReading = 0;
  var fileName = "";
  TextEditingController notesController = TextEditingController();

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
                var rideId = const Uuid().v4();
                var rideResponse = await addRide(
                    imagePath: image == null ? "" : image.path, rideId: rideId);
              },
              context: context,
              title: AppText(
                text: S.current.addNewRide,
                fontSize: 16.sp,
                color: AppColors.white,
              ),
            )),
        body: BlocBuilder<AddRideCubit, AddRideState>(
          builder: (context, state) {
            if (state is LoadingAddRideState) {
              return Center(
                child: LoadingAnimationWidget.discreteCircle(
                    color: Theme.of(context).primaryColor, size: 50.w),
              );
            } else {
              if(state is LoadedAddRideState){
                WidgetsBinding.instance.addPostFrameCallback((_) async {
                  var snackBar = AppSnackBar(
                      text: S.current.rideAddedSuccessfully, isSuccess: true, maxLines: 10);
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                });

              }
              else if(state is ErrorAddRideState){
                WidgetsBinding.instance.addPostFrameCallback((_) async {
                  var snackBar = AppSnackBar(
                      text: state.e.toString(), isSuccess: false, maxLines: 10);
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                });

              }
              return addRideScreen();
            }
          },
        ),
      ),
    );
  }

  Widget addRideScreen() => SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Column(
            children: [
              buildImageWidget(
                context: context,
                rideId: getIt<UserRepository>().getSelectedRideTypeId,
              ),
              getNameSection(),
              getRegistrationDetailsSection(),
              getManufacturerDetailsSection(),
              getMetricsSection(),
              getFuelSection(),
              getRegionalDetailsSection(),
              getNotesSection(context: context, controller: notesController),
            ],
          ),
        ),
      );

  Widget getRegionalDetailsSection() => buildSection(
        context,
        [
          TextFieldDto(
            groupName: S.current.regionalDetails,
            fieldName: S.current.country,
            info: getIt<UserRepository>().getSelectedCountry,
            destination: Routes.countriesScreenRoute,
            leadingIcon: CupertinoIcons.globe,
            fieldType: FieldType.listTile,
            onChanged: (text) {},
          ),
          TextFieldDto(
            groupName: S.current.regionalDetails,
            fieldName: S.current.currency,
            info: getIt<UserRepository>().getSelectedCurrencyName,
            destination: Routes.chooseCurrencyScreen,
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
            info: getIt<UserRepository>().getSelectedFuelUnitName,
            destination: Routes.chooseFuelUnitsScreen,
            leadingIcon: CupertinoIcons.speedometer,
            fieldType: FieldType.listTile,
            onChanged: (text) {},
          ),
          TextFieldDto(
            groupName: S.current.fuel,
            fieldName: S.current.consumption,
            info: getIt<UserRepository>().getSelectedFuelConsumptionUnitName,
            leadingIcon: CupertinoIcons.speedometer,
            destination: Routes.chooseRideFuelConsumptionUnitsScreen,
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
              S.current.km,
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
              info: manufactureYear.toString(),
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
              info: getIt<UserRepository>().getSelectedRideModelTrimsName,
              fieldType: FieldType.listTile,
              leadingIcon: CupertinoIcons.car,
              fieldNameEnum: FieldNameEnum.rideCategory,
              destination: Routes.chooseRideModelTrimScreen,
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
            maxLines: 1,
          ),
          additionalInfo: SizedBox(
            width: 150.w,
            child: AppText(
              textAlign: TextAlign.left,
              text: fieldDto.info,
              fontSize: fontSize,
              color: AppColors.greyColor,
              maxLines: 2,
            ),
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
                manufactureYear = value.toString().split("-")[0];
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
        onChanged: (value) {
          if (fieldDto.fieldName == S.current.name) {
            rideName = value;
          } else if (fieldDto.fieldName == S.current.registrationDetails) {
            rideVINNumber = value;
          } else if (fieldDto.fieldName == S.current.licencePlate) {
            plateNumberText = value;
          } else if (fieldDto.fieldName == S.current.unit) {
            odometerReading = int.parse(value);
          }
          fieldDto.onChanged(value);
        },
      ),
    );
  }

  Widget buildImageWidget({required BuildContext context, required rideId}) {
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
                onPressed: () async {
                  var imgSource = await showImageSource(context: context);
                  if (imgSource == ImageSource.gallery) {
                    await pickPhoto(ImageSource.gallery);
                  } else if (imgSource == ImageSource.camera) {
                    await pickPhoto(ImageSource.camera);
                  }
                  setState(() {});
                },
              ),
            ),
            if (image != null)
              InkWell(
                onTap: () async {
                  var imgSource = await showImageSource(context: context);
                  if (imgSource == ImageSource.gallery) {
                    await pickPhoto(ImageSource.gallery);
                  } else if (imgSource == ImageSource.camera) {
                    await pickPhoto(ImageSource.camera);
                  }
                },
                child: SizedBox(
                    width: double.infinity,
                    child: Image.file(
                      File(image.path),
                      fit: BoxFit.fitWidth,
                    )),
              )
          ],
        ),
      ),
    );
  }

  Future pickPhoto(ImageSource source) async {
    try {
      image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() {
        image = imageTemp;
      });
    } on PlatformException catch (e) {
      print(e);
    }
  }
  Future<ImageSource?> showImageSource({required context}) {
    if (Platform.isAndroid) {
      return showModalBottomSheet(
          context: context,
          builder: (BuildContext context) => Wrap(
                children: [
                  ListTile(
                    leading: const Icon(Icons.camera_alt),
                    title: AppText(
                      text: S.current.camera,
                      fontSize: fontSize,
                    ),
                    onTap: () => Navigator.of(context).pop(ImageSource.camera),
                  ),
                  ListTile(
                    leading: const Icon(Icons.image),
                    title: AppText(
                      text: S.current.gallery,
                      fontSize: fontSize,
                    ),
                    onTap: () => Navigator.of(context).pop(ImageSource.gallery),
                  ),
                ],
              ));
    } else {
      return showCupertinoModalPopup<ImageSource>(
          context: context,
          builder: (BuildContext context) => CupertinoActionSheet(
                actions: [
                  CupertinoActionSheetAction(
                    onPressed: () =>
                        Navigator.of(context).pop(ImageSource.camera),
                    child: AppText(
                      text: S.current.camera,
                      fontSize: fontSize,
                    ),
                  ),
                  CupertinoActionSheetAction(
                    onPressed: () =>
                        Navigator.of(context).pop(ImageSource.gallery),
                    child: AppText(
                      text: S.current.gallery,
                      fontSize: fontSize,
                    ),
                  ),
                ],
              ));
    }
  }

  Future addRide({required imagePath, required rideId}) async {
    return await context.read<AddRideCubit>().addRide(
        rideId: rideId,
        imagePath: imagePath,
        addRideBody: getAddRideBodyObject(
          registeredRideId: rideId,
          rideName: rideName,
          rideImageUrl: imagePath != ""?azureImagesUrl + rideId + p.extension(imagePath):"",
          rideVinNumber: rideVINNumber,
          rideTypeId: getIt<UserRepository>().getSelectedRideTypeId,
          manufacturingYear: int.parse(manufactureYear),
          makeId: getIt<UserRepository>().getSelectedRideMakeId,
          rideModelId: getIt<UserRepository>().getSelectedRideModelId,
          rideTrimId: getIt<UserRepository>().getSelectedRideModelTrimId,
          metricUnitId: getIt<UserRepository>().getSelectedMetricUnitId,
          odometer: odometerReading,
          fuelTypeId: getIt<UserRepository>().getSelectedFuelTypeId,
          fuelUnitId: getIt<UserRepository>().getSelectedFuelUnitId,
          fuelConsumptionUnitTypeId:
              getIt<UserRepository>().getSelectedFuelConsumptionTypeId,
          countryId: getIt<UserRepository>().getSelectedCountryId,
          plateNumber: plateNumberText,
          currencyId: getIt<UserRepository>().getSelectedCountryId,
          notes: notesController.text,
        ));
  }
}

getAddRideBodyObject({
  required registeredRideId,
  required rideName,
  required rideImageUrl,
  required rideVinNumber,
  required rideTypeId,
  required manufacturingYear,
  required makeId,
  required rideModelId,
  required rideTrimId,
  required metricUnitId,
  required odometer,
  required fuelTypeId,
  required fuelUnitId,
  required fuelConsumptionUnitTypeId,
  required countryId,
  required plateNumber,
  required currencyId,
  required notes,
}) {
  return AddRideBodyModel(
    registeredRideId: registeredRideId,
    rideName: rideName,
    rideImageUrl: rideImageUrl,
    rideVinNumber: rideVinNumber,
    rideTypeId: rideTypeId,
    manufacturingYear: manufacturingYear,
    makeId: makeId,
    rideModelId: rideModelId,
    rideTrimId: rideTrimId,
    metricUnitId: metricUnitId,
    odometer: odometer,
    fuelTypeId: fuelTypeId,
    fuelUnitId: fuelUnitId,
    fuelConsumptionUnitTypeId: fuelConsumptionUnitTypeId,
    countryId: countryId,
    plateNumber: plateNumber,
    currencyId: currencyId,
    notes: notes,
  ).toJson();
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
