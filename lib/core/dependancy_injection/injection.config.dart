// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:au2rides/core/network_state/network_state.dart' as _i26;
import 'package:au2rides/core/repositories/user_repository.dart' as _i30;
import 'package:au2rides/core/shared_preference_manager/shared_preference_manager.dart'
    as _i18;
import 'package:au2rides/features/language_screen/data/data_sources/local/language_local_database.dart'
    as _i23;
import 'package:au2rides/features/language_screen/data/repositories/langauge_repository_impl.dart'
    as _i25;
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart'
    as _i24;
import 'package:au2rides/features/language_screen/domain/use_cases/language_use_case.dart'
    as _i44;
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart'
    as _i45;
import 'package:au2rides/features/redirection_screen/data/datasources/country_datasource.dart'
    as _i7;
import 'package:au2rides/features/redirection_screen/data/datasources/currency_datasource.dart'
    as _i11;
import 'package:au2rides/features/redirection_screen/data/datasources/gender_data_source.dart'
    as _i14;
import 'package:au2rides/features/redirection_screen/data/datasources/weather_units_data_source.dart'
    as _i31;
import 'package:au2rides/features/redirection_screen/data/repositories/country_repository.dart'
    as _i9;
import 'package:au2rides/features/redirection_screen/data/repositories/currency_repository.dart'
    as _i13;
import 'package:au2rides/features/redirection_screen/data/repositories/gender_repository.dart'
    as _i16;
import 'package:au2rides/features/redirection_screen/data/repositories/weather_units_repository.dart'
    as _i33;
import 'package:au2rides/features/redirection_screen/domain/repository/country_repository.dart'
    as _i8;
import 'package:au2rides/features/redirection_screen/domain/repository/currency_repository.dart'
    as _i12;
import 'package:au2rides/features/redirection_screen/domain/repository/gender_repository.dart'
    as _i15;
import 'package:au2rides/features/redirection_screen/domain/repository/weather_measuring_units_repository.dart'
    as _i32;
import 'package:au2rides/features/redirection_screen/domain/usecase/country/clear_all_data_country_usecase.dart'
    as _i35;
import 'package:au2rides/features/redirection_screen/domain/usecase/country/country_usecase.dart'
    as _i10;
import 'package:au2rides/features/redirection_screen/domain/usecase/country/save_country_usecase.dart'
    as _i27;
import 'package:au2rides/features/redirection_screen/domain/usecase/currency/currency_usecase.dart'
    as _i36;
import 'package:au2rides/features/redirection_screen/domain/usecase/currency/get_all_currencies_usecase.dart'
    as _i17;
import 'package:au2rides/features/redirection_screen/domain/usecase/currency/save_currencies_in_local_db_usecase.dart'
    as _i28;
import 'package:au2rides/features/redirection_screen/domain/usecase/gender/clear_gender_local_usecase.dart'
    as _i37;
import 'package:au2rides/features/redirection_screen/domain/usecase/gender/download_gender_network_usecase.dart'
    as _i41;
import 'package:au2rides/features/redirection_screen/domain/usecase/gender/save_gender_data_usecase.dart'
    as _i29;
import 'package:au2rides/features/redirection_screen/domain/usecase/weather_measuring_units/clear_weather_units_local_usecase.dart'
    as _i38;
import 'package:au2rides/features/redirection_screen/domain/usecase/weather_measuring_units/download_weather_units_network_usecase.dart'
    as _i42;
import 'package:au2rides/features/redirection_screen/domain/usecase/weather_measuring_units/save_weather_units_data_usecase.dart'
    as _i46;
import 'package:au2rides/features/redirection_screen/presentation/bloc/country_cubit/country_cubit.dart'
    as _i39;
import 'package:au2rides/features/redirection_screen/presentation/bloc/currency_cubit/currency_cubit.dart'
    as _i40;
import 'package:au2rides/features/redirection_screen/presentation/bloc/gender_cubit/gender_cubit.dart'
    as _i43;
import 'package:au2rides/features/redirection_screen/presentation/bloc/weather_units/weather_units_cubit.dart'
    as _i47;
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
    as _i34;
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
    gh.factory<_i26.NetworkInfo>(() => _i26.NetworkInfoImpl.create());
    gh.factory<_i27.SaveCountriesUseCase>(
        () => _i27.SaveCountriesUseCase(gh<_i8.CountryRepository>()));
    gh.factory<_i28.SaveCurrenciesInLocalDbUseCase>(() =>
        _i28.SaveCurrenciesInLocalDbUseCase(gh<_i12.CurrencyRepository>()));
    gh.factory<_i29.SaveGenderDataInLocalDb>(
        () => _i29.SaveGenderDataInLocalDb(gh<_i15.GenderRepository>()));
    gh.singleton<_i30.UserRepository>(_i30.UserRepository.create(
        gh<_i18.IPrefsManager>(instanceName: 'prefs')));
    gh.factory<_i31.WeatherUnitsDataSource>(
        () => _i31.WeatherUnitsDataSource());
    gh.factory<_i32.WeatherUnitsRepository>(() =>
        _i33.WeatherUnitsRepositoryImpl(gh<_i31.WeatherUnitsDataSource>()));
    gh.factory<_i34.CheckPrimaryDataCubit>(() => _i34.CheckPrimaryDataCubit(
          gh<_i6.CheckPrimaryDataUseCase>(),
          gh<_i22.IsDownloadedUseCase>(),
        ));
    gh.factory<_i35.ClearCountryUseCase>(
        () => _i35.ClearCountryUseCase(gh<_i8.CountryRepository>()));
    gh.factory<_i36.ClearCurrencyUseCase>(
        () => _i36.ClearCurrencyUseCase(gh<_i12.CurrencyRepository>()));
    gh.factory<_i37.ClearGenderUseCase>(
        () => _i37.ClearGenderUseCase(gh<_i15.GenderRepository>()));
    gh.factory<_i38.ClearWeatherUnitsUseCase>(
        () => _i38.ClearWeatherUnitsUseCase(gh<_i32.WeatherUnitsRepository>()));
    gh.factory<_i39.CountryCubit>(() => _i39.CountryCubit(
          gh<_i10.CountryUseCase>(),
          gh<_i27.SaveCountriesUseCase>(),
          gh<_i35.ClearCountryUseCase>(),
          gh<_i36.ClearCurrencyUseCase>(),
        ));
    gh.factory<_i40.CurrencyCubit>(() => _i40.CurrencyCubit(
          gh<_i36.ClearCurrencyUseCase>(),
          gh<_i17.GetAllCurrencyUseCase>(),
          gh<_i28.SaveCurrenciesInLocalDbUseCase>(),
        ));
    gh.factory<_i41.DownloadGenderUseCase>(
        () => _i41.DownloadGenderUseCase(gh<_i15.GenderRepository>()));
    gh.factory<_i42.DownloadWeatherUnitsUseCase>(() =>
        _i42.DownloadWeatherUnitsUseCase(gh<_i32.WeatherUnitsRepository>()));
    gh.factory<_i43.GenderCubit>(() => _i43.GenderCubit(
          gh<_i37.ClearGenderUseCase>(),
          gh<_i41.DownloadGenderUseCase>(),
          gh<_i29.SaveGenderDataInLocalDb>(),
        ));
    gh.factory<_i44.GetLanguagesUseCase>(
        () => _i44.GetLanguagesUseCase(gh<_i24.LanguageRepository>()));
    gh.factory<_i45.LanguageCubit>(
        () => _i45.LanguageCubit(gh<_i44.GetLanguagesUseCase>()));
    gh.factory<_i46.SaveWeatherUnitsDataInLocalDb>(() =>
        _i46.SaveWeatherUnitsDataInLocalDb(gh<_i32.WeatherUnitsRepository>()));
    gh.factory<_i47.WeatherUnitsCubit>(() => _i47.WeatherUnitsCubit(
          gh<_i38.ClearWeatherUnitsUseCase>(),
          gh<_i42.DownloadWeatherUnitsUseCase>(),
          gh<_i46.SaveWeatherUnitsDataInLocalDb>(),
        ));
    return this;
  }
}
