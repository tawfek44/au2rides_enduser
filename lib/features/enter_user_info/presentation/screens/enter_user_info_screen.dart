import 'dart:io';

import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/styles/colors.dart';
import 'package:au2rides/core/utils/uploader.dart';
import 'package:au2rides/core/widgets/app_button.dart';
import 'package:au2rides/core/widgets/app_circular_indicator.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:au2rides/core/widgets/shared_text_field.dart';
import 'package:au2rides/features/enter_user_info/presentation/bloc/get_user_info_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart' as intl;

import '../../../../core/app_routes/app_routes.dart';
import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/widgets/app_snack_bar.dart';
import '../../../../generated/l10n.dart';

class EnterUserInfoScreen extends StatefulWidget {
  const EnterUserInfoScreen({super.key});

  @override
  State<EnterUserInfoScreen> createState() => _EnterUserInfoScreenState();
}

class _EnterUserInfoScreenState extends State<EnterUserInfoScreen> {
  late var _formKey;
  var  fileName = "";
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var genderText = "";
  var birthDateController = TextEditingController();
  String? selectedItem;
  DateTime nowDate = DateTime.now();
  DateTime selectedDate = DateTime.now();
  TimeOfDay dayTime = TimeOfDay.fromDateTime(DateTime.now());
  late DateTime tempDate;
  var dateFormat;
  var image;
  String birthDate = "";


  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    birthDateController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    context.read<GetUserInfoCubit>().getUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _formKey = GlobalKey<FormState>();
    return Directionality(
      textDirection:
          isArabicLocalization() ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(AppBar().preferredSize.height),
            child: getAppBar(
              context: context,
              title: AppText(
                text: S.current.completeYourProfile,
                fontSize: 15.sp,
                color: AppColors.white,
              ),
            )),
        body: BlocBuilder<GetUserInfoCubit, GetUserInfoState>(
          builder: (context, state) {
            if (state is LoadingGetUserInfoState) {
              return const Center(
                child: AppCircularProgressIndicator(),
              );
            } else if (state is LoadedGetUserInfoState) {
              firstNameController.text = state.response.firstName ?? "";
              lastNameController.text = state.response.lastName ?? "";
              emailController.text = state.response.email ?? "";
              birthDate = state.response.birthDate == ""
                  ? intl.DateFormat('dd-MM-yyyy').format(selectedDate)
                  : "";
              genderText = state.response.gender ?? "";
              return Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: ListView(
                    children: [
                      getUserPic(userId: state.response.userId),
                      getUserInfoSection(),
                      gap(height: 15.w),
                      getContinueButton()
                    ],
                  ),
                ),
              );
            } else if (state is ErrorGetUserInfoState) {
              return Center(
                child: AppText(
                  text: state.e["message"],
                  fontSize: fontSize,
                ),
              );
            } else {
              return Container();
            }
          },
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

  Widget getContinueButton() => AppButton(
        label: S.current.continueText,
        onPressed: () {

          if(genderText==""){
            var snackBar =
            AppSnackBar(text: S.current.genderTextIsNull, isSuccess: false, maxLines: 10);
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
           if (_formKey.currentState!.validate() && genderText!="") {
            NamedNavigatorImpl().push(Routes.bottomNavBarScreenRoute);
            _formKey.currentState!.save();
          }
        },
        height: 50.h,
        roundness: corner,
      );

  Widget getDateWidget() => InkWell(
      onTap: showDateDialog,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.lightGreyColor,
            borderRadius: BorderRadius.circular(5.w)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 5.h),
          child: AppText(
            text: birthDate,
            fontSize: fontSize,
          ),
        ),
      ));

  void showDateDialog() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1800),
        lastDate: DateTime(2101));
    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
        birthDate = intl.DateFormat('dd-MM-yyyy').format(selectedDate);
      });
    }
  }

  Widget getUserPic({required userId}) => Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 80.w,
                  backgroundImage: image == null
                      ? const AssetImage("images/user.png") as ImageProvider
                      : FileImage(image),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    radius: 25.w,
                    child: IconButton(
                      onPressed: () async {
                        var imgSource = await showImageSource(context: context);
                        if(imgSource == ImageSource.gallery){
                          await pickPhoto(ImageSource.gallery);
                        }
                        else if(imgSource == ImageSource.camera){
                          await pickPhoto(ImageSource.camera);
                        }
                         fileName = await uploadImageToAzure(image.path,userId);
                      },
                      icon: const Icon(Icons.camera_alt_outlined),
                      color: AppColors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );

  Widget getUserInfoSection() => CupertinoListSection.insetGrouped(
        header: AppText(
          text: S.current.userInfo,
          fontSize: 12.sp,
          color: AppColors.greyColor,
        ),
        margin: EdgeInsets.zero,
        children: [
          Column(
            children: [
              getUserInfoWidget(
                  textController: firstNameController,
                  hintText: S.current.firstName,
                  icon: CupertinoIcons.profile_circled,
                  birthdate: false,
                  gender: false),
              Divider(
                height: 0,
                indent: 55.w,
              ),
              getUserInfoWidget(
                  textController: lastNameController,
                  hintText: S.current.lastName,
                  icon: CupertinoIcons.profile_circled,
                  gender: false,
                  birthdate: false),
              Divider(
                height: 0,
                indent: 55.w,
              ),
              getUserInfoWidget(
                  textController: emailController,
                  hintText: S.current.email,
                  icon: Icons.email_outlined,
                  gender: false,
                  birthdate: false),
              Divider(
                height: 0,
                indent: 55.w,
              ),
              getUserInfoWidget(
                  hintText: S.current.gender,
                  icon: Icons.male,
                  gender: true,
                  birthdate: false),
              Divider(
                height: 0,
                indent: 55.w,
              ),
              getUserInfoWidget(
                  textController: birthDateController,
                  hintText: S.current.birthDate,
                  icon: CupertinoIcons.calendar,
                  gender: false,
                  birthdate: true),
            ],
          )
        ],
      );

  Widget getUserInfoWidget(
          {required hintText,
          textController,
          required icon,
          required bool gender,
          required bool birthdate}) =>
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (!gender && !birthdate)
              Icon(
                icon,
                color: Theme.of(context).primaryColor,
              ),
            if (gender) ...[
              Expanded(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      NamedNavigatorImpl().push(Routes.genderScreenRoute);
                    },
                    child: Row(
                      children: [
                        Icon(
                          icon,
                          color: Theme.of(context).primaryColor,
                        ),
                        getGenderWidget(),
                        const Spacer(),
                        AppText(
                          text: genderText,
                          fontSize: 13.sp,
                          color: AppColors.greyColor,
                        ),
                        const Icon(
                          CupertinoIcons.forward,
                          color: AppColors.greyColor,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ] else if (birthdate) ...[
              Expanded(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () async {
                      DateTime? date = await showDatePicker(
                        context: context,
                        initialDate: nowDate,
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100),
                      );
                      if (date == null) return;
                      setState(() {
                        nowDate = date;
                      });
                    },
                    child: Row(
                      children: [
                        Icon(
                          icon,
                          color: Theme.of(context).primaryColor,
                        ),
                        getBirthDateWidget(),
                        const Spacer(),
                        getDateWidget()
                      ],
                    ),
                  ),
                ),
              )
            ] else
              Expanded(
                child: SharedTextField(
                  hintText: hintText,
                  textController: textController,
                  inputType: TextInputType.text,
                  validator: (value){
                    if(textController == firstNameController){
                      if(textController.text == "")
                        {
                          return S.current.firstNameValidation;
                        }
                      else {
                        return null;
                      }
                    }
                    else if(textController == lastNameController){
                      if(textController.text == "")
                      {
                        return S.current.secondNameValidation;
                      }
                      else {
                        return null;
                      }
                    }
                  },
                ),
              ),
          ],
        ),
      );

  Widget getGenderWidget() => Padding(
        padding:
            EdgeInsets.only(left: 7.w, top: 15.h, bottom: 15.h, right: 7.w),
        child: AppText(
          text: S.current.gender,
          fontSize: 13.sp,
          color: AppColors.greyColor,
        ),
      );

  Widget getBirthDateWidget() => Padding(
        padding:
            EdgeInsets.only(left: 7.w, top: 15.h, bottom: 15.h, right: 7.w),
        child: AppText(
          text: S.current.birthDate,
          fontSize: 13.sp,
          color: AppColors.greyColor,
        ),
      );

  Widget getTextField(
          {required label,
          required textController,
          required inputType,
          validator,
          enabled,
          onTap}) =>
      SharedTextField(
          label: label,
          enabled: enabled,
          textController: textController,
          inputType: inputType,
          validator: validator,
          onTap: onTap);

  Future<ImageSource?> showImageSource({required context}) {
    if (Platform.isAndroid) {
      return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) =>Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: AppText(text: S.current.camera,fontSize: fontSize,),
              onTap: ()=>Navigator.of(context).pop(ImageSource.camera),
            ),
            ListTile(
              leading: const Icon(Icons.image),
              title: AppText(text: S.current.gallery,fontSize: fontSize,),
              onTap: ()=>Navigator.of(context).pop(ImageSource.gallery),
            ),
          ],
        )
      );
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
}
