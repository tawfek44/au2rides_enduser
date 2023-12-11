// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:au2rides/core/network_state/network_state.dart' as _i45;
import 'package:au2rides/core/repositories/user_repository.dart' as _i66;
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
import 'package:au2rides/features/download_screen/data/datasources/ride_types_data_source.dart'
    as _i52;
import 'package:au2rides/features/download_screen/data/datasources/weather_units_data_source.dart'
    as _i67;
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
import 'package:au2rides/features/download_screen/data/repositories/ride_types_repository.dart'
    as _i54;
import 'package:au2rides/features/download_screen/data/repositories/weather_units_repository.dart'
    as _i69;
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
import 'package:au2rides/features/download_screen/domain/repository/ride_types_repository.dart'
    as _i53;
import 'package:au2rides/features/download_screen/domain/repository/weather_measuring_units_repository.dart'
    as _i68;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart'
    as _i10;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart'
    as _i27;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart'
    as _i55;
import 'package:au2rides/features/download_screen/domain/usecase/country/clear_all_data_country_usecase.dart'
    as _i72;
import 'package:au2rides/features/download_screen/domain/usecase/country/country_usecase.dart'
    as _i14;
import 'package:au2rides/features/download_screen/domain/usecase/country/save_country_usecase.dart'
    as _i56;
import 'package:au2rides/features/download_screen/domain/usecase/currency/currency_usecase.dart'
    as _i73;
import 'package:au2rides/features/download_screen/domain/usecase/currency/get_all_currencies_usecase.dart'
    as _i28;
import 'package:au2rides/features/download_screen/domain/usecase/currency/save_currencies_in_local_db_usecase.dart'
    as _i57;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/engine_fuel_types_usecase.dart'
    as _i74;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/get_all_engine_fuel_types_usecase.dart'
    as _i29;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/save_engine_fuel_types_in_local_db_usecase.dart'
    as _i58;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/engine_transmission_types_usecase.dart'
    as _i75;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/get_all_engine_transmission_types_usecase.dart'
    as _i30;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/save_engine_transmission_types_in_local_db_usecase.dart'
    as _i59;
import 'package:au2rides/features/download_screen/domain/usecase/gender/clear_gender_local_usecase.dart'
    as _i76;
import 'package:au2rides/features/download_screen/domain/usecase/gender/download_gender_network_usecase.dart'
    as _i85;
import 'package:au2rides/features/download_screen/domain/usecase/gender/save_gender_data_usecase.dart'
    as _i60;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/clear_metric_units_usecase.dart'
    as _i77;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/get_all_metric_units_usecase.dart'
    as _i92;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/save_metric_units_in_local_db_usecase.dart'
    as _i61;
import 'package:au2rides/features/download_screen/domain/usecase/month/clear_all_data_month_usecase.dart'
    as _i78;
import 'package:au2rides/features/download_screen/domain/usecase/month/get_months_usecase.dart'
    as _i95;
import 'package:au2rides/features/download_screen/domain/usecase/month/save_months_usecase.dart'
    as _i62;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/clear_payment_methods_local_usecase.dart'
    as _i79;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/download_payment_methods_network_usecase.dart'
    as _i86;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/save_payment_methods_data_usecase.dart'
    as _i63;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/clear_all_pressure_units_usecase.dart'
    as _i80;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/get_all_pressure_units_usecase.dart'
    as _i93;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/save_pressure_units_in_local_db_usecase.dart'
    as _i64;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/clear_ride_types_local_usecase.dart'
    as _i81;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/download_ride_types_network_usecase.dart'
    as _i87;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/save_ride_types_data_usecase.dart'
    as _i65;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/clear_weather_units_local_usecase.dart'
    as _i82;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/download_weather_units_network_usecase.dart'
    as _i88;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/save_weather_units_data_usecase.dart'
    as _i102;
import 'package:au2rides/features/download_screen/presentation/bloc/acquisition_types_cubit/acquisition_types_cubit.dart'
    as _i70;
import 'package:au2rides/features/download_screen/presentation/bloc/country_cubit/country_cubit.dart'
    as _i83;
import 'package:au2rides/features/download_screen/presentation/bloc/currency_cubit/currency_cubit.dart'
    as _i84;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_fuel_types_cubit/engine_fuel_types_cubit.dart'
    as _i89;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_transmission_types_cubit/engine_transmission_types_cubit.dart'
    as _i90;
import 'package:au2rides/features/download_screen/presentation/bloc/gender_cubit/gender_cubit.dart'
    as _i91;
import 'package:au2rides/features/download_screen/presentation/bloc/metric_untis_cubit/metric_units_cubit.dart'
    as _i97;
import 'package:au2rides/features/download_screen/presentation/bloc/month_cubit/month_cubit.dart'
    as _i98;
import 'package:au2rides/features/download_screen/presentation/bloc/payment_methods/payment_methods_cubit.dart'
    as _i99;
import 'package:au2rides/features/download_screen/presentation/bloc/pressure_units_cubit/pressure_units_cubit.dart'
    as _i100;
import 'package:au2rides/features/download_screen/presentation/bloc/ride_types/ride_types_cubit.dart'
    as _i101;
import 'package:au2rides/features/download_screen/presentation/bloc/weather_units/weather_units_cubit.dart'
    as _i103;
import 'package:au2rides/features/language_screen/data/data_sources/local/language_local_database.dart'
    as _i36;
import 'package:au2rides/features/language_screen/data/repositories/langauge_repository_impl.dart'
    as _i38;
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart'
    as _i37;
import 'package:au2rides/features/language_screen/domain/use_cases/language_use_case.dart'
    as _i94;
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart'
    as _i96;
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
    as _i71;
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
    gh.factory<_i52.RideTypesDataSource>(() => _i52.RideTypesDataSource());
    gh.factory<_i53.RideTypesRepository>(
        () => _i54.RideTypesRepositoryImpl(gh<_i52.RideTypesDataSource>()));
    gh.factory<_i55.SaveAcquisitionTypesInLocalDbUseCase>(() =>
        _i55.SaveAcquisitionTypesInLocalDbUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i56.SaveCountriesUseCase>(
        () => _i56.SaveCountriesUseCase(gh<_i12.CountryRepository>()));
    gh.factory<_i57.SaveCurrenciesInLocalDbUseCase>(() =>
        _i57.SaveCurrenciesInLocalDbUseCase(gh<_i16.CurrencyRepository>()));
    gh.factory<_i58.SaveEngineFuelTypesInLocalDbUseCase>(() =>
        _i58.SaveEngineFuelTypesInLocalDbUseCase(
            gh<_i19.EngineFuelTypesRepository>()));
    gh.factory<_i59.SaveEngineTransmissionTypesInLocalDbUseCase>(() =>
        _i59.SaveEngineTransmissionTypesInLocalDbUseCase(
            gh<_i22.EngineTransmissionTypesRepository>()));
    gh.factory<_i60.SaveGenderDataInLocalDb>(
        () => _i60.SaveGenderDataInLocalDb(gh<_i25.GenderRepository>()));
    gh.factory<_i61.SaveMetricUnitsInLocalDbUseCase>(() =>
        _i61.SaveMetricUnitsInLocalDbUseCase(gh<_i40.MetricUnitsRepository>()));
    gh.factory<_i62.SaveMonthsUseCase>(
        () => _i62.SaveMonthsUseCase(gh<_i43.MonthRepository>()));
    gh.factory<_i63.SavePaymentMethodsDataInLocalDbUseCase>(() =>
        _i63.SavePaymentMethodsDataInLocalDbUseCase(
            gh<_i47.PaymentMethodsRepository>()));
    gh.factory<_i64.SavePressureUnitsInLocalDbUseCase>(() =>
        _i64.SavePressureUnitsInLocalDbUseCase(
            gh<_i50.PressureUnitsRepository>()));
    gh.factory<_i65.SaveRideTypesDataInLocalDbUseCase>(() =>
        _i65.SaveRideTypesDataInLocalDbUseCase(gh<_i53.RideTypesRepository>()));
    gh.singleton<_i66.UserRepository>(_i66.UserRepository.create(
        gh<_i31.IPrefsManager>(instanceName: 'prefs')));
    gh.factory<_i67.WeatherUnitsDataSource>(
        () => _i67.WeatherUnitsDataSource());
    gh.factory<_i68.WeatherUnitsRepository>(() =>
        _i69.WeatherUnitsRepositoryImpl(gh<_i67.WeatherUnitsDataSource>()));
    gh.factory<_i70.AcquisitionTypesCubit>(() => _i70.AcquisitionTypesCubit(
          gh<_i10.ClearAcquisitionTypesUseCase>(),
          gh<_i27.GetAllAcquisitionTypesUseCase>(),
          gh<_i55.SaveAcquisitionTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i71.CheckPrimaryDataCubit>(() => _i71.CheckPrimaryDataCubit(
          gh<_i9.CheckPrimaryDataUseCase>(),
          gh<_i35.IsDownloadedUseCase>(),
        ));
    gh.factory<_i72.ClearCountryUseCase>(
        () => _i72.ClearCountryUseCase(gh<_i12.CountryRepository>()));
    gh.factory<_i73.ClearCurrencyUseCase>(
        () => _i73.ClearCurrencyUseCase(gh<_i16.CurrencyRepository>()));
    gh.factory<_i74.ClearEngineFuelTypesUseCase>(() =>
        _i74.ClearEngineFuelTypesUseCase(gh<_i19.EngineFuelTypesRepository>()));
    gh.factory<_i75.ClearEngineTransmissionTypesUseCase>(() =>
        _i75.ClearEngineTransmissionTypesUseCase(
            gh<_i22.EngineTransmissionTypesRepository>()));
    gh.factory<_i76.ClearGenderUseCase>(
        () => _i76.ClearGenderUseCase(gh<_i25.GenderRepository>()));
    gh.factory<_i77.ClearMetricUnitsUseCase>(
        () => _i77.ClearMetricUnitsUseCase(gh<_i40.MetricUnitsRepository>()));
    gh.factory<_i78.ClearMonthUseCase>(
        () => _i78.ClearMonthUseCase(gh<_i43.MonthRepository>()));
    gh.factory<_i79.ClearPaymentMethodsUseCase>(() =>
        _i79.ClearPaymentMethodsUseCase(gh<_i47.PaymentMethodsRepository>()));
    gh.factory<_i80.ClearPressureUnitsUseCase>(() =>
        _i80.ClearPressureUnitsUseCase(gh<_i50.PressureUnitsRepository>()));
    gh.factory<_i81.ClearRideTypesUseCase>(
        () => _i81.ClearRideTypesUseCase(gh<_i53.RideTypesRepository>()));
    gh.factory<_i82.ClearWeatherUnitsUseCase>(
        () => _i82.ClearWeatherUnitsUseCase(gh<_i68.WeatherUnitsRepository>()));
    gh.factory<_i83.CountryCubit>(() => _i83.CountryCubit(
          gh<_i14.CountryUseCase>(),
          gh<_i56.SaveCountriesUseCase>(),
          gh<_i72.ClearCountryUseCase>(),
          gh<_i73.ClearCurrencyUseCase>(),
        ));
    gh.factory<_i84.CurrencyCubit>(() => _i84.CurrencyCubit(
          gh<_i73.ClearCurrencyUseCase>(),
          gh<_i28.GetAllCurrencyUseCase>(),
          gh<_i57.SaveCurrenciesInLocalDbUseCase>(),
        ));
    gh.factory<_i85.DownloadGenderUseCase>(
        () => _i85.DownloadGenderUseCase(gh<_i25.GenderRepository>()));
    gh.factory<_i86.DownloadPaymentMethodsUseCase>(() =>
        _i86.DownloadPaymentMethodsUseCase(
            gh<_i47.PaymentMethodsRepository>()));
    gh.factory<_i87.DownloadRideTypesUseCase>(
        () => _i87.DownloadRideTypesUseCase(gh<_i53.RideTypesRepository>()));
    gh.factory<_i88.DownloadWeatherUnitsUseCase>(() =>
        _i88.DownloadWeatherUnitsUseCase(gh<_i68.WeatherUnitsRepository>()));
    gh.factory<_i89.EngineFuelTypesCubit>(() => _i89.EngineFuelTypesCubit(
          gh<_i74.ClearEngineFuelTypesUseCase>(),
          gh<_i29.GetAllEngineFuelTypesUseCase>(),
          gh<_i58.SaveEngineFuelTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i90.EngineTransmissionTypesCubit>(
        () => _i90.EngineTransmissionTypesCubit(
              gh<_i75.ClearEngineTransmissionTypesUseCase>(),
              gh<_i30.GetAllEngineTransmissionTypesUseCase>(),
              gh<_i59.SaveEngineTransmissionTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i91.GenderCubit>(() => _i91.GenderCubit(
          gh<_i76.ClearGenderUseCase>(),
          gh<_i85.DownloadGenderUseCase>(),
          gh<_i60.SaveGenderDataInLocalDb>(),
        ));
    gh.factory<_i92.GetAllMetricUnitsUseCase>(
        () => _i92.GetAllMetricUnitsUseCase(gh<_i40.MetricUnitsRepository>()));
    gh.factory<_i93.GetAllPressureUnitsUseCase>(() =>
        _i93.GetAllPressureUnitsUseCase(gh<_i50.PressureUnitsRepository>()));
    gh.factory<_i94.GetLanguagesUseCase>(
        () => _i94.GetLanguagesUseCase(gh<_i37.LanguageRepository>()));
    gh.factory<_i95.GetMonthsUseCase>(
        () => _i95.GetMonthsUseCase(gh<_i43.MonthRepository>()));
    gh.factory<_i96.LanguageCubit>(
        () => _i96.LanguageCubit(gh<_i94.GetLanguagesUseCase>()));
    gh.factory<_i97.MetricUnitsCubit>(() => _i97.MetricUnitsCubit(
          gh<_i77.ClearMetricUnitsUseCase>(),
          gh<_i92.GetAllMetricUnitsUseCase>(),
          gh<_i61.SaveMetricUnitsInLocalDbUseCase>(),
        ));
    gh.factory<_i98.MonthCubit>(() => _i98.MonthCubit(
          gh<_i95.GetMonthsUseCase>(),
          gh<_i62.SaveMonthsUseCase>(),
          gh<_i78.ClearMonthUseCase>(),
        ));
    gh.factory<_i99.PaymentMethodsCubit>(() => _i99.PaymentMethodsCubit(
          gh<_i79.ClearPaymentMethodsUseCase>(),
          gh<_i86.DownloadPaymentMethodsUseCase>(),
          gh<_i63.SavePaymentMethodsDataInLocalDbUseCase>(),
        ));
    gh.factory<_i100.PressureUnitsCubit>(() => _i100.PressureUnitsCubit(
          gh<_i14.CountryUseCase>(),
          gh<_i64.SavePressureUnitsInLocalDbUseCase>(),
          gh<_i80.ClearPressureUnitsUseCase>(),
          gh<_i93.GetAllPressureUnitsUseCase>(),
        ));
    gh.factory<_i101.RideTypesCubit>(() => _i101.RideTypesCubit(
          gh<_i81.ClearRideTypesUseCase>(),
          gh<_i87.DownloadRideTypesUseCase>(),
          gh<_i65.SaveRideTypesDataInLocalDbUseCase>(),
        ));
    gh.factory<_i102.SaveWeatherUnitsDataInLocalDb>(() =>
        _i102.SaveWeatherUnitsDataInLocalDb(gh<_i68.WeatherUnitsRepository>()));
    gh.factory<_i103.WeatherUnitsCubit>(() => _i103.WeatherUnitsCubit(
          gh<_i82.ClearWeatherUnitsUseCase>(),
          gh<_i88.DownloadWeatherUnitsUseCase>(),
          gh<_i102.SaveWeatherUnitsDataInLocalDb>(),
        ));
    return this;
  }
}
