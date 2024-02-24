import 'dart:io';

import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/styles/colors.dart';
import 'package:au2rides/core/utils/uploader.dart';
import 'package:au2rides/core/widgets/app_button.dart';
import 'package:au2rides/core/widgets/app_circular_indicator.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:au2rides/core/widgets/shared_text_field.dart';
import 'package:au2rides/features/enter_user_info/data/models/user/user_model.dart';
import 'package:au2rides/features/enter_user_info/presentation/bloc/add_user_to_server/update_user_data_cubit.dart';
import 'package:au2rides/features/enter_user_info/presentation/bloc/get_user_info_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart' as intl;

import '../../../../core/app_routes/app_routes.dart';
import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/dependancy_injection/injection.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/widgets/app_snack_bar.dart';
import '../../../../core/widgets/linear_progress_indicator.dart';
import '../../../../generated/l10n.dart';
import '../bloc/add_user_in_local_db/add_user_in_loca_db_cubit.dart';

class EnterUserInfoScreen extends StatefulWidget {
  const EnterUserInfoScreen({super.key});

  @override
  State<EnterUserInfoScreen> createState() => _EnterUserInfoScreenState();
}

class _EnterUserInfoScreenState extends State<EnterUserInfoScreen> {
  late var _formKey;
  var fileName = "";
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var genderText = "";
  var genderId;
  var birthDateController = TextEditingController();
  String? selectedItem;
  DateTime nowDate = DateTime.now();
  DateTime selectedDate = DateTime.now();
  TimeOfDay dayTime = TimeOfDay.fromDateTime(DateTime.now());
  late DateTime tempDate;
  var dateFormat;
  var image;
  String birthDate = "";
  String genderTextFromGenderScreen = "";
  bool enterUserDataLoading = false;

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
              firstNameController.text =
                  state.response.firstName ?? firstNameController.text;
              lastNameController.text =
                  state.response.lastName ?? lastNameController.text;
              emailController.text = state.response.email == null
                  ? emailController.text
                  : (state.response.email.emailAddress ?? emailController.text);
              birthDate = state.response.birthDate == ""
                  ? intl.DateFormat('dd-MM-yyyy').format(selectedDate)
                  : state.response.birthDate;
              genderText = state.response.gender == null
                  ? ""
                  : state.response.gender.genderName ?? "";
              genderId = state.response.gender == null
                  ? ""
                  : state.response.gender.genderId ?? -1;

              return Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: ListView(
                    children: [
                      getUserPic(
                          userId: state.response.userId,
                          imageUrl: state.response.profileImageUrl),
                      getUserInfoSection(),
                      gap(height: 15.w),
                      getContinueButton(
                          userId: state.response.userId,
                          response1: state.response),
                      enterUserDataLoading
                          ? const AppLinearProgressIndicator()
                          : Container(),
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

  Widget getContinueButton({required userId, required response1}) =>
      AppButton(
        label: S.current.continueText,
        onPressed: () async {
          if (getIt<UserRepository>().getSelectedGenderName == "" &&
              genderText == "") {
            var snackBar = AppSnackBar(
              text: S.current.genderTextIsNull,
              isSuccess: false,
              maxLines: 10,
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
          if (_formKey.currentState!.validate() &&
              getIt<UserRepository>().getSelectedGenderName != "" ||
              genderText != "") {
            _formKey.currentState!.save();
            setState(() {
              enterUserDataLoading = true;
            });
            final response = await context
                .read<UpdateUserDataCubit>()
                .updateUserDataInServer(
                birthDate: "${selectedDate.toString().split(' ')[0].split(
                    '-')[2]}-${selectedDate.toString().split(' ')[0].split(
                    '-')[1]}-${selectedDate.toString().split(' ')[0].split(
                    '-')[0]}",
                emailAddress: emailController.text,
                firstName: firstNameController.text,
                lastName: lastNameController.text,
                language: getIt<UserRepository>().getUserLanguage,
                genderId: getIt<UserRepository>().getSelectedGenderId == -1
                    ? genderId
                    : getIt<UserRepository>().getSelectedGenderId,
                registeredUserId: userId,
                profileImageUrl: fileName == ""
                    ? response1.profileImageUrl
                    : registeredUserProfileImageUrl + fileName);
            if (response is Failure) {
              var snackBar = AppSnackBar(
                  text: response.message, isSuccess: false, maxLines: 10);
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              setState(() {
                enterUserDataLoading = false;
              });
            } else {
              var userData = UserModel(
                  userId: userId,
                  firstName: firstNameController.text,
                  lastName: lastNameController.text,
                  emailAddress: emailController.text,
                  isVerified: response.email.isVerified == false ? 0 : 1,
                  profileImageUrl: response.profileImageUrl,
                  profileQrCode: response.profileQrCode,
                  countryId: response.country.countryId,
                  genderId: response.gender.genderId,
                  birthDate: birthDate,
                  mobileNumber: response.mobileNumber);
              final localDbResponse = await context
                  .read<AddUserToLocalDbCubit>()
                  .addUserToLocalDbInfo(
                userData: userData.toJson(),
              );
              if (localDbResponse > 0) {
                var snackBar = AppSnackBar(
                    text: S.current.userInfoAddedSuccessfully,
                    isSuccess: true,
                    maxLines: 10);

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                NamedNavigatorImpl()
                    .push(Routes.bottomNavBarScreenRoute, clean: true);
                getIt<UserRepository>().setLoggedInMark(true);
              } else {
                var snackBar = AppSnackBar(
                    text: S.current.thereIsAnErrorInGender,
                    isSuccess: false,
                    maxLines: 10);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
              setState(() {
                enterUserDataLoading = false;
              });
            }
          }
        },
        height: 50.h,
        roundness: corner,
      );

  Widget getDateWidget() =>
      InkWell(
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

  Widget getUserPic({required userId, required imageUrl}) =>
      Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Column(
          children: [
            Stack(
              children: [
                imageUrl == null
                    ? getLocalImage(image: image)
                    : getNetworkImage(imageUrl: imageUrl),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Theme
                        .of(context)
                        .primaryColor,
                    radius: 25.w,
                    child: IconButton(
                      onPressed: () async {
                        var imgSource = await showImageSource(context: context);
                        if (imgSource == ImageSource.gallery) {
                          await pickPhoto(ImageSource.gallery);
                        } else if (imgSource == ImageSource.camera) {
                          await pickPhoto(ImageSource.camera);
                        }
                        fileName = await uploadImageToAzure(image.path, userId);
                        setState(() {});
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

  Widget getUserInfoSection() =>
      CupertinoListSection.insetGrouped(
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

  Widget getUserInfoWidget({required hintText,
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
                color: Theme
                    .of(context)
                    .primaryColor,
              ),
            if (gender) ...[
              Expanded(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () async {
                      genderTextFromGenderScreen = await NamedNavigatorImpl()
                          .push(Routes.genderScreenRoute);
                      setState(() {});
                    },
                    child: Row(
                      children: [
                        Icon(
                          icon,
                          color: Theme
                              .of(context)
                              .primaryColor,
                        ),
                        getGenderWidget(),
                        const Spacer(),
                        AppText(
                          text: getGender(),
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
            ] else
              if (birthdate) ...[
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
                            color: Theme
                                .of(context)
                                .primaryColor,
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
                    validator: (value) {
                      if (textController == firstNameController) {
                        if (textController.text == "") {
                          return S.current.firstNameValidation;
                        } else {
                          return null;
                        }
                      } else if (textController == lastNameController) {
                        if (textController.text == "") {
                          return S.current.secondNameValidation;
                        } else {
                          return null;
                        }
                      }
                    },
                  ),
                ),
          ],
        ),
      );

  Widget getGenderWidget() =>
      Padding(
        padding:
        EdgeInsets.only(left: 7.w, top: 15.h, bottom: 15.h, right: 7.w),
        child: AppText(
          text: S.current.gender,
          fontSize: fontSize,
        ),
      );

  getGender() {
    if(genderTextFromGenderScreen=="") {
      if (getIt<UserRepository>().getSelectedGenderName == "") {
        return genderText;
      }
      else {
        return getIt<UserRepository>().getSelectedGenderName;
      }
    }
    else{
      return genderTextFromGenderScreen;
    }
  }

  Widget getBirthDateWidget() =>
      Padding(
        padding:
        EdgeInsets.only(left: 7.w, top: 15.h, bottom: 15.h, right: 7.w),
        child: AppText(
          text: S.current.birthDate,
          fontSize: fontSize,
        ),
      );

  Widget getTextField({required label,
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
          builder: (BuildContext context) =>
              Wrap(
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
          builder: (BuildContext context) =>
              CupertinoActionSheet(
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

  getNetworkImage({required imageUrl}) =>
      CachedNetworkImage(
        fit: BoxFit.fill,
        imageBuilder: (context, imageProvider) =>
            Container(
              height: 150.h,
              width: 150.w,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(500)),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
        imageUrl: imageUrl,
      );

  getLocalImage({required image}) =>
      CircleAvatar(
        radius: 60.w,
        backgroundImage: image == null
            ? const AssetImage("images/user.png") as ImageProvider
            : FileImage(image),
      );
}
