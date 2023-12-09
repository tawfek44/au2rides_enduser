// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:au2rides/core/network_state/network_state.dart' as _i37;
import 'package:au2rides/core/repositories/user_repository.dart' as _i56;
import 'package:au2rides/core/shared_preference_manager/shared_preference_manager.dart'
    as _i23;
import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart'
    as _i3;
import 'package:au2rides/features/download_screen/data/datasources/country_datasource.dart'
    as _i11;
import 'package:au2rides/features/download_screen/data/datasources/currency_datasource.dart'
    as _i15;
import 'package:au2rides/features/download_screen/data/datasources/gender_data_source.dart'
    as _i18;
import 'package:au2rides/features/download_screen/data/datasources/metric_units_datasource.dart'
    as _i31;
import 'package:au2rides/features/download_screen/data/datasources/month_datasource.dart'
    as _i34;
import 'package:au2rides/features/download_screen/data/datasources/payment_methods_data_source.dart'
    as _i38;
import 'package:au2rides/features/download_screen/data/datasources/pressure_units_datasource.dart'
    as _i41;
import 'package:au2rides/features/download_screen/data/datasources/ride_types_data_source.dart'
    as _i44;
import 'package:au2rides/features/download_screen/data/datasources/weather_units_data_source.dart'
    as _i57;
import 'package:au2rides/features/download_screen/data/repositories/acquisition_types_repository.dart'
    as _i5;
import 'package:au2rides/features/download_screen/data/repositories/country_repository.dart'
    as _i13;
import 'package:au2rides/features/download_screen/data/repositories/currency_repository.dart'
    as _i17;
import 'package:au2rides/features/download_screen/data/repositories/gender_repository.dart'
    as _i20;
import 'package:au2rides/features/download_screen/data/repositories/metric_units_repository.dart'
    as _i33;
import 'package:au2rides/features/download_screen/data/repositories/month_repository.dart'
    as _i36;
import 'package:au2rides/features/download_screen/data/repositories/payment_methods_repository.dart'
    as _i40;
import 'package:au2rides/features/download_screen/data/repositories/pressure_units_repository.dart'
    as _i43;
import 'package:au2rides/features/download_screen/data/repositories/ride_types_repository.dart'
    as _i46;
import 'package:au2rides/features/download_screen/data/repositories/weather_units_repository.dart'
    as _i59;
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart'
    as _i4;
import 'package:au2rides/features/download_screen/domain/repository/country_repository.dart'
    as _i12;
import 'package:au2rides/features/download_screen/domain/repository/currency_repository.dart'
    as _i16;
import 'package:au2rides/features/download_screen/domain/repository/gender_repository.dart'
    as _i19;
import 'package:au2rides/features/download_screen/domain/repository/metric_units_repository.dart'
    as _i32;
import 'package:au2rides/features/download_screen/domain/repository/month_repository.dart'
    as _i35;
import 'package:au2rides/features/download_screen/domain/repository/payment_methods_repository.dart'
    as _i39;
import 'package:au2rides/features/download_screen/domain/repository/pressure_units_repository.dart'
    as _i42;
import 'package:au2rides/features/download_screen/domain/repository/ride_types_repository.dart'
    as _i45;
import 'package:au2rides/features/download_screen/domain/repository/weather_measuring_units_repository.dart'
    as _i58;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart'
    as _i10;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart'
    as _i21;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart'
    as _i47;
import 'package:au2rides/features/download_screen/domain/usecase/country/clear_all_data_country_usecase.dart'
    as _i62;
import 'package:au2rides/features/download_screen/domain/usecase/country/country_usecase.dart'
    as _i14;
import 'package:au2rides/features/download_screen/domain/usecase/country/save_country_usecase.dart'
    as _i48;
import 'package:au2rides/features/download_screen/domain/usecase/currency/currency_usecase.dart'
    as _i63;
import 'package:au2rides/features/download_screen/domain/usecase/currency/get_all_currencies_usecase.dart'
    as _i22;
import 'package:au2rides/features/download_screen/domain/usecase/currency/save_currencies_in_local_db_usecase.dart'
    as _i49;
import 'package:au2rides/features/download_screen/domain/usecase/gender/clear_gender_local_usecase.dart'
    as _i64;
import 'package:au2rides/features/download_screen/domain/usecase/gender/download_gender_network_usecase.dart'
    as _i73;
import 'package:au2rides/features/download_screen/domain/usecase/gender/save_gender_data_usecase.dart'
    as _i50;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/clear_metric_units_usecase.dart'
    as _i65;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/get_all_metric_units_usecase.dart'
    as _i78;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/save_metric_units_in_local_db_usecase.dart'
    as _i51;
import 'package:au2rides/features/download_screen/domain/usecase/month/clear_all_data_month_usecase.dart'
    as _i66;
import 'package:au2rides/features/download_screen/domain/usecase/month/get_months_usecase.dart'
    as _i81;
import 'package:au2rides/features/download_screen/domain/usecase/month/save_months_usecase.dart'
    as _i52;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/clear_payment_methods_local_usecase.dart'
    as _i67;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/download_payment_methods_network_usecase.dart'
    as _i74;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/save_payment_methods_data_usecase.dart'
    as _i53;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/clear_all_pressure_units_usecase.dart'
    as _i68;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/get_all_pressure_units_usecase.dart'
    as _i79;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/save_pressure_units_in_local_db_usecase.dart'
    as _i54;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/clear_ride_types_local_usecase.dart'
    as _i69;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/download_ride_types_network_usecase.dart'
    as _i75;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/save_ride_types_data_usecase.dart'
    as _i55;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/clear_weather_units_local_usecase.dart'
    as _i70;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/download_weather_units_network_usecase.dart'
    as _i76;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/save_weather_units_data_usecase.dart'
    as _i88;
import 'package:au2rides/features/download_screen/presentation/bloc/acquisition_types_cubit/acquisition_types_cubit.dart'
    as _i60;
import 'package:au2rides/features/download_screen/presentation/bloc/country_cubit/country_cubit.dart'
    as _i71;
import 'package:au2rides/features/download_screen/presentation/bloc/currency_cubit/currency_cubit.dart'
    as _i72;
import 'package:au2rides/features/download_screen/presentation/bloc/gender_cubit/gender_cubit.dart'
    as _i77;
import 'package:au2rides/features/download_screen/presentation/bloc/metric_untis_cubit/metric_units_cubit.dart'
    as _i83;
import 'package:au2rides/features/download_screen/presentation/bloc/month_cubit/month_cubit.dart'
    as _i84;
import 'package:au2rides/features/download_screen/presentation/bloc/payment_methods/payment_methods_cubit.dart'
    as _i85;
import 'package:au2rides/features/download_screen/presentation/bloc/pressure_units_cubit/pressure_units_cubit.dart'
    as _i86;
import 'package:au2rides/features/download_screen/presentation/bloc/ride_types/ride_types_cubit.dart'
    as _i87;
import 'package:au2rides/features/download_screen/presentation/bloc/weather_units/weather_units_cubit.dart'
    as _i89;
import 'package:au2rides/features/language_screen/data/data_sources/local/language_local_database.dart'
    as _i28;
import 'package:au2rides/features/language_screen/data/repositories/langauge_repository_impl.dart'
    as _i30;
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart'
    as _i29;
import 'package:au2rides/features/language_screen/domain/use_cases/language_use_case.dart'
    as _i80;
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart'
    as _i82;
import 'package:au2rides/features/splash_screen/data/datasources/check_primary_data_data_scource.dart'
    as _i6;
import 'package:au2rides/features/splash_screen/data/datasources/isDownloaded_data_scource.dart'
    as _i24;
import 'package:au2rides/features/splash_screen/data/repositories/check_primary_data_repository_imp.dart'
    as _i8;
import 'package:au2rides/features/splash_screen/data/repositories/is_downloaded_repository_imp.dart'
    as _i26;
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart'
    as _i7;
import 'package:au2rides/features/splash_screen/domain/repositories/is_downloaded_repository.dart'
    as _i25;
import 'package:au2rides/features/splash_screen/domain/usecases/check_primary_data_usecase.dart'
    as _i9;
import 'package:au2rides/features/splash_screen/domain/usecases/is_downloaded_usecase.dart'
    as _i27;
import 'package:au2rides/features/splash_screen/presentation/bloc/check_primary_data_cubit.dart'
    as _i61;
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
    gh.factory<_i18.GenderDataSource>(() => _i18.GenderDataSource());
    gh.factory<_i19.GenderRepository>(
        () => _i20.GenderRepositoryImpl(gh<_i18.GenderDataSource>()));
    gh.factory<_i21.GetAllAcquisitionTypesUseCase>(() =>
        _i21.GetAllAcquisitionTypesUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i22.GetAllCurrencyUseCase>(
        () => _i22.GetAllCurrencyUseCase(gh<_i16.CurrencyRepository>()));
    await gh.factoryAsync<_i23.IPrefsManager>(
      () => _i23.PrefsManager.create(),
      instanceName: 'prefs',
      preResolve: true,
    );
    gh.factory<_i24.IsDownloadedDataSource>(
        () => _i24.IsDownloadedDataSource());
    gh.factory<_i25.IsDownloadedRepository>(
        () => _i26.IsDownloadedImpl(gh<_i24.IsDownloadedDataSource>()));
    gh.factory<_i27.IsDownloadedUseCase>(
        () => _i27.IsDownloadedUseCase(gh<_i25.IsDownloadedRepository>()));
    gh.factory<_i28.LanguageLocalDatabase>(() => _i28.LanguageLocalDatabase());
    gh.factory<_i29.LanguageRepository>(
        () => _i30.LanguageRepositoryImpl(gh<_i28.LanguageLocalDatabase>()));
    gh.factory<_i31.MetricUnitsDataSource>(() => _i31.MetricUnitsDataSource());
    gh.factory<_i32.MetricUnitsRepository>(
        () => _i33.MetricUnitsRepositoryImpl(gh<_i31.MetricUnitsDataSource>()));
    gh.factory<_i34.MonthDataSource>(() => _i34.MonthDataSource());
    gh.factory<_i35.MonthRepository>(
        () => _i36.MonthRepositoryImpl(gh<_i34.MonthDataSource>()));
    gh.factory<_i37.NetworkInfo>(() => _i37.NetworkInfoImpl.create());
    gh.factory<_i38.PaymentMethodsDataSource>(
        () => _i38.PaymentMethodsDataSource());
    gh.factory<_i39.PaymentMethodsRepository>(() =>
        _i40.PaymentMethodsRepositoryImpl(gh<_i38.PaymentMethodsDataSource>()));
    gh.factory<_i41.PressureUnitsDataSource>(
        () => _i41.PressureUnitsDataSource());
    gh.factory<_i42.PressureUnitsRepository>(() =>
        _i43.PressureUnitsRepositoryImpl(gh<_i41.PressureUnitsDataSource>()));
    gh.factory<_i44.RideTypesDataSource>(() => _i44.RideTypesDataSource());
    gh.factory<_i45.RideTypesRepository>(
        () => _i46.RideTypesRepositoryImpl(gh<_i44.RideTypesDataSource>()));
    gh.factory<_i47.SaveAcquisitionTypesInLocalDbUseCase>(() =>
        _i47.SaveAcquisitionTypesInLocalDbUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i48.SaveCountriesUseCase>(
        () => _i48.SaveCountriesUseCase(gh<_i12.CountryRepository>()));
    gh.factory<_i49.SaveCurrenciesInLocalDbUseCase>(() =>
        _i49.SaveCurrenciesInLocalDbUseCase(gh<_i16.CurrencyRepository>()));
    gh.factory<_i50.SaveGenderDataInLocalDb>(
        () => _i50.SaveGenderDataInLocalDb(gh<_i19.GenderRepository>()));
    gh.factory<_i51.SaveMetricUnitsInLocalDbUseCase>(() =>
        _i51.SaveMetricUnitsInLocalDbUseCase(gh<_i32.MetricUnitsRepository>()));
    gh.factory<_i52.SaveMonthsUseCase>(
        () => _i52.SaveMonthsUseCase(gh<_i35.MonthRepository>()));
    gh.factory<_i53.SavePaymentMethodsDataInLocalDbUseCase>(() =>
        _i53.SavePaymentMethodsDataInLocalDbUseCase(
            gh<_i39.PaymentMethodsRepository>()));
    gh.factory<_i54.SavePressureUnitsInLocalDbUseCase>(() =>
        _i54.SavePressureUnitsInLocalDbUseCase(
            gh<_i42.PressureUnitsRepository>()));
    gh.factory<_i55.SaveRideTypesDataInLocalDbUseCase>(() =>
        _i55.SaveRideTypesDataInLocalDbUseCase(gh<_i45.RideTypesRepository>()));
    gh.singleton<_i56.UserRepository>(_i56.UserRepository.create(
        gh<_i23.IPrefsManager>(instanceName: 'prefs')));
    gh.factory<_i57.WeatherUnitsDataSource>(
        () => _i57.WeatherUnitsDataSource());
    gh.factory<_i58.WeatherUnitsRepository>(() =>
        _i59.WeatherUnitsRepositoryImpl(gh<_i57.WeatherUnitsDataSource>()));
    gh.factory<_i60.AcquisitionTypesCubit>(() => _i60.AcquisitionTypesCubit(
          gh<_i10.ClearAcquisitionTypesUseCase>(),
          gh<_i21.GetAllAcquisitionTypesUseCase>(),
          gh<_i47.SaveAcquisitionTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i61.CheckPrimaryDataCubit>(() => _i61.CheckPrimaryDataCubit(
          gh<_i9.CheckPrimaryDataUseCase>(),
          gh<_i27.IsDownloadedUseCase>(),
        ));
    gh.factory<_i62.ClearCountryUseCase>(
        () => _i62.ClearCountryUseCase(gh<_i12.CountryRepository>()));
    gh.factory<_i63.ClearCurrencyUseCase>(
        () => _i63.ClearCurrencyUseCase(gh<_i16.CurrencyRepository>()));
    gh.factory<_i64.ClearGenderUseCase>(
        () => _i64.ClearGenderUseCase(gh<_i19.GenderRepository>()));
    gh.factory<_i65.ClearMetricUnitsUseCase>(
        () => _i65.ClearMetricUnitsUseCase(gh<_i32.MetricUnitsRepository>()));
    gh.factory<_i66.ClearMonthUseCase>(
        () => _i66.ClearMonthUseCase(gh<_i35.MonthRepository>()));
    gh.factory<_i67.ClearPaymentMethodsUseCase>(() =>
        _i67.ClearPaymentMethodsUseCase(gh<_i39.PaymentMethodsRepository>()));
    gh.factory<_i68.ClearPressureUnitsUseCase>(() =>
        _i68.ClearPressureUnitsUseCase(gh<_i42.PressureUnitsRepository>()));
    gh.factory<_i69.ClearRideTypesUseCase>(
        () => _i69.ClearRideTypesUseCase(gh<_i45.RideTypesRepository>()));
    gh.factory<_i70.ClearWeatherUnitsUseCase>(
        () => _i70.ClearWeatherUnitsUseCase(gh<_i58.WeatherUnitsRepository>()));
    gh.factory<_i71.CountryCubit>(() => _i71.CountryCubit(
          gh<_i14.CountryUseCase>(),
          gh<_i48.SaveCountriesUseCase>(),
          gh<_i62.ClearCountryUseCase>(),
          gh<_i63.ClearCurrencyUseCase>(),
        ));
    gh.factory<_i72.CurrencyCubit>(() => _i72.CurrencyCubit(
          gh<_i63.ClearCurrencyUseCase>(),
          gh<_i22.GetAllCurrencyUseCase>(),
          gh<_i49.SaveCurrenciesInLocalDbUseCase>(),
        ));
    gh.factory<_i73.DownloadGenderUseCase>(
        () => _i73.DownloadGenderUseCase(gh<_i19.GenderRepository>()));
    gh.factory<_i74.DownloadPaymentMethodsUseCase>(() =>
        _i74.DownloadPaymentMethodsUseCase(
            gh<_i39.PaymentMethodsRepository>()));
    gh.factory<_i75.DownloadRideTypesUseCase>(
        () => _i75.DownloadRideTypesUseCase(gh<_i45.RideTypesRepository>()));
    gh.factory<_i76.DownloadWeatherUnitsUseCase>(() =>
        _i76.DownloadWeatherUnitsUseCase(gh<_i58.WeatherUnitsRepository>()));
    gh.factory<_i77.GenderCubit>(() => _i77.GenderCubit(
          gh<_i64.ClearGenderUseCase>(),
          gh<_i73.DownloadGenderUseCase>(),
          gh<_i50.SaveGenderDataInLocalDb>(),
        ));
    gh.factory<_i78.GetAllMetricUnitsUseCase>(
        () => _i78.GetAllMetricUnitsUseCase(gh<_i32.MetricUnitsRepository>()));
    gh.factory<_i79.GetAllPressureUnitsUseCase>(() =>
        _i79.GetAllPressureUnitsUseCase(gh<_i42.PressureUnitsRepository>()));
    gh.factory<_i80.GetLanguagesUseCase>(
        () => _i80.GetLanguagesUseCase(gh<_i29.LanguageRepository>()));
    gh.factory<_i81.GetMonthsUseCase>(
        () => _i81.GetMonthsUseCase(gh<_i35.MonthRepository>()));
    gh.factory<_i82.LanguageCubit>(
        () => _i82.LanguageCubit(gh<_i80.GetLanguagesUseCase>()));
    gh.factory<_i83.MetricUnitsCubit>(() => _i83.MetricUnitsCubit(
          gh<_i65.ClearMetricUnitsUseCase>(),
          gh<_i78.GetAllMetricUnitsUseCase>(),
          gh<_i51.SaveMetricUnitsInLocalDbUseCase>(),
        ));
    gh.factory<_i84.MonthCubit>(() => _i84.MonthCubit(
          gh<_i81.GetMonthsUseCase>(),
          gh<_i52.SaveMonthsUseCase>(),
          gh<_i66.ClearMonthUseCase>(),
        ));
    gh.factory<_i85.PaymentMethodsCubit>(() => _i85.PaymentMethodsCubit(
          gh<_i67.ClearPaymentMethodsUseCase>(),
          gh<_i74.DownloadPaymentMethodsUseCase>(),
          gh<_i53.SavePaymentMethodsDataInLocalDbUseCase>(),
        ));
    gh.factory<_i86.PressureUnitsCubit>(() => _i86.PressureUnitsCubit(
          gh<_i14.CountryUseCase>(),
          gh<_i54.SavePressureUnitsInLocalDbUseCase>(),
          gh<_i68.ClearPressureUnitsUseCase>(),
          gh<_i79.GetAllPressureUnitsUseCase>(),
        ));
    gh.factory<_i87.RideTypesCubit>(() => _i87.RideTypesCubit(
          gh<_i69.ClearRideTypesUseCase>(),
          gh<_i75.DownloadRideTypesUseCase>(),
          gh<_i55.SaveRideTypesDataInLocalDbUseCase>(),
        ));
    gh.factory<_i88.SaveWeatherUnitsDataInLocalDb>(() =>
        _i88.SaveWeatherUnitsDataInLocalDb(gh<_i58.WeatherUnitsRepository>()));
    gh.factory<_i89.WeatherUnitsCubit>(() => _i89.WeatherUnitsCubit(
          gh<_i70.ClearWeatherUnitsUseCase>(),
          gh<_i76.DownloadWeatherUnitsUseCase>(),
          gh<_i88.SaveWeatherUnitsDataInLocalDb>(),
        ));
    return this;
  }
}
