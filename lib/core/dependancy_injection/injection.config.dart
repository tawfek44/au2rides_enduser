// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:au2rides/core/network_state/network_state.dart' as _i7;
import 'package:au2rides/core/repositories/user_repository.dart' as _i8;
import 'package:au2rides/core/shared_preference_manager/shared_preference_manager.dart'
    as _i3;
import 'package:au2rides/features/language_screen/data/data_sources/local/language_local_database.dart'
    as _i4;
import 'package:au2rides/features/language_screen/data/repositories/langauge_repository_impl.dart'
    as _i6;
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart'
    as _i5;
import 'package:au2rides/features/language_screen/domain/use_cases/language_use_case.dart'
    as _i9;
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart'
    as _i10;
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
    await gh.factoryAsync<_i3.IPrefsManager>(
      () => _i3.PrefsManager.create(),
      instanceName: 'prefs',
      preResolve: true,
    );
    gh.factory<_i4.LanguageLocalDatabase>(() => _i4.LanguageLocalDatabase());
    gh.factory<_i5.LanguageRepository>(
        () => _i6.LanguageRepositoryImpl(gh<_i4.LanguageLocalDatabase>()));
    gh.factory<_i7.NetworkInfo>(() => _i7.NetworkInfoImpl.create());
    gh.singleton<_i8.UserRepository>(_i8.UserRepository.create(
        gh<_i3.IPrefsManager>(instanceName: 'prefs')));
    gh.factory<_i9.GetLanguagesUseCase>(
        () => _i9.GetLanguagesUseCase(gh<_i5.LanguageRepository>()));
    gh.factory<_i10.LanguageCubit>(
        () => _i10.LanguageCubit(gh<_i9.GetLanguagesUseCase>()));
    return this;
  }
}
