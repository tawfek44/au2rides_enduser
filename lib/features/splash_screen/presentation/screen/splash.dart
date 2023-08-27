import 'dart:async';

import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_routes/app_routes_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   Timer(const Duration(seconds: 2), () {
     NamedNavigatorImpl().push(Routes.loginScreenRoute,clean: true);
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: createStateBlock(),
    );
  }

  Widget createLogo(BuildContext context) {
    return SizedBox(
      width: 150.w,
      height: 150.h,
      child: const Image(
        image: AssetImage("images/logo.png"),
      ),
    );
  }

  Widget createStateBlock() {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        createLogo(context),
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 20.h,horizontal: 80.w),
          child: const LinearProgressIndicator(),
        )
      ],
    );
  }
}
