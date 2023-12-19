// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:au2rides/core/network_state/network_state.dart' as _i53;
import 'package:au2rides/core/repositories/user_repository.dart' as _i91;
import 'package:au2rides/core/shared_preference_manager/shared_preference_manager.dart'
    as _i39;
import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart'
    as _i3;
import 'package:au2rides/features/download_screen/data/datasources/country_datasource.dart'
    as _i11;
import 'package:au2rides/features/download_screen/data/datasources/currency_datasource.dart'
    as _i15;
import 'package:au2rides/features/download_screen/data/datasources/engine_fuel_types_datasource.dart'
    as _i18;
import 'package:au2rides/features/download_screen/data/datasources/engine_transmission_types_datasource.dart'
    as _i21;
import 'package:au2rides/features/download_screen/data/datasources/fuel_brands_datasource.dart'
    as _i24;
import 'package:au2rides/features/download_screen/data/datasources/fuel_consumption_unit_types_datasource.dart'
    as _i27;
import 'package:au2rides/features/download_screen/data/datasources/gender_data_source.dart'
    as _i30;
import 'package:au2rides/features/download_screen/data/datasources/metric_units_datasource.dart'
    as _i47;
import 'package:au2rides/features/download_screen/data/datasources/month_datasource.dart'
    as _i50;
import 'package:au2rides/features/download_screen/data/datasources/payment_methods_data_source.dart'
    as _i54;
import 'package:au2rides/features/download_screen/data/datasources/pressure_units_datasource.dart'
    as _i57;
import 'package:au2rides/features/download_screen/data/datasources/reccurence_period_types_datasource.dart'
    as _i60;
import 'package:au2rides/features/download_screen/data/datasources/reminder_type_service_datasource.dart'
    as _i63;
import 'package:au2rides/features/download_screen/data/datasources/reminder_types_datasource.dart'
    as _i66;
import 'package:au2rides/features/download_screen/data/datasources/ride_types_data_source.dart'
    as _i69;
import 'package:au2rides/features/download_screen/data/datasources/service_departments_datasource.dart'
    as _i88;
import 'package:au2rides/features/download_screen/data/datasources/weather_units_data_source.dart'
    as _i92;
import 'package:au2rides/features/download_screen/data/repositories/acquisition_types_repository.dart'
    as _i5;
import 'package:au2rides/features/download_screen/data/repositories/country_repository.dart'
    as _i13;
import 'package:au2rides/features/download_screen/data/repositories/currency_repository.dart'
    as _i17;
import 'package:au2rides/features/download_screen/data/repositories/engine_fuel_types_repository.dart'
    as _i20;
import 'package:au2rides/features/download_screen/data/repositories/engine_transmission_types_repository.dart'
    as _i23;
import 'package:au2rides/features/download_screen/data/repositories/fuel_brands_repository.dart'
    as _i26;
import 'package:au2rides/features/download_screen/data/repositories/fuel_consumption_unit_types_repository.dart'
    as _i29;
import 'package:au2rides/features/download_screen/data/repositories/gender_repository.dart'
    as _i32;
import 'package:au2rides/features/download_screen/data/repositories/metric_units_repository.dart'
    as _i49;
import 'package:au2rides/features/download_screen/data/repositories/month_repository.dart'
    as _i52;
import 'package:au2rides/features/download_screen/data/repositories/payment_methods_repository.dart'
    as _i56;
import 'package:au2rides/features/download_screen/data/repositories/pressure_units_repository.dart'
    as _i59;
import 'package:au2rides/features/download_screen/data/repositories/recurrence_period_types_repository.dart'
    as _i62;
import 'package:au2rides/features/download_screen/data/repositories/reminder_type_service_repository.dart'
    as _i65;
import 'package:au2rides/features/download_screen/data/repositories/reminder_types_repository.dart'
    as _i68;
import 'package:au2rides/features/download_screen/data/repositories/ride_types_repository.dart'
    as _i71;
import 'package:au2rides/features/download_screen/data/repositories/services_departments_repository.dart'
    as _i90;
import 'package:au2rides/features/download_screen/data/repositories/weather_units_repository.dart'
    as _i94;
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart'
    as _i4;
import 'package:au2rides/features/download_screen/domain/repository/country_repository.dart'
    as _i12;
import 'package:au2rides/features/download_screen/domain/repository/currency_repository.dart'
    as _i16;
import 'package:au2rides/features/download_screen/domain/repository/engine_fuel_types_repository.dart'
    as _i19;
import 'package:au2rides/features/download_screen/domain/repository/engine_transmission_types_repository.dart'
    as _i22;
import 'package:au2rides/features/download_screen/domain/repository/fuel_brands_repository.dart'
    as _i25;
import 'package:au2rides/features/download_screen/domain/repository/fuel_consumption_unit_types_repository.dart'
    as _i28;
import 'package:au2rides/features/download_screen/domain/repository/gender_repository.dart'
    as _i31;
import 'package:au2rides/features/download_screen/domain/repository/metric_units_repository.dart'
    as _i48;
import 'package:au2rides/features/download_screen/domain/repository/month_repository.dart'
    as _i51;
import 'package:au2rides/features/download_screen/domain/repository/payment_methods_repository.dart'
    as _i55;
import 'package:au2rides/features/download_screen/domain/repository/pressure_units_repository.dart'
    as _i58;
import 'package:au2rides/features/download_screen/domain/repository/recurrence_period_types_repository.dart'
    as _i61;
import 'package:au2rides/features/download_screen/domain/repository/reminder_type_service_repository.dart'
    as _i64;
import 'package:au2rides/features/download_screen/domain/repository/reminder_types_repository.dart'
    as _i67;
import 'package:au2rides/features/download_screen/domain/repository/ride_types_repository.dart'
    as _i70;
import 'package:au2rides/features/download_screen/domain/repository/services_departments_repository.dart'
    as _i89;
import 'package:au2rides/features/download_screen/domain/repository/weather_measuring_units_repository.dart'
    as _i93;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart'
    as _i10;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart'
    as _i33;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart'
    as _i72;
import 'package:au2rides/features/download_screen/domain/usecase/country/clear_all_data_country_usecase.dart'
    as _i97;
import 'package:au2rides/features/download_screen/domain/usecase/country/country_usecase.dart'
    as _i14;
import 'package:au2rides/features/download_screen/domain/usecase/country/save_country_usecase.dart'
    as _i73;
import 'package:au2rides/features/download_screen/domain/usecase/currency/currency_usecase.dart'
    as _i98;
import 'package:au2rides/features/download_screen/domain/usecase/currency/get_all_currencies_usecase.dart'
    as _i34;
import 'package:au2rides/features/download_screen/domain/usecase/currency/save_currencies_in_local_db_usecase.dart'
    as _i74;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/engine_fuel_types_usecase.dart'
    as _i99;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/get_all_engine_fuel_types_usecase.dart'
    as _i35;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/save_engine_fuel_types_in_local_db_usecase.dart'
    as _i75;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/engine_transmission_types_usecase.dart'
    as _i100;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/get_all_engine_transmission_types_usecase.dart'
    as _i36;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/save_engine_transmission_types_in_local_db_usecase.dart'
    as _i76;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/clear_fuel_brands_usecase.dart'
    as _i101;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/get_all_fuel_brands_usecase.dart'
    as _i37;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/save_fuel_brands_in_local_db_usecase.dart'
    as _i77;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/clear_fuel_consumption_unit_types_usecase.dart'
    as _i102;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/get_all_fuel_consumption_unit_types_usecase.dart'
    as _i38;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/save_fuel_consumption_unit_types_in_local_db_usecase.dart'
    as _i78;
import 'package:au2rides/features/download_screen/domain/usecase/gender/clear_gender_local_usecase.dart'
    as _i103;
import 'package:au2rides/features/download_screen/domain/usecase/gender/download_gender_network_usecase.dart'
    as _i116;
import 'package:au2rides/features/download_screen/domain/usecase/gender/save_gender_data_usecase.dart'
    as _i79;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/clear_metric_units_usecase.dart'
    as _i104;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/get_all_metric_units_usecase.dart'
    as _i125;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/save_metric_units_in_local_db_usecase.dart'
    as _i80;
import 'package:au2rides/features/download_screen/domain/usecase/month/clear_all_data_month_usecase.dart'
    as _i105;
import 'package:au2rides/features/download_screen/domain/usecase/month/get_months_usecase.dart'
    as _i131;
import 'package:au2rides/features/download_screen/domain/usecase/month/save_months_usecase.dart'
    as _i81;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/clear_payment_methods_local_usecase.dart'
    as _i106;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/download_payment_methods_network_usecase.dart'
    as _i117;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/save_payment_methods_data_usecase.dart'
    as _i82;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/clear_all_pressure_units_usecase.dart'
    as _i107;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/get_all_pressure_units_usecase.dart'
    as _i126;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/save_pressure_units_in_local_db_usecase.dart'
    as _i83;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/clear_recurrence_period_types_usecase.dart'
    as _i108;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/get_all_recurrence_period_types_usecase.dart'
    as _i127;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/save_recurrence_period_types_in_local_db_usecase.dart'
    as _i84;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/clear_reminder_type_service_usecase.dart'
    as _i109;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/get_all_reminder_type_service_usecase.dart'
    as _i128;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/save_reminder_type_service_in_local_db_usecase.dart'
    as _i85;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/clear_all_data_reminder_types_usecase.dart'
    as _i110;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/get_reminder_types_usecase.dart'
    as _i132;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/save_reminder_types_usecase.dart'
    as _i86;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/clear_ride_types_local_usecase.dart'
    as _i111;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/download_ride_types_network_usecase.dart'
    as _i118;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/save_ride_types_data_usecase.dart'
    as _i87;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/clear_services_departments_usecase.dart'
    as _i112;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/get_all_services_departments_usecase.dart'
    as _i129;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/save_services_departments_in_local_db_usecase.dart'
    as _i142;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/clear_weather_units_local_usecase.dart'
    as _i113;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/download_weather_units_network_usecase.dart'
    as _i119;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/save_weather_units_data_usecase.dart'
    as _i143;
import 'package:au2rides/features/download_screen/presentation/bloc/acquisition_types_cubit/acquisition_types_cubit.dart'
    as _i95;
import 'package:au2rides/features/download_screen/presentation/bloc/country_cubit/country_cubit.dart'
    as _i114;
import 'package:au2rides/features/download_screen/presentation/bloc/currency_cubit/currency_cubit.dart'
    as _i115;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_fuel_types_cubit/engine_fuel_types_cubit.dart'
    as _i120;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_transmission_types_cubit/engine_transmission_types_cubit.dart'
    as _i121;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_brands_cubit/fuel_brands_cubit.dart'
    as _i122;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_consumption_unit_types_cubit/fuel_consumption_unit_types_cubit.dart'
    as _i123;
import 'package:au2rides/features/download_screen/presentation/bloc/gender_cubit/gender_cubit.dart'
    as _i124;
import 'package:au2rides/features/download_screen/presentation/bloc/metric_untis_cubit/metric_units_cubit.dart'
    as _i134;
import 'package:au2rides/features/download_screen/presentation/bloc/month_cubit/month_cubit.dart'
    as _i135;
import 'package:au2rides/features/download_screen/presentation/bloc/payment_methods/payment_methods_cubit.dart'
    as _i136;
import 'package:au2rides/features/download_screen/presentation/bloc/pressure_units_cubit/pressure_units_cubit.dart'
    as _i137;
import 'package:au2rides/features/download_screen/presentation/bloc/recurrence_period_types_cubit/recurrence_period_types_cubit.dart'
    as _i138;
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_type_service_cubit/reminder_type_service_cubit.dart'
    as _i139;
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_types_cubit/reminder_types_cubit.dart'
    as _i140;
import 'package:au2rides/features/download_screen/presentation/bloc/ride_types/ride_types_cubit.dart'
    as _i141;
import 'package:au2rides/features/download_screen/presentation/bloc/service_departments_cubit/service_departments_cubit.dart'
    as _i144;
import 'package:au2rides/features/download_screen/presentation/bloc/weather_units/weather_units_cubit.dart'
    as _i145;
import 'package:au2rides/features/language_screen/data/data_sources/local/language_local_database.dart'
    as _i44;
import 'package:au2rides/features/language_screen/data/repositories/langauge_repository_impl.dart'
    as _i46;
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart'
    as _i45;
import 'package:au2rides/features/language_screen/domain/use_cases/language_use_case.dart'
    as _i130;
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart'
    as _i133;
import 'package:au2rides/features/splash_screen/data/datasources/check_primary_data_data_scource.dart'
    as _i6;
import 'package:au2rides/features/splash_screen/data/datasources/isDownloaded_data_scource.dart'
    as _i40;
import 'package:au2rides/features/splash_screen/data/repositories/check_primary_data_repository_imp.dart'
    as _i8;
import 'package:au2rides/features/splash_screen/data/repositories/is_downloaded_repository_imp.dart'
    as _i42;
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart'
    as _i7;
import 'package:au2rides/features/splash_screen/domain/repositories/is_downloaded_repository.dart'
    as _i41;
import 'package:au2rides/features/splash_screen/domain/usecases/check_primary_data_usecase.dart'
    as _i9;
import 'package:au2rides/features/splash_screen/domain/usecases/is_downloaded_usecase.dart'
    as _i43;
import 'package:au2rides/features/splash_screen/presentation/bloc/check_primary_data_cubit.dart'
    as _i96;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AcquisitionTypesDataSource>(
        () => _i3.AcquisitionTypesDataSource());
    gh.factory<_i4.AcquisitionTypesRepository>(() =>
        _i5.AcquisitionTypesRepositoryImpl(
            gh<_i3.AcquisitionTypesDataSource>()));
    gh.factory<_i6.CheckPrimaryDataDataSource>(
        () => _i6.CheckPrimaryDataDataSource());
    gh.factory<_i7.CheckPrimaryDataRepository>(() =>
        _i8.CheckPrimaryDataRepositoryImpl(
            gh<_i6.CheckPrimaryDataDataSource>()));
    gh.factory<_i9.CheckPrimaryDataUseCase>(() =>
        _i9.CheckPrimaryDataUseCase(gh<_i7.CheckPrimaryDataRepository>()));
    gh.factory<_i10.ClearAcquisitionTypesUseCase>(() =>
        _i10.ClearAcquisitionTypesUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i11.CountryDataSource>(() => _i11.CountryDataSource());
    gh.factory<_i12.CountryRepository>(
        () => _i13.CountryRepositoryImpl(gh<_i11.CountryDataSource>()));
    gh.factory<_i14.CountryUseCase>(
        () => _i14.CountryUseCase(gh<_i12.CountryRepository>()));
    gh.factory<_i15.CurrencyDataSource>(() => _i15.CurrencyDataSource());
    gh.factory<_i16.CurrencyRepository>(
        () => _i17.CurrencyRepositoryImpl(gh<_i15.CurrencyDataSource>()));
    gh.factory<_i18.EngineFuelTypesDataSource>(
        () => _i18.EngineFuelTypesDataSource());
    gh.factory<_i19.EngineFuelTypesRepository>(() =>
        _i20.EngineFuelTypesRepositoryImpl(
            gh<_i18.EngineFuelTypesDataSource>()));
    gh.factory<_i21.EngineTransmissionTypesDataSource>(
        () => _i21.EngineTransmissionTypesDataSource());
    gh.factory<_i22.EngineTransmissionTypesRepository>(() =>
        _i23.EngineTransmissionTypesRepositoryImpl(
            gh<_i21.EngineTransmissionTypesDataSource>()));
    gh.factory<_i24.FuelBrandsDataSource>(() => _i24.FuelBrandsDataSource());
    gh.factory<_i25.FuelBrandsRepository>(
        () => _i26.FuelBrandsRepositoryImpl(gh<_i24.FuelBrandsDataSource>()));
    gh.factory<_i27.FuelConsumptionUnitTypesDataSource>(
        () => _i27.FuelConsumptionUnitTypesDataSource());
    gh.factory<_i28.FuelConsumptionUnitTypesRepository>(() =>
        _i29.FuelConsumptionUnitTypesRepositoryImpl(
            gh<_i27.FuelConsumptionUnitTypesDataSource>()));
    gh.factory<_i30.GenderDataSource>(() => _i30.GenderDataSource());
    gh.factory<_i31.GenderRepository>(
        () => _i32.GenderRepositoryImpl(gh<_i30.GenderDataSource>()));
    gh.factory<_i33.GetAllAcquisitionTypesUseCase>(() =>
        _i33.GetAllAcquisitionTypesUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i34.GetAllCurrencyUseCase>(
        () => _i34.GetAllCurrencyUseCase(gh<_i16.CurrencyRepository>()));
    gh.factory<_i35.GetAllEngineFuelTypesUseCase>(() =>
        _i35.GetAllEngineFuelTypesUseCase(
            gh<_i19.EngineFuelTypesRepository>()));
    gh.factory<_i36.GetAllEngineTransmissionTypesUseCase>(() =>
        _i36.GetAllEngineTransmissionTypesUseCase(
            gh<_i22.EngineTransmissionTypesRepository>()));
    gh.factory<_i37.GetAllFuelBrandUseCase>(
        () => _i37.GetAllFuelBrandUseCase(gh<_i25.FuelBrandsRepository>()));
    gh.factory<_i38.GetAllFuelConsumptionUnitTypesUseCase>(() =>
        _i38.GetAllFuelConsumptionUnitTypesUseCase(
            gh<_i28.FuelConsumptionUnitTypesRepository>()));
    await gh.factoryAsync<_i39.IPrefsManager>(
      () => _i39.PrefsManager.create(),
      instanceName: 'prefs',
      preResolve: true,
    );
    gh.factory<_i40.IsDownloadedDataSource>(
        () => _i40.IsDownloadedDataSource());
    gh.factory<_i41.IsDownloadedRepository>(
        () => _i42.IsDownloadedImpl(gh<_i40.IsDownloadedDataSource>()));
    gh.factory<_i43.IsDownloadedUseCase>(
        () => _i43.IsDownloadedUseCase(gh<_i41.IsDownloadedRepository>()));
    gh.factory<_i44.LanguageLocalDatabase>(() => _i44.LanguageLocalDatabase());
    gh.factory<_i45.LanguageRepository>(
        () => _i46.LanguageRepositoryImpl(gh<_i44.LanguageLocalDatabase>()));
    gh.factory<_i47.MetricUnitsDataSource>(() => _i47.MetricUnitsDataSource());
    gh.factory<_i48.MetricUnitsRepository>(
        () => _i49.MetricUnitsRepositoryImpl(gh<_i47.MetricUnitsDataSource>()));
    gh.factory<_i50.MonthDataSource>(() => _i50.MonthDataSource());
    gh.factory<_i51.MonthRepository>(
        () => _i52.MonthRepositoryImpl(gh<_i50.MonthDataSource>()));
    gh.factory<_i53.NetworkInfo>(() => _i53.NetworkInfoImpl.create());
    gh.factory<_i54.PaymentMethodsDataSource>(
        () => _i54.PaymentMethodsDataSource());
    gh.factory<_i55.PaymentMethodsRepository>(() =>
        _i56.PaymentMethodsRepositoryImpl(gh<_i54.PaymentMethodsDataSource>()));
    gh.factory<_i57.PressureUnitsDataSource>(
        () => _i57.PressureUnitsDataSource());
    gh.factory<_i58.PressureUnitsRepository>(() =>
        _i59.PressureUnitsRepositoryImpl(gh<_i57.PressureUnitsDataSource>()));
    gh.factory<_i60.RecurrencePeriodTypesDataSource>(
        () => _i60.RecurrencePeriodTypesDataSource());
    gh.factory<_i61.RecurrencePeriodTypesRepository>(() =>
        _i62.RecurrencePeriodTypesRepositoryImpl(
            gh<_i60.RecurrencePeriodTypesDataSource>()));
    gh.factory<_i63.ReminderTypeServiceDataSource>(
        () => _i63.ReminderTypeServiceDataSource());
    gh.factory<_i64.ReminderTypeServiceRepository>(() =>
        _i65.ReminderTypeServiceRepositoryImpl(
            gh<_i63.ReminderTypeServiceDataSource>()));
    gh.factory<_i66.ReminderTypesDataSource>(
        () => _i66.ReminderTypesDataSource());
    gh.factory<_i67.ReminderTypesRepository>(() =>
        _i68.ReminderTypesRepositoryImpl(gh<_i66.ReminderTypesDataSource>()));
    gh.factory<_i69.RideTypesDataSource>(() => _i69.RideTypesDataSource());
    gh.factory<_i70.RideTypesRepository>(
        () => _i71.RideTypesRepositoryImpl(gh<_i69.RideTypesDataSource>()));
    gh.factory<_i72.SaveAcquisitionTypesInLocalDbUseCase>(() =>
        _i72.SaveAcquisitionTypesInLocalDbUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i73.SaveCountriesUseCase>(
        () => _i73.SaveCountriesUseCase(gh<_i12.CountryRepository>()));
    gh.factory<_i74.SaveCurrenciesInLocalDbUseCase>(() =>
        _i74.SaveCurrenciesInLocalDbUseCase(gh<_i16.CurrencyRepository>()));
    gh.factory<_i75.SaveEngineFuelTypesInLocalDbUseCase>(() =>
        _i75.SaveEngineFuelTypesInLocalDbUseCase(
            gh<_i19.EngineFuelTypesRepository>()));
    gh.factory<_i76.SaveEngineTransmissionTypesInLocalDbUseCase>(() =>
        _i76.SaveEngineTransmissionTypesInLocalDbUseCase(
            gh<_i22.EngineTransmissionTypesRepository>()));
    gh.factory<_i77.SaveFuelBrandInLocalDbUseCase>(() =>
        _i77.SaveFuelBrandInLocalDbUseCase(gh<_i25.FuelBrandsRepository>()));
    gh.factory<_i78.SaveFuelConsumptionUnitTypesInLocalDbUseCase>(() =>
        _i78.SaveFuelConsumptionUnitTypesInLocalDbUseCase(
            gh<_i28.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i79.SaveGenderDataInLocalDb>(
        () => _i79.SaveGenderDataInLocalDb(gh<_i31.GenderRepository>()));
    gh.factory<_i80.SaveMetricUnitsInLocalDbUseCase>(() =>
        _i80.SaveMetricUnitsInLocalDbUseCase(gh<_i48.MetricUnitsRepository>()));
    gh.factory<_i81.SaveMonthsUseCase>(
        () => _i81.SaveMonthsUseCase(gh<_i51.MonthRepository>()));
    gh.factory<_i82.SavePaymentMethodsDataInLocalDbUseCase>(() =>
        _i82.SavePaymentMethodsDataInLocalDbUseCase(
            gh<_i55.PaymentMethodsRepository>()));
    gh.factory<_i83.SavePressureUnitsInLocalDbUseCase>(() =>
        _i83.SavePressureUnitsInLocalDbUseCase(
            gh<_i58.PressureUnitsRepository>()));
    gh.factory<_i84.SaveRecurrencePeriodTypesInLocalDbUseCase>(() =>
        _i84.SaveRecurrencePeriodTypesInLocalDbUseCase(
            gh<_i61.RecurrencePeriodTypesRepository>()));
    gh.factory<_i85.SaveReminderTypeServiceInLocalDbUseCase>(() =>
        _i85.SaveReminderTypeServiceInLocalDbUseCase(
            gh<_i64.ReminderTypeServiceRepository>()));
    gh.factory<_i86.SaveReminderTypesUseCase>(() =>
        _i86.SaveReminderTypesUseCase(gh<_i67.ReminderTypesRepository>()));
    gh.factory<_i87.SaveRideTypesDataInLocalDbUseCase>(() =>
        _i87.SaveRideTypesDataInLocalDbUseCase(gh<_i70.RideTypesRepository>()));
    gh.factory<_i88.ServiceDepartmentsDataSource>(
        () => _i88.ServiceDepartmentsDataSource());
    gh.factory<_i89.ServicesDepartmentsRepository>(() =>
        _i90.ServiceDepartmentsRepositoryImpl(
            gh<_i88.ServiceDepartmentsDataSource>()));
    gh.singleton<_i91.UserRepository>(_i91.UserRepository.create(
        gh<_i39.IPrefsManager>(instanceName: 'prefs')));
    gh.factory<_i92.WeatherUnitsDataSource>(
        () => _i92.WeatherUnitsDataSource());
    gh.factory<_i93.WeatherUnitsRepository>(() =>
        _i94.WeatherUnitsRepositoryImpl(gh<_i92.WeatherUnitsDataSource>()));
    gh.factory<_i95.AcquisitionTypesCubit>(() => _i95.AcquisitionTypesCubit(
          gh<_i10.ClearAcquisitionTypesUseCase>(),
          gh<_i33.GetAllAcquisitionTypesUseCase>(),
          gh<_i72.SaveAcquisitionTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i96.CheckPrimaryDataCubit>(() => _i96.CheckPrimaryDataCubit(
          gh<_i9.CheckPrimaryDataUseCase>(),
          gh<_i43.IsDownloadedUseCase>(),
        ));
    gh.factory<_i97.ClearCountryUseCase>(
        () => _i97.ClearCountryUseCase(gh<_i12.CountryRepository>()));
    gh.factory<_i98.ClearCurrencyUseCase>(
        () => _i98.ClearCurrencyUseCase(gh<_i16.CurrencyRepository>()));
    gh.factory<_i99.ClearEngineFuelTypesUseCase>(() =>
        _i99.ClearEngineFuelTypesUseCase(gh<_i19.EngineFuelTypesRepository>()));
    gh.factory<_i100.ClearEngineTransmissionTypesUseCase>(() =>
        _i100.ClearEngineTransmissionTypesUseCase(
            gh<_i22.EngineTransmissionTypesRepository>()));
    gh.factory<_i101.ClearFuelBrandsUseCase>(
        () => _i101.ClearFuelBrandsUseCase(gh<_i25.FuelBrandsRepository>()));
    gh.factory<_i102.ClearFuelConsumptionUnitTypesUseCase>(() =>
        _i102.ClearFuelConsumptionUnitTypesUseCase(
            gh<_i28.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i103.ClearGenderUseCase>(
        () => _i103.ClearGenderUseCase(gh<_i31.GenderRepository>()));
    gh.factory<_i104.ClearMetricUnitsUseCase>(
        () => _i104.ClearMetricUnitsUseCase(gh<_i48.MetricUnitsRepository>()));
    gh.factory<_i105.ClearMonthUseCase>(
        () => _i105.ClearMonthUseCase(gh<_i51.MonthRepository>()));
    gh.factory<_i106.ClearPaymentMethodsUseCase>(() =>
        _i106.ClearPaymentMethodsUseCase(gh<_i55.PaymentMethodsRepository>()));
    gh.factory<_i107.ClearPressureUnitsUseCase>(() =>
        _i107.ClearPressureUnitsUseCase(gh<_i58.PressureUnitsRepository>()));
    gh.factory<_i108.ClearRecurrencePeriodTypesUseCase>(() =>
        _i108.ClearRecurrencePeriodTypesUseCase(
            gh<_i61.RecurrencePeriodTypesRepository>()));
    gh.factory<_i109.ClearReminderTypeServiceUseCase>(() =>
        _i109.ClearReminderTypeServiceUseCase(
            gh<_i64.ReminderTypeServiceRepository>()));
    gh.factory<_i110.ClearReminderTypeUseCase>(() =>
        _i110.ClearReminderTypeUseCase(gh<_i67.ReminderTypesRepository>()));
    gh.factory<_i111.ClearRideTypesUseCase>(
        () => _i111.ClearRideTypesUseCase(gh<_i70.RideTypesRepository>()));
    gh.factory<_i112.ClearServicesDepartmentsUseCase>(() =>
        _i112.ClearServicesDepartmentsUseCase(
            gh<_i89.ServicesDepartmentsRepository>()));
    gh.factory<_i113.ClearWeatherUnitsUseCase>(() =>
        _i113.ClearWeatherUnitsUseCase(gh<_i93.WeatherUnitsRepository>()));
    gh.factory<_i114.CountryCubit>(() => _i114.CountryCubit(
          gh<_i14.CountryUseCase>(),
          gh<_i73.SaveCountriesUseCase>(),
          gh<_i97.ClearCountryUseCase>(),
          gh<_i98.ClearCurrencyUseCase>(),
        ));
    gh.factory<_i115.CurrencyCubit>(() => _i115.CurrencyCubit(
          gh<_i98.ClearCurrencyUseCase>(),
          gh<_i34.GetAllCurrencyUseCase>(),
          gh<_i74.SaveCurrenciesInLocalDbUseCase>(),
        ));
    gh.factory<_i116.DownloadGenderUseCase>(
        () => _i116.DownloadGenderUseCase(gh<_i31.GenderRepository>()));
    gh.factory<_i117.DownloadPaymentMethodsUseCase>(() =>
        _i117.DownloadPaymentMethodsUseCase(
            gh<_i55.PaymentMethodsRepository>()));
    gh.factory<_i118.DownloadRideTypesUseCase>(
        () => _i118.DownloadRideTypesUseCase(gh<_i70.RideTypesRepository>()));
    gh.factory<_i119.DownloadWeatherUnitsUseCase>(() =>
        _i119.DownloadWeatherUnitsUseCase(gh<_i93.WeatherUnitsRepository>()));
    gh.factory<_i120.EngineFuelTypesCubit>(() => _i120.EngineFuelTypesCubit(
          gh<_i99.ClearEngineFuelTypesUseCase>(),
          gh<_i35.GetAllEngineFuelTypesUseCase>(),
          gh<_i75.SaveEngineFuelTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i121.EngineTransmissionTypesCubit>(
        () => _i121.EngineTransmissionTypesCubit(
              gh<_i100.ClearEngineTransmissionTypesUseCase>(),
              gh<_i36.GetAllEngineTransmissionTypesUseCase>(),
              gh<_i76.SaveEngineTransmissionTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i122.FuelBrandsCubit>(() => _i122.FuelBrandsCubit(
          gh<_i101.ClearFuelBrandsUseCase>(),
          gh<_i37.GetAllFuelBrandUseCase>(),
          gh<_i77.SaveFuelBrandInLocalDbUseCase>(),
        ));
    gh.factory<_i123.FuelConsumptionUnitTypesCubit>(
        () => _i123.FuelConsumptionUnitTypesCubit(
              gh<_i102.ClearFuelConsumptionUnitTypesUseCase>(),
              gh<_i38.GetAllFuelConsumptionUnitTypesUseCase>(),
              gh<_i78.SaveFuelConsumptionUnitTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i124.GenderCubit>(() => _i124.GenderCubit(
          gh<_i103.ClearGenderUseCase>(),
          gh<_i116.DownloadGenderUseCase>(),
          gh<_i79.SaveGenderDataInLocalDb>(),
        ));
    gh.factory<_i125.GetAllMetricUnitsUseCase>(
        () => _i125.GetAllMetricUnitsUseCase(gh<_i48.MetricUnitsRepository>()));
    gh.factory<_i126.GetAllPressureUnitsUseCase>(() =>
        _i126.GetAllPressureUnitsUseCase(gh<_i58.PressureUnitsRepository>()));
    gh.factory<_i127.GetAllRecurrencePeriodTypesUseCase>(() =>
        _i127.GetAllRecurrencePeriodTypesUseCase(
            gh<_i61.RecurrencePeriodTypesRepository>()));
    gh.factory<_i128.GetAllReminderTypeServiceUseCase>(() =>
        _i128.GetAllReminderTypeServiceUseCase(
            gh<_i64.ReminderTypeServiceRepository>()));
    gh.factory<_i129.GetAllServicesDepartmentsUseCase>(() =>
        _i129.GetAllServicesDepartmentsUseCase(
            gh<_i89.ServicesDepartmentsRepository>()));
    gh.factory<_i130.GetLanguagesUseCase>(
        () => _i130.GetLanguagesUseCase(gh<_i45.LanguageRepository>()));
    gh.factory<_i131.GetMonthsUseCase>(
        () => _i131.GetMonthsUseCase(gh<_i51.MonthRepository>()));
    gh.factory<_i132.GetReminderTypesUseCase>(() =>
        _i132.GetReminderTypesUseCase(gh<_i67.ReminderTypesRepository>()));
    gh.factory<_i133.LanguageCubit>(
        () => _i133.LanguageCubit(gh<_i130.GetLanguagesUseCase>()));
    gh.factory<_i134.MetricUnitsCubit>(() => _i134.MetricUnitsCubit(
          gh<_i104.ClearMetricUnitsUseCase>(),
          gh<_i125.GetAllMetricUnitsUseCase>(),
          gh<_i80.SaveMetricUnitsInLocalDbUseCase>(),
        ));
    gh.factory<_i135.MonthCubit>(() => _i135.MonthCubit(
          gh<_i131.GetMonthsUseCase>(),
          gh<_i81.SaveMonthsUseCase>(),
          gh<_i105.ClearMonthUseCase>(),
        ));
    gh.factory<_i136.PaymentMethodsCubit>(() => _i136.PaymentMethodsCubit(
          gh<_i106.ClearPaymentMethodsUseCase>(),
          gh<_i117.DownloadPaymentMethodsUseCase>(),
          gh<_i82.SavePaymentMethodsDataInLocalDbUseCase>(),
        ));
    gh.factory<_i137.PressureUnitsCubit>(() => _i137.PressureUnitsCubit(
          gh<_i14.CountryUseCase>(),
          gh<_i83.SavePressureUnitsInLocalDbUseCase>(),
          gh<_i107.ClearPressureUnitsUseCase>(),
          gh<_i126.GetAllPressureUnitsUseCase>(),
        ));
    gh.factory<_i138.RecurrencePeriodTypesCubit>(
        () => _i138.RecurrencePeriodTypesCubit(
              gh<_i108.ClearRecurrencePeriodTypesUseCase>(),
              gh<_i127.GetAllRecurrencePeriodTypesUseCase>(),
              gh<_i84.SaveRecurrencePeriodTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i139.ReminderTypeServiceCubit>(
        () => _i139.ReminderTypeServiceCubit(
              gh<_i109.ClearReminderTypeServiceUseCase>(),
              gh<_i128.GetAllReminderTypeServiceUseCase>(),
              gh<_i85.SaveReminderTypeServiceInLocalDbUseCase>(),
            ));
    gh.factory<_i140.ReminderTypesCubit>(() => _i140.ReminderTypesCubit(
          gh<_i132.GetReminderTypesUseCase>(),
          gh<_i86.SaveReminderTypesUseCase>(),
          gh<_i110.ClearReminderTypeUseCase>(),
        ));
    gh.factory<_i141.RideTypesCubit>(() => _i141.RideTypesCubit(
          gh<_i111.ClearRideTypesUseCase>(),
          gh<_i118.DownloadRideTypesUseCase>(),
          gh<_i87.SaveRideTypesDataInLocalDbUseCase>(),
        ));
    gh.factory<_i142.SaveServiceDepartmentsInLocalDbUseCase>(() =>
        _i142.SaveServiceDepartmentsInLocalDbUseCase(
            gh<_i89.ServicesDepartmentsRepository>()));
    gh.factory<_i143.SaveWeatherUnitsDataInLocalDb>(() =>
        _i143.SaveWeatherUnitsDataInLocalDb(gh<_i93.WeatherUnitsRepository>()));
    gh.factory<_i144.ServiceDepartmentsCubit>(
        () => _i144.ServiceDepartmentsCubit(
              gh<_i112.ClearServicesDepartmentsUseCase>(),
              gh<_i129.GetAllServicesDepartmentsUseCase>(),
              gh<_i142.SaveServiceDepartmentsInLocalDbUseCase>(),
            ));
    gh.factory<_i145.WeatherUnitsCubit>(() => _i145.WeatherUnitsCubit(
          gh<_i113.ClearWeatherUnitsUseCase>(),
          gh<_i119.DownloadWeatherUnitsUseCase>(),
          gh<_i143.SaveWeatherUnitsDataInLocalDb>(),
        ));
    return this;
  }
}
