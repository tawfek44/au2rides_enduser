import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/styles/colors.dart';
import 'package:au2rides/core/widgets/app_button.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:au2rides/core/widgets/shared_text_field.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../core/app_routes/app_routes_names.dart';

class EnterUserInfoScreen extends StatefulWidget {
  const EnterUserInfoScreen({super.key});

  @override
  State<EnterUserInfoScreen> createState() => _EnterUserInfoScreenState();
}

class _EnterUserInfoScreenState extends State<EnterUserInfoScreen> {
  late var _formKey;

  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var genderController = TextEditingController();
  var birthDateController = TextEditingController();
  String? selectedItem;
  DateTime nowDate= DateTime.now();

  @override
  Widget build(BuildContext context) {
    _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: AppText(
          text: "Register new account",
          fontSize: 15.sp,
          color: AppColors.white,
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView(
            children: [
              getUserPic(),
              getUserInfoSection(),
              gap(height: 15.w),
              AppButton(
                label: 'Continue',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                },
                height: 50.h,
                roundness: corner,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getUserPic() => Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 80.w,
                  child: const Image(
                    image: AssetImage("images/user.png"),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    radius: 25.w,
                    child: const Icon(
                      Icons.camera_alt_outlined,
                      color: AppColors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );

  Widget getUserInfoSection() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: "User Info",
            fontSize: 12.sp,
            color: AppColors.greyColor,
          ),
          gap(height: 10.h),
          Container(
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(corner))),
              child: Column(
                children: [
                  getUserInfoWidget(
                      textController: firstNameController,
                      hintText: "First Name",
                      icon: CupertinoIcons.profile_circled,
                      birthdate: false,
                      gender: false),
                  Divider(
                    height: 0,
                    indent: 55.w,
                  ),
                  getUserInfoWidget(
                    textController: lastNameController,
                    hintText: "Last Name",
                    icon: CupertinoIcons.profile_circled,
                    gender: false,
                    birthdate: false
                  ),
                  Divider(
                    height: 0,
                    indent: 55.w,
                  ),
                  getUserInfoWidget(
                    textController: emailController,
                    hintText: "Email",
                    icon: Icons.email_outlined,
                    gender: false,
                    birthdate: false
                  ),
                  Divider(
                    height: 0,
                    indent: 55.w,
                  ),
                  getUserInfoWidget(
                      textController: genderController,
                      hintText: "Gender",
                      icon: Icons.male,
                      gender: true,
                    birthdate: false
                  ),
                  Divider(
                    height: 0,
                    indent: 55.w,
                  ),
                  getUserInfoWidget(
                      textController: birthDateController,
                      hintText: "Birth Date",
                      icon: CupertinoIcons.calendar,
                      gender: false,
                    birthdate: true
                  ),
                ],
              )),
        ],
      );

  Widget getUserInfoWidget(
          {required hintText,
          required textController,
          required icon,
          required bool gender,
          required bool birthdate
          }) =>
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             if(!gender && !birthdate)
               Icon(
                 icon,
                 color: Theme.of(context).primaryColor,
               ),

            if (gender) ...[
              Expanded(
                child:
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: (){
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
                        AppText(text: "Male",fontSize: 13.sp,color: AppColors.greyColor,),
                        const Icon(CupertinoIcons.forward,color: AppColors.greyColor,)
                      ],
                    ),
                  ),
                ),
              ),

            ]
            else if(birthdate)...[
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
                      if(date == null)return;
                      setState(() {
                        nowDate=date;
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
                        AppText(text: DateFormat.yMMMEd().format(nowDate),fontSize: 13.sp,color: AppColors.greyColor,),
                      ],
                    ),
                  ),
                ),
              )
            ]
            else Expanded(
              child: SharedTextField(
                hintText: hintText,
                textController: textController,
                inputType: TextInputType.text,
              ),
            ),
          ],
        ),
      );
  Widget getGenderWidget()=>
      Padding(
    padding:  EdgeInsets.only(left: 7.w,top: 15.h,bottom: 15.h,right: 7.w),
    child: AppText(text: 'Gender',fontSize: 13.sp,color: AppColors.greyColor,),
  );
  Widget getBirthDateWidget()=>Padding(
    padding:  EdgeInsets.only(left: 7.w,top: 15.h,bottom: 15.h,right: 7.w),
    child: AppText(text: 'Birth Date',fontSize: 13.sp,color: AppColors.greyColor,),
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
}
