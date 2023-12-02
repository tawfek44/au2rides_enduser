import 'dart:async';
import 'dart:io';
import 'package:au2rides/env.dart';
import 'package:au2rides/features/redirection_screen/data/models/user_gender/user_gender_model.dart';
import 'package:au2rides/features/redirection_screen/data/models/weather_units_model/weather_units_model.dart';
import 'package:au2rides/features/redirection_screen/presentation/bloc/weather_units/weather_units_cubit.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/app_routes/app_routes_names.dart';
import 'package:au2rides/core/network_state/network_state.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:au2rides/features/redirection_screen/presentation/bloc/country_cubit/country_cubit.dart';
import 'package:au2rides/features/redirection_screen/presentation/bloc/gender_cubit/gender_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/storage/network/dio_client.dart';
import '../../../../generated/l10n.dart';
import '../../../splash_screen/data/models/check_primary_data_body_model.dart';
import '../../data/models/country/country_model.dart';
import '../../data/models/currency/currency_model.dart';
import '../bloc/currency_cubit/currency_cubit.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key,
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
  var connected = false;

  @override
  void initState() {
    downloadPrimaryData().then((value) {
      redirectToSplashScreen();
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  Future downloadPrimaryData() async {
    if (await widget.networkInfo.isConnected) {
      for (var table in widget.tablesNames) {
        switch (table.tableName) {
          case countryTableName:
            downloadPrimaryDataForCountryTable(table: table);
            break;
          case currencyTableName:
            downloadPrimaryDataForCurrencyTable(table: table);
            break;
          case userGenderTableName:
            downloadPrimaryDataForGenderTable(table: table);
            break;
          case weatherMeasuringUnitsTableName:
            downloadPrimaryDataForWeatherMeasuringUnitsTable(table: table);
            break;
        }
      }

      await context.read<CountryCubit>().updateUserLanguageTable(
          appLanguage: widget.userRepository.userLanguage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:
      isArabicLocalization() ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        body: createStateBlock(),
      ),
    );
  }

  redirectToSplashScreen() {
    //widget.userRepository.setFirstTimeOpenApp(false);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(const Duration(seconds: 3), () {
        NamedNavigatorImpl().push(Routes.splashScreenRoute);
        // NamedNavigatorImpl().push(Routes.loginScreenRoute, clean: true);
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

  downloadPrimaryDataForWeatherMeasuringUnitsTable({required table}) async {
    //TODO 1. clear weather units table in local db
    await context.read<WeatherUnitsCubit>().clearWeatherUnitsInLocalDatabase(
        tableName: table.tableName);
    //TODO 2. get weather units data  from network db
    await context.read<WeatherUnitsCubit>()
        .getWeatherUnitsDataFromNetworkDB(
        appLang: widget.userRepository.userLanguage, tableDefinitions: table)
        .then((value) async {
      await saveWeatherUnitsInDatabase(response: value);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  downloadPrimaryDataForGenderTable({required table}) async {
    //TODO 1.Clear user gender table
    await context
        .read<GenderCubit>()
        .clearGenderInLocalDatabase(tableName: table.tableName);
    //TODO 2.Download user gender data
    await context.read<GenderCubit>().getAllGenderFromNetworkDB(
        appLang: widget.userRepository.userLanguage,
        tableDefinitions: table).then((value) {
      //TODO 3.Save user gender data in local db
      saveGenderDataInLocalDb(table: table, response: value);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  Future saveWeatherUnitsInDatabase({required response}) async {
    for (var element in response) {
      await context.read<WeatherUnitsCubit>().saveWeatherUnitsDataInLocalDB(
          values: (element as WeatherUnitsModel).toJson(),
          tableName: weatherMeasuringUnitsTableName);
    }
  }

  Future saveCountriesInDatabase({required response}) async {
    for (var element in response) {
      await context.read<CountryCubit>().saveCountriesInLocalDatabase(
          values: (element as CountryModel).toJson());
    }
  }

  Future downloadPrimaryDataForCountryTable({required table}) async {
    //TODO 1. clear countries table in local db
    await context
        .read<CountryCubit>()
        .clearCountriesInLocalDatabase(tableName: table.tableName);
    //TODO 2. get countries table from network db
    await context
        .read<CountryCubit>()
        .getAllCountries(
        lang: widget.userRepository.userLanguage, tableDefinitions: table)
        .then((value) {
      //TODO 3. save new countries data in local db
      saveCountriesInDatabase(response: value);
    });

    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  Future downloadPrimaryDataForCurrencyTable({required table}) async {
    //TODO 1. clear currency table in local db
    await context
        .read<CurrencyCubit>()
        .clearCurrenciesInLocalDatabase(tableName: table.tableName);
    //TODO 2. get currency data from network db
    await context
        .read<CurrencyCubit>()
        .getAllCurrenciesFromNetworkDB(
        appLang: widget.userRepository.userLanguage,
        tableDefinitions: table)
        .then((value) async {
      //save currency in local DB
      //TODO 3. save currency data in local db
      await saveCurrenciesInLocalDb(response: value, table: table);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  saveCurrenciesInLocalDb({required response, required table}) async {
    for (var element in response) {
      final response = await context
          .read<CurrencyCubit>()
          .saveAllCurrenciesInLocalDB(
          tableName: table.tableName,
          values: (element as CurrencyModel).toJson());
    }
  }

  Future<void> saveGenderDataInLocalDb(
      {required response, required table}) async {
    for (var element in response) {
      final response = await context
          .read<GenderCubit>()
          .saveGenderDataInLocalDB(
          tableName: table.tableName,
          values: (element as UserGenderModel).toJson());
    }
  }
}
