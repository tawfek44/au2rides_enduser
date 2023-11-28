// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:au2rides/core/network_state/network_state.dart' as _i11;
import 'package:au2rides/core/repositories/user_repository.dart' as _i12;
import 'package:au2rides/core/shared_preference_manager/shared_preference_manager.dart'
    as _i7;
import 'package:au2rides/features/language_screen/data/data_sources/local/language_local_database.dart'
    as _i8;
import 'package:au2rides/features/language_screen/data/repositories/langauge_repository_impl.dart'
    as _i10;
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart'
    as _i9;
import 'package:au2rides/features/language_screen/domain/use_cases/language_use_case.dart'
    as _i14;
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart'
    as _i15;
import 'package:au2rides/features/redirection_screen/data/datasources/country_datasource.dart'
    as _i3;
import 'package:au2rides/features/redirection_screen/data/repositories/country_repository.dart'
    as _i5;
import 'package:au2rides/features/redirection_screen/domain/repository/country_repository.dart'
    as _i4;
import 'package:au2rides/features/redirection_screen/domain/usecase/country_usecase.dart'
    as _i6;
import 'package:au2rides/features/redirection_screen/presentation/bloc/country_cubit.dart'
    as _i13;
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
    gh.factory<_i3.CountryDataSource>(() => _i3.CountryDataSource());
    gh.factory<_i4.CountryRepository>(
        () => _i5.CountryRepositoryImpl(gh<_i3.CountryDataSource>()));
    gh.factory<_i6.CountryUseCase>(
        () => _i6.CountryUseCase(gh<_i4.CountryRepository>()));
    await gh.factoryAsync<_i7.IPrefsManager>(
      () => _i7.PrefsManager.create(),
      instanceName: 'prefs',
      preResolve: true,
    );
    gh.factory<_i8.LanguageLocalDatabase>(() => _i8.LanguageLocalDatabase());
    gh.factory<_i9.LanguageRepository>(
        () => _i10.LanguageRepositoryImpl(gh<_i8.LanguageLocalDatabase>()));
    gh.factory<_i11.NetworkInfo>(() => _i11.NetworkInfoImpl.create());
    gh.singleton<_i12.UserRepository>(_i12.UserRepository.create(
        gh<_i7.IPrefsManager>(instanceName: 'prefs')));
    gh.factory<_i13.CountryCubit>(
        () => _i13.CountryCubit(gh<_i6.CountryUseCase>()));
    gh.factory<_i14.GetLanguagesUseCase>(
        () => _i14.GetLanguagesUseCase(gh<_i9.LanguageRepository>()));
    gh.factory<_i15.LanguageCubit>(
        () => _i15.LanguageCubit(gh<_i14.GetLanguagesUseCase>()));
    return this;
  }
}
