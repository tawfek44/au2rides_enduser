// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:au2rides/core/network_state/network_state.dart' as _i19;
import 'package:au2rides/core/repositories/user_repository.dart' as _i21;
import 'package:au2rides/core/shared_preference_manager/shared_preference_manager.dart'
    as _i11;
import 'package:au2rides/features/language_screen/data/data_sources/local/language_local_database.dart'
    as _i16;
import 'package:au2rides/features/language_screen/data/repositories/langauge_repository_impl.dart'
    as _i18;
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart'
    as _i17;
import 'package:au2rides/features/language_screen/domain/use_cases/language_use_case.dart'
    as _i25;
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart'
    as _i26;
import 'package:au2rides/features/redirection_screen/data/datasources/country_datasource.dart'
    as _i7;
import 'package:au2rides/features/redirection_screen/data/repositories/country_repository.dart'
    as _i9;
import 'package:au2rides/features/redirection_screen/domain/repository/country_repository.dart'
    as _i8;
import 'package:au2rides/features/redirection_screen/domain/usecase/clear_all_data_country_usecase.dart'
    as _i23;
import 'package:au2rides/features/redirection_screen/domain/usecase/country_usecase.dart'
    as _i10;
import 'package:au2rides/features/redirection_screen/domain/usecase/save_country_usecase.dart'
    as _i20;
import 'package:au2rides/features/redirection_screen/presentation/bloc/country_cubit.dart'
    as _i24;
import 'package:au2rides/features/splash_screen/data/datasources/check_primary_data_data_scource.dart'
    as _i3;
import 'package:au2rides/features/splash_screen/data/datasources/isDownloaded_data_scource.dart'
    as _i12;
import 'package:au2rides/features/splash_screen/data/repositories/check_primary_data_repository_imp.dart'
    as _i5;
import 'package:au2rides/features/splash_screen/data/repositories/is_downloaded_repository_imp.dart'
    as _i14;
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart'
    as _i4;
import 'package:au2rides/features/splash_screen/domain/repositories/is_downloaded_repository.dart'
    as _i13;
import 'package:au2rides/features/splash_screen/domain/usecases/check_primary_data_usecase.dart'
    as _i6;
import 'package:au2rides/features/splash_screen/domain/usecases/is_downloaded_usecase.dart'
    as _i15;
import 'package:au2rides/features/splash_screen/presentation/bloc/check_primary_data_cubit.dart'
    as _i22;
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
    await gh.factoryAsync<_i11.IPrefsManager>(
      () => _i11.PrefsManager.create(),
      instanceName: 'prefs',
      preResolve: true,
    );
    gh.factory<_i12.IsDownloadedDataSource>(
        () => _i12.IsDownloadedDataSource());
    gh.factory<_i13.IsDownloadedRepository>(
        () => _i14.IsDownloadedImpl(gh<_i12.IsDownloadedDataSource>()));
    gh.factory<_i15.IsDownloadedUseCase>(
        () => _i15.IsDownloadedUseCase(gh<_i13.IsDownloadedRepository>()));
    gh.factory<_i16.LanguageLocalDatabase>(() => _i16.LanguageLocalDatabase());
    gh.factory<_i17.LanguageRepository>(
        () => _i18.LanguageRepositoryImpl(gh<_i16.LanguageLocalDatabase>()));
    gh.factory<_i19.NetworkInfo>(() => _i19.NetworkInfoImpl.create());
    gh.factory<_i20.SaveCountriesUseCase>(
        () => _i20.SaveCountriesUseCase(gh<_i8.CountryRepository>()));
    gh.singleton<_i21.UserRepository>(_i21.UserRepository.create(
        gh<_i11.IPrefsManager>(instanceName: 'prefs')));
    gh.factory<_i22.CheckPrimaryDataCubit>(() => _i22.CheckPrimaryDataCubit(
          gh<_i6.CheckPrimaryDataUseCase>(),
          gh<_i15.IsDownloadedUseCase>(),
        ));
    gh.factory<_i23.ClearCountryUseCase>(
        () => _i23.ClearCountryUseCase(gh<_i8.CountryRepository>()));
    gh.factory<_i24.CountryCubit>(() => _i24.CountryCubit(
          gh<_i10.CountryUseCase>(),
          gh<_i20.SaveCountriesUseCase>(),
          gh<_i23.ClearCountryUseCase>(),
        ));
    gh.factory<_i25.GetLanguagesUseCase>(
        () => _i25.GetLanguagesUseCase(gh<_i17.LanguageRepository>()));
    gh.factory<_i26.LanguageCubit>(
        () => _i26.LanguageCubit(gh<_i25.GetLanguagesUseCase>()));
    return this;
  }
}
