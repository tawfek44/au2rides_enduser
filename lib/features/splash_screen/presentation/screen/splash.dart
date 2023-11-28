import 'dart:async';

import 'package:au2rides/core/network_state/network_state.dart';
import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/features/splash_screen/data/models/check_primary_data_body_model.dart';
import 'package:au2rides/features/splash_screen/presentation/bloc/check_primary_data_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_routes/app_routes.dart';
import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/constants/constants.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.networkInfo});
  final NetworkInfo networkInfo;
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool continueFlag = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkPrimaryData();

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

  checkPrimaryData() async {
    if(await widget.networkInfo.isConnected){
      var responseBody = await Au2ridesDatabase.instance.getAllDate(tableName: tableDefinitionsTableName);
      List<dynamic>list =  responseBody
          .cast<Map<String, dynamic>>()
          .map((e) => CheckPrimaryDataBodyModel.fromJson(e))
          .toList();
      final response = await context.read<CheckPrimaryDataCubit>().checkPrimaryData(values: list);
      var x= 4;
    }
    else{
      final isDownloaded  = await context.read<CheckPrimaryDataCubit>().isDownloaded();
      if(isDownloaded == true){
        setState(() {
          continueFlag = true;
          Timer(const Duration(seconds: 2), () {
            NamedNavigatorImpl().push(Routes.loginScreenRoute,clean: true);
          });
        });
      }
      else{
        setState(() {
          continueFlag = false;
        });
      }
    }
  }
}

