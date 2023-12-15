// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:au2rides/core/network_state/network_state.dart' as _i45;
import 'package:au2rides/core/repositories/user_repository.dart' as _i74;
import 'package:au2rides/core/shared_preference_manager/shared_preference_manager.dart'
    as _i31;
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
import 'package:au2rides/features/download_screen/data/datasources/gender_data_source.dart'
    as _i24;
import 'package:au2rides/features/download_screen/data/datasources/metric_units_datasource.dart'
    as _i39;
import 'package:au2rides/features/download_screen/data/datasources/month_datasource.dart'
    as _i42;
import 'package:au2rides/features/download_screen/data/datasources/payment_methods_data_source.dart'
    as _i46;
import 'package:au2rides/features/download_screen/data/datasources/pressure_units_datasource.dart'
    as _i49;
import 'package:au2rides/features/download_screen/data/datasources/reccurence_period_types_datasource.dart'
    as _i52;
import 'package:au2rides/features/download_screen/data/datasources/reminder_types_datasource.dart'
    as _i55;
import 'package:au2rides/features/download_screen/data/datasources/ride_types_data_source.dart'
    as _i58;
import 'package:au2rides/features/download_screen/data/datasources/weather_units_data_source.dart'
    as _i75;
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
import 'package:au2rides/features/download_screen/data/repositories/gender_repository.dart'
    as _i26;
import 'package:au2rides/features/download_screen/data/repositories/metric_units_repository.dart'
    as _i41;
import 'package:au2rides/features/download_screen/data/repositories/month_repository.dart'
    as _i44;
import 'package:au2rides/features/download_screen/data/repositories/payment_methods_repository.dart'
    as _i48;
import 'package:au2rides/features/download_screen/data/repositories/pressure_units_repository.dart'
    as _i51;
import 'package:au2rides/features/download_screen/data/repositories/recurrence_period_types_repository.dart'
    as _i54;
import 'package:au2rides/features/download_screen/data/repositories/reminder_types_repository.dart'
    as _i57;
import 'package:au2rides/features/download_screen/data/repositories/ride_types_repository.dart'
    as _i60;
import 'package:au2rides/features/download_screen/data/repositories/weather_units_repository.dart'
    as _i77;
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
import 'package:au2rides/features/download_screen/domain/repository/gender_repository.dart'
    as _i25;
import 'package:au2rides/features/download_screen/domain/repository/metric_units_repository.dart'
    as _i40;
import 'package:au2rides/features/download_screen/domain/repository/month_repository.dart'
    as _i43;
import 'package:au2rides/features/download_screen/domain/repository/payment_methods_repository.dart'
    as _i47;
import 'package:au2rides/features/download_screen/domain/repository/pressure_units_repository.dart'
    as _i50;
import 'package:au2rides/features/download_screen/domain/repository/recurrence_period_types_repository.dart'
    as _i53;
import 'package:au2rides/features/download_screen/domain/repository/reminder_types_repository.dart'
    as _i56;
import 'package:au2rides/features/download_screen/domain/repository/ride_types_repository.dart'
    as _i59;
import 'package:au2rides/features/download_screen/domain/repository/weather_measuring_units_repository.dart'
    as _i76;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart'
    as _i10;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart'
    as _i27;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart'
    as _i61;
import 'package:au2rides/features/download_screen/domain/usecase/country/clear_all_data_country_usecase.dart'
    as _i80;
import 'package:au2rides/features/download_screen/domain/usecase/country/country_usecase.dart'
    as _i14;
import 'package:au2rides/features/download_screen/domain/usecase/country/save_country_usecase.dart'
    as _i62;
import 'package:au2rides/features/download_screen/domain/usecase/currency/currency_usecase.dart'
    as _i81;
import 'package:au2rides/features/download_screen/domain/usecase/currency/get_all_currencies_usecase.dart'
    as _i28;
import 'package:au2rides/features/download_screen/domain/usecase/currency/save_currencies_in_local_db_usecase.dart'
    as _i63;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/engine_fuel_types_usecase.dart'
    as _i82;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/get_all_engine_fuel_types_usecase.dart'
    as _i29;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/save_engine_fuel_types_in_local_db_usecase.dart'
    as _i64;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/engine_transmission_types_usecase.dart'
    as _i83;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/get_all_engine_transmission_types_usecase.dart'
    as _i30;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/save_engine_transmission_types_in_local_db_usecase.dart'
    as _i65;
import 'package:au2rides/features/download_screen/domain/usecase/gender/clear_gender_local_usecase.dart'
    as _i84;
import 'package:au2rides/features/download_screen/domain/usecase/gender/download_gender_network_usecase.dart'
    as _i95;
import 'package:au2rides/features/download_screen/domain/usecase/gender/save_gender_data_usecase.dart'
    as _i66;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/clear_metric_units_usecase.dart'
    as _i85;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/get_all_metric_units_usecase.dart'
    as _i102;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/save_metric_units_in_local_db_usecase.dart'
    as _i67;
import 'package:au2rides/features/download_screen/domain/usecase/month/clear_all_data_month_usecase.dart'
    as _i86;
import 'package:au2rides/features/download_screen/domain/usecase/month/get_months_usecase.dart'
    as _i106;
import 'package:au2rides/features/download_screen/domain/usecase/month/save_months_usecase.dart'
    as _i68;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/clear_payment_methods_local_usecase.dart'
    as _i87;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/download_payment_methods_network_usecase.dart'
    as _i96;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/save_payment_methods_data_usecase.dart'
    as _i69;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/clear_all_pressure_units_usecase.dart'
    as _i88;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/get_all_pressure_units_usecase.dart'
    as _i103;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/save_pressure_units_in_local_db_usecase.dart'
    as _i70;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/clear_recurrence_period_types_usecase.dart'
    as _i89;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/get_all_recurrence_period_types_usecase.dart'
    as _i104;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/save_recurrence_period_types_in_local_db_usecase.dart'
    as _i71;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/clear_all_data_reminder_types_usecase.dart'
    as _i90;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/get_reminder_types_usecase.dart'
    as _i107;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/save_reminder_types_usecase.dart'
    as _i72;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/clear_ride_types_local_usecase.dart'
    as _i91;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/download_ride_types_network_usecase.dart'
    as _i97;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/save_ride_types_data_usecase.dart'
    as _i73;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/clear_weather_units_local_usecase.dart'
    as _i92;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/download_weather_units_network_usecase.dart'
    as _i98;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/save_weather_units_data_usecase.dart'
    as _i116;
import 'package:au2rides/features/download_screen/presentation/bloc/acquisition_types_cubit/acquisition_types_cubit.dart'
    as _i78;
import 'package:au2rides/features/download_screen/presentation/bloc/country_cubit/country_cubit.dart'
    as _i93;
import 'package:au2rides/features/download_screen/presentation/bloc/currency_cubit/currency_cubit.dart'
    as _i94;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_fuel_types_cubit/engine_fuel_types_cubit.dart'
    as _i99;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_transmission_types_cubit/engine_transmission_types_cubit.dart'
    as _i100;
import 'package:au2rides/features/download_screen/presentation/bloc/gender_cubit/gender_cubit.dart'
    as _i101;
import 'package:au2rides/features/download_screen/presentation/bloc/metric_untis_cubit/metric_units_cubit.dart'
    as _i109;
import 'package:au2rides/features/download_screen/presentation/bloc/month_cubit/month_cubit.dart'
    as _i110;
import 'package:au2rides/features/download_screen/presentation/bloc/payment_methods/payment_methods_cubit.dart'
    as _i111;
import 'package:au2rides/features/download_screen/presentation/bloc/pressure_units_cubit/pressure_units_cubit.dart'
    as _i112;
import 'package:au2rides/features/download_screen/presentation/bloc/recurrence_period_types_cubit/recurrence_period_types_cubit.dart'
    as _i113;
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_types_cubit/reminder_types_cubit.dart'
    as _i114;
import 'package:au2rides/features/download_screen/presentation/bloc/ride_types/ride_types_cubit.dart'
    as _i115;
import 'package:au2rides/features/download_screen/presentation/bloc/weather_units/weather_units_cubit.dart'
    as _i117;
import 'package:au2rides/features/language_screen/data/data_sources/local/language_local_database.dart'
    as _i36;
import 'package:au2rides/features/language_screen/data/repositories/langauge_repository_impl.dart'
    as _i38;
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart'
    as _i37;
import 'package:au2rides/features/language_screen/domain/use_cases/language_use_case.dart'
    as _i105;
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart'
    as _i108;
import 'package:au2rides/features/splash_screen/data/datasources/check_primary_data_data_scource.dart'
    as _i6;
import 'package:au2rides/features/splash_screen/data/datasources/isDownloaded_data_scource.dart'
    as _i32;
import 'package:au2rides/features/splash_screen/data/repositories/check_primary_data_repository_imp.dart'
    as _i8;
import 'package:au2rides/features/splash_screen/data/repositories/is_downloaded_repository_imp.dart'
    as _i34;
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart'
    as _i7;
import 'package:au2rides/features/splash_screen/domain/repositories/is_downloaded_repository.dart'
    as _i33;
import 'package:au2rides/features/splash_screen/domain/usecases/check_primary_data_usecase.dart'
    as _i9;
import 'package:au2rides/features/splash_screen/domain/usecases/is_downloaded_usecase.dart'
    as _i35;
import 'package:au2rides/features/splash_screen/presentation/bloc/check_primary_data_cubit.dart'
    as _i79;
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
    gh.factory<_i24.GenderDataSource>(() => _i24.GenderDataSource());
    gh.factory<_i25.GenderRepository>(
        () => _i26.GenderRepositoryImpl(gh<_i24.GenderDataSource>()));
    gh.factory<_i27.GetAllAcquisitionTypesUseCase>(() =>
        _i27.GetAllAcquisitionTypesUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i28.GetAllCurrencyUseCase>(
        () => _i28.GetAllCurrencyUseCase(gh<_i16.CurrencyRepository>()));
    gh.factory<_i29.GetAllEngineFuelTypesUseCase>(() =>
        _i29.GetAllEngineFuelTypesUseCase(
            gh<_i19.EngineFuelTypesRepository>()));
    gh.factory<_i30.GetAllEngineTransmissionTypesUseCase>(() =>
        _i30.GetAllEngineTransmissionTypesUseCase(
            gh<_i22.EngineTransmissionTypesRepository>()));
    await gh.factoryAsync<_i31.IPrefsManager>(
      () => _i31.PrefsManager.create(),
      instanceName: 'prefs',
      preResolve: true,
    );
    gh.factory<_i32.IsDownloadedDataSource>(
        () => _i32.IsDownloadedDataSource());
    gh.factory<_i33.IsDownloadedRepository>(
        () => _i34.IsDownloadedImpl(gh<_i32.IsDownloadedDataSource>()));
    gh.factory<_i35.IsDownloadedUseCase>(
        () => _i35.IsDownloadedUseCase(gh<_i33.IsDownloadedRepository>()));
    gh.factory<_i36.LanguageLocalDatabase>(() => _i36.LanguageLocalDatabase());
    gh.factory<_i37.LanguageRepository>(
        () => _i38.LanguageRepositoryImpl(gh<_i36.LanguageLocalDatabase>()));
    gh.factory<_i39.MetricUnitsDataSource>(() => _i39.MetricUnitsDataSource());
    gh.factory<_i40.MetricUnitsRepository>(
        () => _i41.MetricUnitsRepositoryImpl(gh<_i39.MetricUnitsDataSource>()));
    gh.factory<_i42.MonthDataSource>(() => _i42.MonthDataSource());
    gh.factory<_i43.MonthRepository>(
        () => _i44.MonthRepositoryImpl(gh<_i42.MonthDataSource>()));
    gh.factory<_i45.NetworkInfo>(() => _i45.NetworkInfoImpl.create());
    gh.factory<_i46.PaymentMethodsDataSource>(
        () => _i46.PaymentMethodsDataSource());
    gh.factory<_i47.PaymentMethodsRepository>(() =>
        _i48.PaymentMethodsRepositoryImpl(gh<_i46.PaymentMethodsDataSource>()));
    gh.factory<_i49.PressureUnitsDataSource>(
        () => _i49.PressureUnitsDataSource());
    gh.factory<_i50.PressureUnitsRepository>(() =>
        _i51.PressureUnitsRepositoryImpl(gh<_i49.PressureUnitsDataSource>()));
    gh.factory<_i52.RecurrencePeriodTypesDataSource>(
        () => _i52.RecurrencePeriodTypesDataSource());
    gh.factory<_i53.RecurrencePeriodTypesRepository>(() =>
        _i54.RecurrencePeriodTypesRepositoryImpl(
            gh<_i52.RecurrencePeriodTypesDataSource>()));
    gh.factory<_i55.ReminderTypesDataSource>(
        () => _i55.ReminderTypesDataSource());
    gh.factory<_i56.ReminderTypesRepository>(() =>
        _i57.ReminderTypesRepositoryImpl(gh<_i55.ReminderTypesDataSource>()));
    gh.factory<_i58.RideTypesDataSource>(() => _i58.RideTypesDataSource());
    gh.factory<_i59.RideTypesRepository>(
        () => _i60.RideTypesRepositoryImpl(gh<_i58.RideTypesDataSource>()));
    gh.factory<_i61.SaveAcquisitionTypesInLocalDbUseCase>(() =>
        _i61.SaveAcquisitionTypesInLocalDbUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i62.SaveCountriesUseCase>(
        () => _i62.SaveCountriesUseCase(gh<_i12.CountryRepository>()));
    gh.factory<_i63.SaveCurrenciesInLocalDbUseCase>(() =>
        _i63.SaveCurrenciesInLocalDbUseCase(gh<_i16.CurrencyRepository>()));
    gh.factory<_i64.SaveEngineFuelTypesInLocalDbUseCase>(() =>
        _i64.SaveEngineFuelTypesInLocalDbUseCase(
            gh<_i19.EngineFuelTypesRepository>()));
    gh.factory<_i65.SaveEngineTransmissionTypesInLocalDbUseCase>(() =>
        _i65.SaveEngineTransmissionTypesInLocalDbUseCase(
            gh<_i22.EngineTransmissionTypesRepository>()));
    gh.factory<_i66.SaveGenderDataInLocalDb>(
        () => _i66.SaveGenderDataInLocalDb(gh<_i25.GenderRepository>()));
    gh.factory<_i67.SaveMetricUnitsInLocalDbUseCase>(() =>
        _i67.SaveMetricUnitsInLocalDbUseCase(gh<_i40.MetricUnitsRepository>()));
    gh.factory<_i68.SaveMonthsUseCase>(
        () => _i68.SaveMonthsUseCase(gh<_i43.MonthRepository>()));
    gh.factory<_i69.SavePaymentMethodsDataInLocalDbUseCase>(() =>
        _i69.SavePaymentMethodsDataInLocalDbUseCase(
            gh<_i47.PaymentMethodsRepository>()));
    gh.factory<_i70.SavePressureUnitsInLocalDbUseCase>(() =>
        _i70.SavePressureUnitsInLocalDbUseCase(
            gh<_i50.PressureUnitsRepository>()));
    gh.factory<_i71.SaveRecurrencePeriodTypesInLocalDbUseCase>(() =>
        _i71.SaveRecurrencePeriodTypesInLocalDbUseCase(
            gh<_i53.RecurrencePeriodTypesRepository>()));
    gh.factory<_i72.SaveReminderTypesUseCase>(() =>
        _i72.SaveReminderTypesUseCase(gh<_i56.ReminderTypesRepository>()));
    gh.factory<_i73.SaveRideTypesDataInLocalDbUseCase>(() =>
        _i73.SaveRideTypesDataInLocalDbUseCase(gh<_i59.RideTypesRepository>()));
    gh.singleton<_i74.UserRepository>(_i74.UserRepository.create(
        gh<_i31.IPrefsManager>(instanceName: 'prefs')));
    gh.factory<_i75.WeatherUnitsDataSource>(
        () => _i75.WeatherUnitsDataSource());
    gh.factory<_i76.WeatherUnitsRepository>(() =>
        _i77.WeatherUnitsRepositoryImpl(gh<_i75.WeatherUnitsDataSource>()));
    gh.factory<_i78.AcquisitionTypesCubit>(() => _i78.AcquisitionTypesCubit(
          gh<_i10.ClearAcquisitionTypesUseCase>(),
          gh<_i27.GetAllAcquisitionTypesUseCase>(),
          gh<_i61.SaveAcquisitionTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i79.CheckPrimaryDataCubit>(() => _i79.CheckPrimaryDataCubit(
          gh<_i9.CheckPrimaryDataUseCase>(),
          gh<_i35.IsDownloadedUseCase>(),
        ));
    gh.factory<_i80.ClearCountryUseCase>(
        () => _i80.ClearCountryUseCase(gh<_i12.CountryRepository>()));
    gh.factory<_i81.ClearCurrencyUseCase>(
        () => _i81.ClearCurrencyUseCase(gh<_i16.CurrencyRepository>()));
    gh.factory<_i82.ClearEngineFuelTypesUseCase>(() =>
        _i82.ClearEngineFuelTypesUseCase(gh<_i19.EngineFuelTypesRepository>()));
    gh.factory<_i83.ClearEngineTransmissionTypesUseCase>(() =>
        _i83.ClearEngineTransmissionTypesUseCase(
            gh<_i22.EngineTransmissionTypesRepository>()));
    gh.factory<_i84.ClearGenderUseCase>(
        () => _i84.ClearGenderUseCase(gh<_i25.GenderRepository>()));
    gh.factory<_i85.ClearMetricUnitsUseCase>(
        () => _i85.ClearMetricUnitsUseCase(gh<_i40.MetricUnitsRepository>()));
    gh.factory<_i86.ClearMonthUseCase>(
        () => _i86.ClearMonthUseCase(gh<_i43.MonthRepository>()));
    gh.factory<_i87.ClearPaymentMethodsUseCase>(() =>
        _i87.ClearPaymentMethodsUseCase(gh<_i47.PaymentMethodsRepository>()));
    gh.factory<_i88.ClearPressureUnitsUseCase>(() =>
        _i88.ClearPressureUnitsUseCase(gh<_i50.PressureUnitsRepository>()));
    gh.factory<_i89.ClearRecurrencePeriodTypesUseCase>(() =>
        _i89.ClearRecurrencePeriodTypesUseCase(
            gh<_i53.RecurrencePeriodTypesRepository>()));
    gh.factory<_i90.ClearReminderTypeUseCase>(() =>
        _i90.ClearReminderTypeUseCase(gh<_i56.ReminderTypesRepository>()));
    gh.factory<_i91.ClearRideTypesUseCase>(
        () => _i91.ClearRideTypesUseCase(gh<_i59.RideTypesRepository>()));
    gh.factory<_i92.ClearWeatherUnitsUseCase>(
        () => _i92.ClearWeatherUnitsUseCase(gh<_i76.WeatherUnitsRepository>()));
    gh.factory<_i93.CountryCubit>(() => _i93.CountryCubit(
          gh<_i14.CountryUseCase>(),
          gh<_i62.SaveCountriesUseCase>(),
          gh<_i80.ClearCountryUseCase>(),
          gh<_i81.ClearCurrencyUseCase>(),
        ));
    gh.factory<_i94.CurrencyCubit>(() => _i94.CurrencyCubit(
          gh<_i81.ClearCurrencyUseCase>(),
          gh<_i28.GetAllCurrencyUseCase>(),
          gh<_i63.SaveCurrenciesInLocalDbUseCase>(),
        ));
    gh.factory<_i95.DownloadGenderUseCase>(
        () => _i95.DownloadGenderUseCase(gh<_i25.GenderRepository>()));
    gh.factory<_i96.DownloadPaymentMethodsUseCase>(() =>
        _i96.DownloadPaymentMethodsUseCase(
            gh<_i47.PaymentMethodsRepository>()));
    gh.factory<_i97.DownloadRideTypesUseCase>(
        () => _i97.DownloadRideTypesUseCase(gh<_i59.RideTypesRepository>()));
    gh.factory<_i98.DownloadWeatherUnitsUseCase>(() =>
        _i98.DownloadWeatherUnitsUseCase(gh<_i76.WeatherUnitsRepository>()));
    gh.factory<_i99.EngineFuelTypesCubit>(() => _i99.EngineFuelTypesCubit(
          gh<_i82.ClearEngineFuelTypesUseCase>(),
          gh<_i29.GetAllEngineFuelTypesUseCase>(),
          gh<_i64.SaveEngineFuelTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i100.EngineTransmissionTypesCubit>(
        () => _i100.EngineTransmissionTypesCubit(
              gh<_i83.ClearEngineTransmissionTypesUseCase>(),
              gh<_i30.GetAllEngineTransmissionTypesUseCase>(),
              gh<_i65.SaveEngineTransmissionTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i101.GenderCubit>(() => _i101.GenderCubit(
          gh<_i84.ClearGenderUseCase>(),
          gh<_i95.DownloadGenderUseCase>(),
          gh<_i66.SaveGenderDataInLocalDb>(),
        ));
    gh.factory<_i102.GetAllMetricUnitsUseCase>(
        () => _i102.GetAllMetricUnitsUseCase(gh<_i40.MetricUnitsRepository>()));
    gh.factory<_i103.GetAllPressureUnitsUseCase>(() =>
        _i103.GetAllPressureUnitsUseCase(gh<_i50.PressureUnitsRepository>()));
    gh.factory<_i104.GetAllRecurrencePeriodTypesUseCase>(() =>
        _i104.GetAllRecurrencePeriodTypesUseCase(
            gh<_i53.RecurrencePeriodTypesRepository>()));
    gh.factory<_i105.GetLanguagesUseCase>(
        () => _i105.GetLanguagesUseCase(gh<_i37.LanguageRepository>()));
    gh.factory<_i106.GetMonthsUseCase>(
        () => _i106.GetMonthsUseCase(gh<_i43.MonthRepository>()));
    gh.factory<_i107.GetReminderTypesUseCase>(() =>
        _i107.GetReminderTypesUseCase(gh<_i56.ReminderTypesRepository>()));
    gh.factory<_i108.LanguageCubit>(
        () => _i108.LanguageCubit(gh<_i105.GetLanguagesUseCase>()));
    gh.factory<_i109.MetricUnitsCubit>(() => _i109.MetricUnitsCubit(
          gh<_i85.ClearMetricUnitsUseCase>(),
          gh<_i102.GetAllMetricUnitsUseCase>(),
          gh<_i67.SaveMetricUnitsInLocalDbUseCase>(),
        ));
    gh.factory<_i110.MonthCubit>(() => _i110.MonthCubit(
          gh<_i106.GetMonthsUseCase>(),
          gh<_i68.SaveMonthsUseCase>(),
          gh<_i86.ClearMonthUseCase>(),
        ));
    gh.factory<_i111.PaymentMethodsCubit>(() => _i111.PaymentMethodsCubit(
          gh<_i87.ClearPaymentMethodsUseCase>(),
          gh<_i96.DownloadPaymentMethodsUseCase>(),
          gh<_i69.SavePaymentMethodsDataInLocalDbUseCase>(),
        ));
    gh.factory<_i112.PressureUnitsCubit>(() => _i112.PressureUnitsCubit(
          gh<_i14.CountryUseCase>(),
          gh<_i70.SavePressureUnitsInLocalDbUseCase>(),
          gh<_i88.ClearPressureUnitsUseCase>(),
          gh<_i103.GetAllPressureUnitsUseCase>(),
        ));
    gh.factory<_i113.RecurrencePeriodTypesCubit>(
        () => _i113.RecurrencePeriodTypesCubit(
              gh<_i89.ClearRecurrencePeriodTypesUseCase>(),
              gh<_i104.GetAllRecurrencePeriodTypesUseCase>(),
              gh<_i71.SaveRecurrencePeriodTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i114.ReminderTypesCubit>(() => _i114.ReminderTypesCubit(
          gh<_i107.GetReminderTypesUseCase>(),
          gh<_i72.SaveReminderTypesUseCase>(),
          gh<_i90.ClearReminderTypeUseCase>(),
        ));
    gh.factory<_i115.RideTypesCubit>(() => _i115.RideTypesCubit(
          gh<_i91.ClearRideTypesUseCase>(),
          gh<_i97.DownloadRideTypesUseCase>(),
          gh<_i73.SaveRideTypesDataInLocalDbUseCase>(),
        ));
    gh.factory<_i116.SaveWeatherUnitsDataInLocalDb>(() =>
        _i116.SaveWeatherUnitsDataInLocalDb(gh<_i76.WeatherUnitsRepository>()));
    gh.factory<_i117.WeatherUnitsCubit>(() => _i117.WeatherUnitsCubit(
          gh<_i92.ClearWeatherUnitsUseCase>(),
          gh<_i98.DownloadWeatherUnitsUseCase>(),
          gh<_i116.SaveWeatherUnitsDataInLocalDb>(),
        ));
    return this;
  }
}
