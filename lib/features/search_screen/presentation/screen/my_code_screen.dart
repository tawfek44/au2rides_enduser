import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/styles/colors.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCodeScreen extends StatefulWidget {
  const MyCodeScreen({super.key});

  @override
  State<MyCodeScreen> createState() => _MyCodeScreenState();
}

class _MyCodeScreenState extends State<MyCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //gap(height: 120.h),
              getUpperContainer(),
              gap(height: 20.h),
              getShareMyCodeButton(),
              getSaveToGalleryButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget getUpperContainer() =>Column(
    children: [
      getUserImage(),
      SizedBox(
        width: double.infinity,
        child: getUserInfoCard()
      ),

    ],
  );

  Widget getUserInfoCard() =>Card(
    color: Colors.white,
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        children: [
          getUserName(),
          AppText(text: "+201535098065",fontSize: fontSize-1.sp,color: AppColors.greyColor,),
          //getUserRatingBar(itemSize: 25.w,ratingValue: 2.75),
          gap(height: 10.h),
          getUserQrCodeImage()
        ],
      ),
    ),
  );
  getUserName()=>AppText(
  text: "Ahmed Fahmy",
  fontWeight: FontWeight.bold,
  fontSize: fontSize,
  );



  getUserQrCodeImage() =>SizedBox(
    width: 150.w,
    child: Image.asset("images/qrcode.png"),
  );
  getUserImage()=>Container(
    decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1.w),
        borderRadius: BorderRadius.circular(70.w)),
    child: CircleAvatar(
      radius: 70.w,
      child: ClipRRect(
        child: Image.asset("images/user.png"),
      ),
    ),
  );

  getShareMyCodeButton() => TextButton.icon(
    // <-- TextButton
    onPressed: () {},
    icon: Icon(
      Icons.share,
      color: Theme.of(context).primaryColor,
    ),
    label: AppText(
      text: "Share my code",
      fontSize: fontSize,
      color: Theme.of(context).primaryColor,
    ),
  );

  getSaveToGalleryButton() =>TextButton.icon(
    // <-- TextButton
    onPressed: () {},
    icon: Icon(
      Icons.file_download_outlined,
      color: Theme.of(context).primaryColor,
    ),
    label: AppText(
      text: "Save to gallery",
      fontSize: fontSize,
      color: Theme.of(context).primaryColor,
    ),
  );
}
