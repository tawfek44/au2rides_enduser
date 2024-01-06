import 'dart:async';

import 'package:au2rides/core/dependancy_injection/injection.dart';
import 'package:au2rides/core/network_state/network_state.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:au2rides/features/splash_screen/data/models/check_primary_data_body_model.dart';
import 'package:au2rides/features/splash_screen/presentation/bloc/check_primary_data_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_routes/app_routes.dart';
import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/constants/constants.dart';
import '../../../../generated/l10n.dart';
import '../../../download_screen/presentation/bloc/authorize_cubit/authorize_cubit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen(
      {super.key, required this.networkInfo, required this.userRepository});

  final NetworkInfo networkInfo;
  final UserRepository userRepository;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool continueFlag = true;

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (getIt<UserRepository>().getUserToken != "") {
        await authorizeFun();
      }
        checkPrimaryData();

    });

    super.initState();
  }

  Future authorizeFun() async {
    if (await widget.networkInfo.isConnected) {
      await context.read<AuthorizeCubit>().authorize();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: continueFlag == false ? errorWidget() : createStateBlock(),
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        createLogo(context),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 80.w),
          child: const LinearProgressIndicator(),
        )
      ],
    );
  }

  checkPrimaryData() async {
    if (await widget.networkInfo.isConnected) {
      var responseBody = await Au2ridesDatabase.instance
          .getAllDate(tableName: tableDefinitionsTableName);
      List<dynamic> list = responseBody
          .cast<Map<String, dynamic>>()
          .map((e) => CheckPrimaryDataBodyModel.fromJson(e))
          .toList();
      context
          .read<CheckPrimaryDataCubit>()
          .checkPrimaryData(values: list)
          .then((value) {
        final response = value
            .cast<Map<String, dynamic>>()
            .map((e) => CheckPrimaryDataBodyModel.fromJson(e))
            .toList();
        if (response.length > 0) {
          NamedNavigatorImpl().push(Routes.downloadScreen, arguments: response);
        } else {
          Timer(const Duration(seconds: 2), () {
            widget.userRepository.setFirstTimeOpenApp(false);
            NamedNavigatorImpl().push(Routes.loginScreenRoute, clean: true);
          });
        }
      });
    } else {
      await context.read<CheckPrimaryDataCubit>().isDownloaded().then((value) {
        for (var langRow in value) {
          if (langRow["language_code"] == widget.userRepository.userLanguage &&
              langRow["is_downloaded"] == 1) {
            continueFlag = true;
            break;
          } else {
            continueFlag = false;
          }
        }
        if (continueFlag) {
          setState(() {
            Timer(const Duration(seconds: 2), () {
              widget.userRepository.setFirstTimeOpenApp(false);
              NamedNavigatorImpl().push(Routes.loginScreenRoute, clean: true);
            });
          });
        } else {
          setState(() {
            continueFlag = false;
          });
        }
      });
    }
  }
}
