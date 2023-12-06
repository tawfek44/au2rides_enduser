// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:au2rides/core/network_state/network_state.dart' as _i29;
import 'package:au2rides/core/repositories/user_repository.dart' as _i46;
import 'package:au2rides/core/shared_preference_manager/shared_preference_manager.dart'
    as _i18;
import 'package:au2rides/features/download_screen/data/datasources/country_datasource.dart'
    as _i7;
import 'package:au2rides/features/download_screen/data/datasources/currency_datasource.dart'
    as _i11;
import 'package:au2rides/features/download_screen/data/datasources/gender_data_source.dart'
    as _i14;
import 'package:au2rides/features/download_screen/data/datasources/month_datasource.dart'
    as _i26;
import 'package:au2rides/features/download_screen/data/datasources/payment_methods_data_source.dart'
    as _i30;
import 'package:au2rides/features/download_screen/data/datasources/pressure_units_datasource.dart'
    as _i33;
import 'package:au2rides/features/download_screen/data/datasources/ride_types_data_source.dart'
    as _i36;
import 'package:au2rides/features/download_screen/data/datasources/weather_units_data_source.dart'
    as _i47;
import 'package:au2rides/features/download_screen/data/repositories/country_repository.dart'
    as _i9;
import 'package:au2rides/features/download_screen/data/repositories/currency_repository.dart'
    as _i13;
import 'package:au2rides/features/download_screen/data/repositories/gender_repository.dart'
    as _i16;
import 'package:au2rides/features/download_screen/data/repositories/month_repository.dart'
    as _i28;
import 'package:au2rides/features/download_screen/data/repositories/payment_methods_repository.dart'
    as _i32;
import 'package:au2rides/features/download_screen/data/repositories/pressure_units_repository.dart'
    as _i35;
import 'package:au2rides/features/download_screen/data/repositories/ride_types_repository.dart'
    as _i38;
import 'package:au2rides/features/download_screen/data/repositories/weather_units_repository.dart'
    as _i49;
import 'package:au2rides/features/download_screen/domain/repository/country_repository.dart'
    as _i8;
import 'package:au2rides/features/download_screen/domain/repository/currency_repository.dart'
    as _i12;
import 'package:au2rides/features/download_screen/domain/repository/gender_repository.dart'
    as _i15;
import 'package:au2rides/features/download_screen/domain/repository/month_repository.dart'
    as _i27;
import 'package:au2rides/features/download_screen/domain/repository/payment_methods_repository.dart'
    as _i31;
import 'package:au2rides/features/download_screen/domain/repository/pressure_units_repository.dart'
    as _i34;
import 'package:au2rides/features/download_screen/domain/repository/ride_types_repository.dart'
    as _i37;
import 'package:au2rides/features/download_screen/domain/repository/weather_measuring_units_repository.dart'
    as _i48;
import 'package:au2rides/features/download_screen/domain/usecase/country/clear_all_data_country_usecase.dart'
    as _i51;
import 'package:au2rides/features/download_screen/domain/usecase/country/country_usecase.dart'
    as _i10;
import 'package:au2rides/features/download_screen/domain/usecase/country/save_country_usecase.dart'
    as _i39;
import 'package:au2rides/features/download_screen/domain/usecase/currency/currency_usecase.dart'
    as _i52;
import 'package:au2rides/features/download_screen/domain/usecase/currency/get_all_currencies_usecase.dart'
    as _i17;
import 'package:au2rides/features/download_screen/domain/usecase/currency/save_currencies_in_local_db_usecase.dart'
    as _i40;
import 'package:au2rides/features/download_screen/domain/usecase/gender/clear_gender_local_usecase.dart'
    as _i53;
import 'package:au2rides/features/download_screen/domain/usecase/gender/download_gender_network_usecase.dart'
    as _i61;
import 'package:au2rides/features/download_screen/domain/usecase/gender/save_gender_data_usecase.dart'
    as _i41;
import 'package:au2rides/features/download_screen/domain/usecase/month/clear_all_data_month_usecase.dart'
    as _i54;
import 'package:au2rides/features/download_screen/domain/usecase/month/get_months_usecase.dart'
    as _i68;
import 'package:au2rides/features/download_screen/domain/usecase/month/save_months_usecase.dart'
    as _i42;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/clear_payment_methods_local_usecase.dart'
    as _i55;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/download_payment_methods_network_usecase.dart'
    as _i62;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/save_payment_methods_data_usecase.dart'
    as _i43;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/clear_all_pressure_units_usecase.dart'
    as _i56;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/get_all_pressure_units_usecase.dart'
    as _i66;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/save_pressure_units_in_local_db_usecase.dart'
    as _i44;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/clear_ride_types_local_usecase.dart'
    as _i57;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/download_ride_types_network_usecase.dart'
    as _i63;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/save_ride_types_data_usecase.dart'
    as _i45;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/clear_weather_units_local_usecase.dart'
    as _i58;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/download_weather_units_network_usecase.dart'
    as _i64;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/save_weather_units_data_usecase.dart'
    as _i74;
import 'package:au2rides/features/download_screen/presentation/bloc/country_cubit/country_cubit.dart'
    as _i59;
import 'package:au2rides/features/download_screen/presentation/bloc/currency_cubit/currency_cubit.dart'
    as _i60;
import 'package:au2rides/features/download_screen/presentation/bloc/gender_cubit/gender_cubit.dart'
    as _i65;
import 'package:au2rides/features/download_screen/presentation/bloc/month_cubit/month_cubit.dart'
    as _i70;
import 'package:au2rides/features/download_screen/presentation/bloc/payment_methods/payment_methods_cubit.dart'
    as _i71;
import 'package:au2rides/features/download_screen/presentation/bloc/pressure_units_cubit/pressure_units_cubit.dart'
    as _i72;
import 'package:au2rides/features/download_screen/presentation/bloc/ride_types/ride_types_cubit.dart'
    as _i73;
import 'package:au2rides/features/download_screen/presentation/bloc/weather_units/weather_units_cubit.dart'
    as _i75;
import 'package:au2rides/features/language_screen/data/data_sources/local/language_local_database.dart'
    as _i23;
import 'package:au2rides/features/language_screen/data/repositories/langauge_repository_impl.dart'
    as _i25;
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart'
    as _i24;
import 'package:au2rides/features/language_screen/domain/use_cases/language_use_case.dart'
    as _i67;
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart'
    as _i69;
import 'package:au2rides/features/splash_screen/data/datasources/check_primary_data_data_scource.dart'
    as _i3;
import 'package:au2rides/features/splash_screen/data/datasources/isDownloaded_data_scource.dart'
    as _i19;
import 'package:au2rides/features/splash_screen/data/repositories/check_primary_data_repository_imp.dart'
    as _i5;
import 'package:au2rides/features/splash_screen/data/repositories/is_downloaded_repository_imp.dart'
    as _i21;
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart'
    as _i4;
import 'package:au2rides/features/splash_screen/domain/repositories/is_downloaded_repository.dart'
    as _i20;
import 'package:au2rides/features/splash_screen/domain/usecases/check_primary_data_usecase.dart'
    as _i6;
import 'package:au2rides/features/splash_screen/domain/usecases/is_downloaded_usecase.dart'
    as _i22;
import 'package:au2rides/features/splash_screen/presentation/bloc/check_primary_data_cubit.dart'
    as _i50;
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
    gh.factory<_i3.CheckPrimaryDataDataSource>(
        () => _i3.CheckPrimaryDataDataSource());
    gh.factory<_i4.CheckPrimaryDataRepository>(() =>
        _i5.CheckPrimaryDataRepositoryImpl(
            gh<_i3.CheckPrimaryDataDataSource>()));
    gh.factory<_i6.CheckPrimaryDataUseCase>(() =>
        _i6.CheckPrimaryDataUseCase(gh<_i4.CheckPrimaryDataRepository>()));
    gh.factory<_i7.CountryDataSource>(() => _i7.CountryDataSource());
    gh.factory<_i8.CountryRepository>(
        () => _i9.CountryRepositoryImpl(gh<_i7.CountryDataSource>()));
    gh.factory<_i10.CountryUseCase>(
        () => _i10.CountryUseCase(gh<_i8.CountryRepository>()));
    gh.factory<_i11.CurrencyDataSource>(() => _i11.CurrencyDataSource());
    gh.factory<_i12.CurrencyRepository>(
        () => _i13.CurrencyRepositoryImpl(gh<_i11.CurrencyDataSource>()));
    gh.factory<_i14.GenderDataSource>(() => _i14.GenderDataSource());
    gh.factory<_i15.GenderRepository>(
        () => _i16.GenderRepositoryImpl(gh<_i14.GenderDataSource>()));
    gh.factory<_i17.GetAllCurrencyUseCase>(
        () => _i17.GetAllCurrencyUseCase(gh<_i12.CurrencyRepository>()));
    await gh.factoryAsync<_i18.IPrefsManager>(
      () => _i18.PrefsManager.create(),
      instanceName: 'prefs',
      preResolve: true,
    );
    gh.factory<_i19.IsDownloadedDataSource>(
        () => _i19.IsDownloadedDataSource());
    gh.factory<_i20.IsDownloadedRepository>(
        () => _i21.IsDownloadedImpl(gh<_i19.IsDownloadedDataSource>()));
    gh.factory<_i22.IsDownloadedUseCase>(
        () => _i22.IsDownloadedUseCase(gh<_i20.IsDownloadedRepository>()));
    gh.factory<_i23.LanguageLocalDatabase>(() => _i23.LanguageLocalDatabase());
    gh.factory<_i24.LanguageRepository>(
        () => _i25.LanguageRepositoryImpl(gh<_i23.LanguageLocalDatabase>()));
    gh.factory<_i26.MonthDataSource>(() => _i26.MonthDataSource());
    gh.factory<_i27.MonthRepository>(
        () => _i28.MonthRepositoryImpl(gh<_i26.MonthDataSource>()));
    gh.factory<_i29.NetworkInfo>(() => _i29.NetworkInfoImpl.create());
    gh.factory<_i30.PaymentMethodsDataSource>(
        () => _i30.PaymentMethodsDataSource());
    gh.factory<_i31.PaymentMethodsRepository>(() =>
        _i32.PaymentMethodsRepositoryImpl(gh<_i30.PaymentMethodsDataSource>()));
    gh.factory<_i33.PressureUnitsDataSource>(
        () => _i33.PressureUnitsDataSource());
    gh.factory<_i34.PressureUnitsRepository>(() =>
        _i35.PressureUnitsRepositoryImpl(gh<_i33.PressureUnitsDataSource>()));
    gh.factory<_i36.RideTypesDataSource>(() => _i36.RideTypesDataSource());
    gh.factory<_i37.RideTypesRepository>(
        () => _i38.RideTypesRepositoryImpl(gh<_i36.RideTypesDataSource>()));
    gh.factory<_i39.SaveCountriesUseCase>(
        () => _i39.SaveCountriesUseCase(gh<_i8.CountryRepository>()));
    gh.factory<_i40.SaveCurrenciesInLocalDbUseCase>(() =>
        _i40.SaveCurrenciesInLocalDbUseCase(gh<_i12.CurrencyRepository>()));
    gh.factory<_i41.SaveGenderDataInLocalDb>(
        () => _i41.SaveGenderDataInLocalDb(gh<_i15.GenderRepository>()));
    gh.factory<_i42.SaveMonthsUseCase>(
        () => _i42.SaveMonthsUseCase(gh<_i27.MonthRepository>()));
    gh.factory<_i43.SavePaymentMethodsDataInLocalDbUseCase>(() =>
        _i43.SavePaymentMethodsDataInLocalDbUseCase(
            gh<_i31.PaymentMethodsRepository>()));
    gh.factory<_i44.SavePressureUnitsInLocalDbUseCase>(() =>
        _i44.SavePressureUnitsInLocalDbUseCase(
            gh<_i34.PressureUnitsRepository>()));
    gh.factory<_i45.SaveRideTypesDataInLocalDbUseCase>(() =>
        _i45.SaveRideTypesDataInLocalDbUseCase(gh<_i37.RideTypesRepository>()));
    gh.singleton<_i46.UserRepository>(_i46.UserRepository.create(
        gh<_i18.IPrefsManager>(instanceName: 'prefs')));
    gh.factory<_i47.WeatherUnitsDataSource>(
        () => _i47.WeatherUnitsDataSource());
    gh.factory<_i48.WeatherUnitsRepository>(() =>
        _i49.WeatherUnitsRepositoryImpl(gh<_i47.WeatherUnitsDataSource>()));
    gh.factory<_i50.CheckPrimaryDataCubit>(() => _i50.CheckPrimaryDataCubit(
          gh<_i6.CheckPrimaryDataUseCase>(),
          gh<_i22.IsDownloadedUseCase>(),
        ));
    gh.factory<_i51.ClearCountryUseCase>(
        () => _i51.ClearCountryUseCase(gh<_i8.CountryRepository>()));
    gh.factory<_i52.ClearCurrencyUseCase>(
        () => _i52.ClearCurrencyUseCase(gh<_i12.CurrencyRepository>()));
    gh.factory<_i53.ClearGenderUseCase>(
        () => _i53.ClearGenderUseCase(gh<_i15.GenderRepository>()));
    gh.factory<_i54.ClearMonthUseCase>(
        () => _i54.ClearMonthUseCase(gh<_i27.MonthRepository>()));
    gh.factory<_i55.ClearPaymentMethodsUseCase>(() =>
        _i55.ClearPaymentMethodsUseCase(gh<_i31.PaymentMethodsRepository>()));
    gh.factory<_i56.ClearPressureUnitsUseCase>(() =>
        _i56.ClearPressureUnitsUseCase(gh<_i34.PressureUnitsRepository>()));
    gh.factory<_i57.ClearRideTypesUseCase>(
        () => _i57.ClearRideTypesUseCase(gh<_i37.RideTypesRepository>()));
    gh.factory<_i58.ClearWeatherUnitsUseCase>(
        () => _i58.ClearWeatherUnitsUseCase(gh<_i48.WeatherUnitsRepository>()));
    gh.factory<_i59.CountryCubit>(() => _i59.CountryCubit(
          gh<_i10.CountryUseCase>(),
          gh<_i39.SaveCountriesUseCase>(),
          gh<_i51.ClearCountryUseCase>(),
          gh<_i52.ClearCurrencyUseCase>(),
        ));
    gh.factory<_i60.CurrencyCubit>(() => _i60.CurrencyCubit(
          gh<_i52.ClearCurrencyUseCase>(),
          gh<_i17.GetAllCurrencyUseCase>(),
          gh<_i40.SaveCurrenciesInLocalDbUseCase>(),
        ));
    gh.factory<_i61.DownloadGenderUseCase>(
        () => _i61.DownloadGenderUseCase(gh<_i15.GenderRepository>()));
    gh.factory<_i62.DownloadPaymentMethodsUseCase>(() =>
        _i62.DownloadPaymentMethodsUseCase(
            gh<_i31.PaymentMethodsRepository>()));
    gh.factory<_i63.DownloadRideTypesUseCase>(
        () => _i63.DownloadRideTypesUseCase(gh<_i37.RideTypesRepository>()));
    gh.factory<_i64.DownloadWeatherUnitsUseCase>(() =>
        _i64.DownloadWeatherUnitsUseCase(gh<_i48.WeatherUnitsRepository>()));
    gh.factory<_i65.GenderCubit>(() => _i65.GenderCubit(
          gh<_i53.ClearGenderUseCase>(),
          gh<_i61.DownloadGenderUseCase>(),
          gh<_i41.SaveGenderDataInLocalDb>(),
        ));
    gh.factory<_i66.GetAllPressureUnitsUseCase>(() =>
        _i66.GetAllPressureUnitsUseCase(gh<_i34.PressureUnitsRepository>()));
    gh.factory<_i67.GetLanguagesUseCase>(
        () => _i67.GetLanguagesUseCase(gh<_i24.LanguageRepository>()));
    gh.factory<_i68.GetMonthsUseCase>(
        () => _i68.GetMonthsUseCase(gh<_i27.MonthRepository>()));
    gh.factory<_i69.LanguageCubit>(
        () => _i69.LanguageCubit(gh<_i67.GetLanguagesUseCase>()));
    gh.factory<_i70.MonthCubit>(() => _i70.MonthCubit(
          gh<_i68.GetMonthsUseCase>(),
          gh<_i42.SaveMonthsUseCase>(),
          gh<_i54.ClearMonthUseCase>(),
        ));
    gh.factory<_i71.PaymentMethodsCubit>(() => _i71.PaymentMethodsCubit(
          gh<_i55.ClearPaymentMethodsUseCase>(),
          gh<_i62.DownloadPaymentMethodsUseCase>(),
          gh<_i43.SavePaymentMethodsDataInLocalDbUseCase>(),
        ));
    gh.factory<_i72.PressureUnitsCubit>(() => _i72.PressureUnitsCubit(
          gh<_i10.CountryUseCase>(),
          gh<_i44.SavePressureUnitsInLocalDbUseCase>(),
          gh<_i56.ClearPressureUnitsUseCase>(),
          gh<_i66.GetAllPressureUnitsUseCase>(),
        ));
    gh.factory<_i73.RideTypesCubit>(() => _i73.RideTypesCubit(
          gh<_i57.ClearRideTypesUseCase>(),
          gh<_i63.DownloadRideTypesUseCase>(),
          gh<_i45.SaveRideTypesDataInLocalDbUseCase>(),
        ));
    gh.factory<_i74.SaveWeatherUnitsDataInLocalDb>(() =>
        _i74.SaveWeatherUnitsDataInLocalDb(gh<_i48.WeatherUnitsRepository>()));
    gh.factory<_i75.WeatherUnitsCubit>(() => _i75.WeatherUnitsCubit(
          gh<_i58.ClearWeatherUnitsUseCase>(),
          gh<_i64.DownloadWeatherUnitsUseCase>(),
          gh<_i74.SaveWeatherUnitsDataInLocalDb>(),
        ));
    return this;
  }
}
