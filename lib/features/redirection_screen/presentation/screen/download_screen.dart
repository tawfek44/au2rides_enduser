import 'dart:async';

import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/app_routes/app_routes_names.dart';
import 'package:au2rides/core/network_state/network_state.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:au2rides/features/redirection_screen/domain/entity/country_entity.dart';
import 'package:au2rides/features/redirection_screen/presentation/bloc/country_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/app_circular_indicator.dart';
import '../../../../generated/l10n.dart';
import '../../data/models/country_model.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen(
      {super.key,
      required this.userRepository,
      this.tablesNames,
      required this.networkInfo});

  final UserRepository userRepository;
  final NetworkInfo networkInfo;
  final tablesNames;

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  void initState() {
    downloadPrimaryData();
    super.initState();
  }

  Future<void> downloadPrimaryData() async {
    if (await widget.networkInfo.isConnected) {
      for (var table in widget.tablesNames) {
        switch (table.tableName) {
          case countryTableName:
            await context
                .read<CountryCubit>()
                .clearCountriesInLocalDatabase(tableName: table.tableName);
            await context
                .read<CountryCubit>()
                .getAllCountries(lang: widget.userRepository.userLanguage);
            return;
        }
      }

      //update definitions table
      //update language table (isDownloaded)
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:
          isArabicLocalization() ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        body: BlocBuilder<CountryCubit, CountryState>(
          builder: (BuildContext context, state) {
            if (state is Loaded) {
              final response = state.countriesResponse.data
                  .cast<Map<String, dynamic>>()
                  .map((e) => CountryModel.fromJson(e))
                  .toList();
              saveCountriesInDatabase(response: response).then((value) {
                Au2ridesDatabase.instance.updateData(
                    tableName: languageTableName,
                    queryText: " SET is_downloaded = ? WHERE language_code = ?",
                    values: [1, widget.userRepository.userLanguage]);
                redirectToSplashScreen();
              });
              return createStateBlock();
            } else if (state is Error) {
              return Center(
                child: AppText(
                  text: S.current.wrongText,
                  fontSize: fontSize,
                ),
              );
            } else {
              return const Center(
                child: AppCircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }

  redirectToSplashScreen() {
    widget.userRepository.setFirstTimeOpenApp(false);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(const Duration(seconds: 5), () {
        //  NamedNavigatorImpl().push(Routes.splashScreenRoute,clean: true);
        NamedNavigatorImpl().push(Routes.loginScreenRoute, clean: true);
      });
    });
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
        ),
        Center(child: AppText(text: "[${S.current.downloadingText}]"))
      ],
    );
  }

  Future saveCountriesInDatabase({required response}) async {
    for (var element in response) {
      await context.read<CountryCubit>().saveCountriesInLocalDatabase(
          values: (element as CountryModel).toJson());
    }
  }
}
