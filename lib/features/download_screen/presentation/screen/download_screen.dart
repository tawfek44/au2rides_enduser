import 'dart:async';
import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/app_routes/app_routes_names.dart';
import 'package:au2rides/core/network_state/network_state.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:au2rides/features/download_screen/data/models/acquisition_types/acquisition_types_model.dart';
import 'package:au2rides/features/download_screen/data/models/department_service_items/department_service_items_model.dart';
import 'package:au2rides/features/download_screen/data/models/engine_fuel_types/engine_fuel_types_model.dart';
import 'package:au2rides/features/download_screen/data/models/engine_transmission_types/engine_transmission_types_model.dart';
import 'package:au2rides/features/download_screen/data/models/fuel_brands/fuel_brands_model.dart';
import 'package:au2rides/features/download_screen/data/models/fuel_consumption_unit_types/fuel_consumption_unit_types_model.dart';
import 'package:au2rides/features/download_screen/data/models/fuel_octane_number/fuel_octane_number_model.dart';
import 'package:au2rides/features/download_screen/data/models/metric_units/metric_units_model.dart';
import 'package:au2rides/features/download_screen/data/models/month/month_model.dart';
import 'package:au2rides/features/download_screen/data/models/payment_methods/payment_methods_model.dart';
import 'package:au2rides/features/download_screen/data/models/pressure_units/pressure_units_model.dart';
import 'package:au2rides/features/download_screen/data/models/recurrence_period_types/recurrence_period_types_model.dart';
import 'package:au2rides/features/download_screen/data/models/reminder_type_service_types/reminder_type_service_model.dart';
import 'package:au2rides/features/download_screen/data/models/reminder_types/reminder_types_model.dart';
import 'package:au2rides/features/download_screen/data/models/service_types/service_types_model.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/acquisition_types_cubit/acquisition_types_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/department_service_items_cubit/department_service_items_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/engine_fuel_types_cubit/engine_fuel_types_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/engine_transmission_types_cubit/engine_transmission_types_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_octane_number_cubit/fuel_octane_number_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/metric_untis_cubit/metric_units_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/month_cubit/month_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/payment_methods/payment_methods_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/pressure_units_cubit/pressure_units_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/recurrence_period_types_cubit/recurrence_period_types_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_type_service_cubit/reminder_type_service_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_types_cubit/reminder_types_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/service_departments_cubit/service_departments_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/service_types_cubit/service_types_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/constants.dart';
import '../../../../generated/l10n.dart';
import '../../data/models/country/country_model.dart';
import '../../data/models/currency/currency_model.dart';
import '../../data/models/ride_types/ride_types_model.dart';
import '../../data/models/services_departments/service_departments_model.dart';
import '../../data/models/user_gender/user_gender_model.dart';
import '../../data/models/weather_units_model/weather_units_model.dart';
import '../bloc/country_cubit/country_cubit.dart';
import '../bloc/currency_cubit/currency_cubit.dart';
import '../bloc/fuel_brands_cubit/fuel_brands_cubit.dart';
import '../bloc/fuel_consumption_unit_types_cubit/fuel_consumption_unit_types_cubit.dart';
import '../bloc/gender_cubit/gender_cubit.dart';
import '../bloc/ride_types/ride_types_cubit.dart';
import '../bloc/weather_units/weather_units_cubit.dart';

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
            await downloadPrimaryDataForCountryTable(table: table);
            break;
          case currencyTableName:
            await downloadPrimaryDataForCurrencyTable(table: table);
            break;
          case userGenderTableName:
            await downloadPrimaryDataForGenderTable(table: table);
            break;
          case weatherMeasuringUnitsTableName:
            await downloadPrimaryDataForWeatherMeasuringUnitsTable(table: table);
            break;
          case rideTypesTableName:
            await downloadPrimaryDataForRideTypesTable(table: table);
            break;
          case paymentMethodTableName:
            await  downloadPrimaryDataForPaymentMethodsTable(table: table);
            break;
          case monthTableName:
            await downloadPrimaryDataForMonthsTable(table: table);
            break;
          case pressureUnitsTableName:
            await downloadPrimaryDataForPressureUnitsTable(table: table);
            break;
          case acquisitionTypesTableName:
            await downloadPrimaryDataForAcquisitionTypesTable(table: table);
            break;
          case metricUnitsTableName:
            await downloadPrimaryDataForMetricUnitsTable(table: table);
            break;
          case engineTransmissionTypes:
            await downloadPrimaryDataForEngineTransmissionTypesTable(table: table);
            break;
          case engineFuelTypes:
            await downloadPrimaryDataForEngineFuelTypesTable(table: table);
            break;
          case reminderTypesTableName:
            await downloadPrimaryDataForReminderTypesTable(table: table);
            break;
          case recurrencePeriodTypesTableName:
            await downloadPrimaryDataForRecurrencePeriodTypesTable(table: table);
            break;
          case reminderTypeServicesTableName:
            await downloadPrimaryDataForReminderTypeServiceTable(table: table);
            break;
          case fuelBrandsTableName:
            await downloadPrimaryDataForFuelBrandsTable(table: table);
            break;
          case fuelConsumptionUnitTypesTableName:
            await downloadPrimaryDataForFuelConsumptionUnitTypesTable(table: table);
            break;
          case servicesDepartmentsTableName:
            await downloadPrimaryDataForServiceDepartmentsTable(table: table);
            break;
          case servicesTypesTableName:
            await downloadPrimaryDataForServiceTypesTable(table: table);
            break;
          case fuelOctaneNumbersTableName:
            await downloadPrimaryDataForFuelOctaneNumbersTable(table: table);
            break;
          case departmentServiceItemsTableName:
            await downloadPrimaryDataForDepartmentServiceItemsTable(table: table);
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
      Timer(const Duration(seconds: 6), () {
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

  downloadPrimaryDataForPressureUnitsTable({required table}) async {
    //TODO 1. clear ride types table in local db
    await context.read<PressureUnitsCubit>().clearPressureUnitsInLocalDatabase(
        tableName: table.tableName, languageId: table.languageId);
    //TODO 2. get ride types data from network db
    await context
        .read<PressureUnitsCubit>()
        .getAllPressureUnitsData(
            lang: widget.userRepository.userLanguage, tableDefinitions: table)
        .then((value) async {
      //TODO 3. save ride types  data  in local db
      savePressureUnitsInDatabase(response: value, table: table);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  downloadPrimaryDataForRideTypesTable({required table}) async {
    //TODO 1. clear ride types table in local db
    await context.read<RideTypesCubit>().clearRideTypesInLocalDatabase(
        tableName: table.tableName, languageId: table.languageId);
    //TODO 2. get ride types data from network db
    await context
        .read<RideTypesCubit>()
        .getRideTypesFromNetworkDB(
            appLang: widget.userRepository.userLanguage,
            tableDefinitions: table)
        .then((value) async {
      //TODO 3. save ride types  data  in local db
      saveRideTypesInDatabase(response: value);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  downloadPrimaryDataForWeatherMeasuringUnitsTable({required table}) async {
    //TODO 1. clear weather units table in local db
    await context.read<WeatherUnitsCubit>().clearWeatherUnitsInLocalDatabase(
        tableName: table.tableName, languageId: table.languageId);
    //TODO 2. get weather units data  from network db
    await context
        .read<WeatherUnitsCubit>()
        .getWeatherUnitsDataFromNetworkDB(
            appLang: widget.userRepository.userLanguage,
            tableDefinitions: table)
        .then((value) async {
      //TODO 3. save weather units data  in local db
      await saveWeatherUnitsInDatabase(response: value);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  downloadPrimaryDataForGenderTable({required table}) async {
    //TODO 1.Clear user gender table
    await context.read<GenderCubit>().clearGenderInLocalDatabase(
        tableName: table.tableName, languageId: table.languageId);
    //TODO 2.Download user gender data
    await context
        .read<GenderCubit>()
        .getAllGenderFromNetworkDB(
            appLang: widget.userRepository.userLanguage,
            tableDefinitions: table)
        .then((value) {
      //TODO 3.Save user gender data in local db
      saveGenderDataInLocalDb(table: table, response: value);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  Future saveRideTypesInDatabase({required response}) async {
    for (var element in response) {
      await context.read<RideTypesCubit>().saveRideTypesDataInLocalDB(
          values: (element as RideTypesModel).toJson(),
          tableName: rideTypesTableName);
    }
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
    await context.read<CountryCubit>().clearCountriesInLocalDatabase(
        tableName: table.tableName, languageId: table.languageId);
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
    await context.read<CurrencyCubit>().clearCurrenciesInLocalDatabase(
        tableName: table.tableName, languageId: table.languageId);
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

  Future<void> downloadPrimaryDataForPaymentMethodsTable(
      {required table}) async {
    //TODO 1. clear payment methods table in local db
    await context
        .read<PaymentMethodsCubit>()
        .clearPaymentMethodsInLocalDatabase(
            tableName: table.tableName, languageId: table.languageId);
    //TODO 2. get payment methods data from network db
    await context
        .read<PaymentMethodsCubit>()
        .getPaymentMethodsFromNetworkDB(
            appLang: widget.userRepository.userLanguage,
            tableDefinitions: table)
        .then((value) async {
      //TODO 3. save payment methods data in local db
      await savePaymentMethodsInLocalDb(response: value, table: table);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  Future<void> savePaymentMethodsInLocalDb(
      {required response, required table}) async {
    for (var element in response) {
      await context.read<GenderCubit>().saveGenderDataInLocalDB(
          tableName: table.tableName,
          values: (element as PaymentMethodsModel).toJson());
    }
  }

  Future<void> downloadPrimaryDataForMonthsTable({required table}) async {
    //TODO 1. clear months table in local db
    await context.read<MonthCubit>().clearCountriesInLocalDatabase(
        tableName: table.tableName, languageId: table.languageId);
    //TODO 2. get months data from network db
    await context
        .read<MonthCubit>()
        .getAllMonths(
            tableDefinitions: table, lang: widget.userRepository.userLanguage)
        .then((value) async {
      //TODO 3. save months data in local db
      await saveMonthsInLocalDb(response: value, table: table);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  Future<void> saveMonthsInLocalDb({required response, required table}) async {
    for (var element in response) {
      await context.read<MonthCubit>().saveMonthInLocalDatabase(
          tableName: table.tableName, values: (element as MonthModel).toJson());
    }
  }

  Future<void> savePressureUnitsInDatabase(
      {required response, required table}) async {
    for (var element in response) {
      await context.read<PressureUnitsCubit>().savePressureUnitsInLocalDatabase(
          tableName: table.tableName,
          values: (element as PressureUnitsModel).toJson());
    }
  }

  downloadPrimaryDataForAcquisitionTypesTable({required table}) async {
    //TODO 1. clear acquisition types table in local db
    await context
        .read<AcquisitionTypesCubit>()
        .clearAcquisitionTypesInLocalDatabase(
            tableName: table.tableName, languageId: table.languageId);
    //TODO 2. get acquisition types data from network db
    await context
        .read<AcquisitionTypesCubit>()
        .getAllAcquisitionTypesFromNetworkDB(
            tableDefinitions: table,
            appLang: widget.userRepository.userLanguage)
        .then((value) async {
      //TODO 3. save acquisition types data in local db
      await saveAcquisitionTypesInLocalDb(response: value, table: table);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  Future<void> saveAcquisitionTypesInLocalDb(
      {required response, required table}) async {
    for (var element in response) {
      await context
          .read<AcquisitionTypesCubit>()
          .saveAllAcquisitionTypesInLocalDB(
              tableName: table.tableName,
              values: (element as AcquisitionTypesModel).toJson());
    }
  }

  Future<void> downloadPrimaryDataForMetricUnitsTable({required table}) async {
    //TODO 1. clear metric units table in local db
    await context.read<MetricUnitsCubit>().clearMetricUnitsInLocalDatabase(
        tableName: table.tableName, languageId: table.languageId);
    //TODO 2. get metric units data from network db
    await context
        .read<MetricUnitsCubit>()
        .getAllMetricUnitsFromNetworkDB(
            tableDefinitions: table,
            appLang: widget.userRepository.userLanguage)
        .then((value) async {
      //TODO 3. save metric units data in local db
      await saveMetricUnitsInLocalDb(response: value, table: table);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  saveMetricUnitsInLocalDb({required response, required table}) async {
    for (var element in response) {
      await context.read<MetricUnitsCubit>().saveAllMetricUnitsInLocalDB(
          tableName: table.tableName,
          values: (element as MetricUnitsModel).toJson());
    }
  }

  Future<void> downloadPrimaryDataForEngineTransmissionTypesTable(
      {required table}) async {
    //TODO 1. clear EngineTransmissionTypes table in local db
    await context
        .read<EngineTransmissionTypesCubit>()
        .clearEngineTransmissionTypesInLocalDatabase(
            tableName: table.tableName, languageId: table.languageId);
    //TODO 2. get EngineTransmissionTypes data from network db
    await context
        .read<EngineTransmissionTypesCubit>()
        .getAllEngineTransmissionTypesFromNetworkDB(
            tableDefinitions: table,
            appLang: widget.userRepository.userLanguage)
        .then((value) async {
      //TODO 3. save EngineTransmissionTypes data in local db
      await saveEngineTransmissionTypesInLocalDb(response: value, table: table);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  saveEngineTransmissionTypesInLocalDb(
      {required response, required table}) async {
    for (var element in response) {
      await context
          .read<EngineTransmissionTypesCubit>()
          .saveAllEngineTransmissionTypesInLocalDB(
              tableName: table.tableName,
              values: (element as EngineTransmissionTypesModel).toJson());
    }
  }

  Future<void> downloadPrimaryDataForEngineFuelTypesTable(
      {required table}) async {
    //TODO 1. clear EngineFuelTypes table in local db
    await context
        .read<EngineFuelTypesCubit>()
        .clearEngineFuelTypesInLocalDatabase(
            tableName: table.tableName, languageId: table.languageId);
    //TODO 2. get EngineFuelTypes data from network db
    await context
        .read<EngineFuelTypesCubit>()
        .getAllEngineFuelTypesFromNetworkDB(
            tableDefinitions: table,
            appLang: widget.userRepository.userLanguage)
        .then((value) async {
      //TODO 3. save EngineFuelTypes data in local db
      await saveEngineFuelTypesInLocalDb(response: value, table: table);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  saveEngineFuelTypesInLocalDb({required response, required table}) async {
    for (var element in response) {
      await context
          .read<EngineFuelTypesCubit>()
          .saveAllEngineFuelTypesInLocalDB(
              tableName: table.tableName,
              values: (element as EngineFuelTypesModel).toJson());
    }
  }

  Future<void> downloadPrimaryDataForReminderTypesTable(
      {required table}) async {
    //TODO 1. clear ReminderTypes table in local db
    await context.read<ReminderTypesCubit>().clearReminderTypesInLocalDatabase(
        tableName: table.tableName, languageId: table.languageId);
    //TODO 2. get ReminderTypes data from network db
    await context
        .read<ReminderTypesCubit>()
        .getAllReminderTypes(
            tableDefinitions: table, lang: widget.userRepository.userLanguage)
        .then((value) async {
      //TODO 3. save EngineFuelTypes data in local db
      await saveReminderTypesInLocalDb(response: value, table: table);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  saveReminderTypesInLocalDb({required response, required table}) async {
    for (var element in response) {
      await context.read<ReminderTypesCubit>().saveReminderTypesInLocalDatabase(
          tableName: table.tableName,
          values: (element as ReminderTypesModel).toJson());
    }
  }

  Future<void> downloadPrimaryDataForRecurrencePeriodTypesTable(
      {required table}) async {
    //TODO 1. clear RecurrencePeriodTypes table in local db
    await context
        .read<RecurrencePeriodTypesCubit>()
        .clearRecurrencePeriodTypesInLocalDatabase(
            tableName: table.tableName, languageId: table.languageId);
    //TODO 2. get RecurrencePeriodTypes data from network db
    await context
        .read<RecurrencePeriodTypesCubit>()
        .getAllRecurrencePeriodTypesFromNetworkDB(
            tableDefinitions: table,
            appLang: widget.userRepository.userLanguage)
        .then((value) async {
      //TODO 3. save RecurrencePeriodTypes data in local db
      await saveRecurrencePeriodTypesInLocalDb(response: value, table: table);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  saveRecurrencePeriodTypesInLocalDb(
      {required response, required table}) async {
    for (var element in response) {
      await context
          .read<RecurrencePeriodTypesCubit>()
          .saveAllRecurrencePeriodTypesInLocalDB(
              tableName: table.tableName,
              values: (element as RecurrencePeriodTypesModel).toJson());
    }
  }

  Future<void> downloadPrimaryDataForReminderTypeServiceTable(
      {required table}) async {
    //TODO 1. clear ReminderTypeService table in local db
    await context
        .read<ReminderTypeServiceCubit>()
        .clearReminderTypeServiceInLocalDatabase(
            tableName: table.tableName, languageId: table.languageId);
    //TODO 2. get RecurrencePeriodTypes data from network db
    await context
        .read<ReminderTypeServiceCubit>()
        .getAllReminderTypeServiceFromNetworkDB(
            tableDefinitions: table,
            appLang: widget.userRepository.userLanguage)
        .then((value) async {
      //TODO 3. save RecurrencePeriodTypes data in local db
      await saveReminderTypeServiceInLocalDb(response: value, table: table);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  saveReminderTypeServiceInLocalDb({required response, required table}) async {
    for (var element in response) {
      await context
          .read<ReminderTypeServiceCubit>()
          .saveAllReminderTypeServiceInLocalDB(
              tableName: table.tableName,
              values: (element as ReminderTypeServiceModel ).toJson());
    }
  }

  Future<void> downloadPrimaryDataForFuelBrandsTable({required table}) async {
    //TODO 1. clear FuelBrands table in local db
    await context
        .read<FuelBrandsCubit>()
        .clearFuelBrandsInLocalDatabase(
        tableName: table.tableName, languageId: table.languageId);
    //TODO 2. get FuelBrands data from network db
    await context
        .read<FuelBrandsCubit>()
        .getAllAcquisitionTypesFromNetworkDB(
        tableDefinitions: table,
        appLang: widget.userRepository.userLanguage)
        .then((value) async {
      //TODO 3. save FuelBrands data in local db
      await saveFuelBrandsInLocalDb(response: value, table: table);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  saveFuelBrandsInLocalDb({required response, required table}) async {
    for (var element in response) {
      await context
          .read<FuelBrandsCubit>()
          .saveAllAcquisitionTypesInLocalDB(
          tableName: table.tableName,
          values: (element as FuelBrandsModel ).toJson());
    }
  }

  Future<void> downloadPrimaryDataForFuelConsumptionUnitTypesTable({required table}) async {
    //TODO 1. clear FuelConsumptionUnitTypes table in local db
    await context
        .read<FuelConsumptionUnitTypesCubit>()
        .clearFuelConsumptionUnitTypesInLocalDatabase(
        tableName: table.tableName, languageId: table.languageId);
    //TODO 2. get FuelConsumptionUnitTypes data from network db
    await context
        .read<FuelConsumptionUnitTypesCubit>()
        .getAllFuelConsumptionUnitTypesFromNetworkDB(
        tableDefinitions: table,
        appLang: widget.userRepository.userLanguage)
        .then((value) async {
      //TODO 3. save FuelConsumptionUnitTypes data in local db
      await saveFuelConsumptionUnitTypesInLocalDb(response: value, table: table);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  saveFuelConsumptionUnitTypesInLocalDb({required response, required table}) async {
    for (var element in response) {
      await context
          .read<FuelConsumptionUnitTypesCubit>()
          .saveAllFuelConsumptionUnitTypesInLocalDB(
          tableName: table.tableName,
          values: (element as FuelConsumptionUnitTypesModel ).toJson());
    }
  }

  downloadPrimaryDataForServiceDepartmentsTable({required table}) async {
    //TODO 1. clear ServiceDepartments table in local db
    await context
        .read<ServiceDepartmentsCubit>()
        .clearServiceDepartmentsInLocalDatabase(
        tableName: table.tableName, languageId: table.languageId);
    //TODO 2. get ServiceDepartments data from network db
    await context
        .read<ServiceDepartmentsCubit>()
        .getAllServiceDepartmentsFromNetworkDB(
        tableDefinitions: table,
        appLang: widget.userRepository.userLanguage)
        .then((value) async {
      //TODO 3. save ServiceDepartments data in local db
      await saveServiceDepartmentsInLocalDb(response: value, table: table);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  saveServiceDepartmentsInLocalDb({required response, required table}) async {
    for (var element in response) {
      await context
          .read<ServiceDepartmentsCubit>()
          .saveAllServiceDepartmentsInLocalDB(
          tableName: table.tableName,
          values: (element as ServiceDepartmentsModel ).toJson());
    }
  }

  downloadPrimaryDataForServiceTypesTable({required table}) async {
    //TODO 1. clear ServiceTypes table in local db
    await context
        .read<ServiceTypesCubit>()
        .clearServiceTypesInLocalDatabase(
        tableName: table.tableName, languageId: table.languageId);
    //TODO 2. get ServiceTypes data from network db
    await context
        .read<ServiceTypesCubit>()
        .getAllServiceTypesFromNetworkDB(
        tableDefinitions: table,
        appLang: widget.userRepository.userLanguage)
        .then((value) async {
      //TODO 3. save ServiceTypes data in local db
      await saveServiceTypesInLocalDb(response: value, table: table);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  saveServiceTypesInLocalDb({required response, required table}) async {
    for (var element in response) {
      await context
          .read<ServiceTypesCubit>()
          .saveAllServiceTypesInLocalDB(
          tableName: table.tableName,
          values: (element as ServiceTypesModel ).toJson());
    }
  }

  downloadPrimaryDataForFuelOctaneNumbersTable({required table}) async {
    //TODO 1. clear FuelOctaneNumbers table in local db
    await context
        .read<FuelOctaneNumberCubit>()
        .clearFuelOctaneNumberInLocalDatabase(
        tableName: table.tableName, languageId: table.languageId);
    //TODO 2. get FuelOctaneNumbers data from network db
    await context
        .read<FuelOctaneNumberCubit>()
        .getAllFuelOctaneNumberFromNetworkDB(
        tableDefinitions: table,
        appLang: widget.userRepository.userLanguage)
        .then((value) async {
      //TODO 3. save FuelOctaneNumbers data in local db
      await saveFuelOctaneNumberInLocalDb(response: value, table: table);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);
  }

  saveFuelOctaneNumberInLocalDb({required response, required table}) async {
    for (var element in response) {
      await context
          .read<FuelOctaneNumberCubit>()
          .saveAllFuelOctaneNumberInLocalDB(
          tableName: table.tableName,
          values: (element as FuelOctaneNumberModel ).toJson());
    }
  }

  downloadPrimaryDataForDepartmentServiceItemsTable({required table}) async {
    //TODO 1. clear DepartmentService table in local db
    await context
        .read<DepartmentServiceItemsCubit>()
        .clearAcquisitionTypesInLocalDatabase(
        tableName: table.tableName, languageId: table.languageId);
    //TODO 2. get DepartmentService data from network db
    await context
        .read<DepartmentServiceItemsCubit>()
        .getAllDepartmentServiceItemsFromNetworkDB(
        tableDefinitions: table,
        appLang: widget.userRepository.userLanguage)
        .then((value) async {
      //TODO 3. save DepartmentService data in local db
      await saveDepartmentServiceItemsInLocalDb(response: value, table: table);
    });
    await context.read<CountryCubit>().updateTableDefinitionTable(table: table);

  }

  saveDepartmentServiceItemsInLocalDb({required response, required table}) async {
    for (var element in response) {
      await context
          .read<DepartmentServiceItemsCubit>()
          .saveAllAcquisitionTypesInLocalDB(
          tableName: table.tableName,
          values: (element as DepartmentServiceItemsModel ).toJson());
    }
  }
}
