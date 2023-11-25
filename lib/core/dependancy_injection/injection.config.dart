// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:au2rides/core/network_state/network_state.dart' as _i4;
import 'package:au2rides/core/repositories/user_repository.dart' as _i5;
import 'package:au2rides/core/shared_preference_manager/shared_preference_manager.dart'
    as _i3;
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
    gh.factory<_i4.NetworkInfo>(() => _i4.NetworkInfoImpl.create());
    gh.singleton<_i5.UserRepository>(_i5.UserRepository.create(
        gh<_i3.IPrefsManager>(instanceName: 'prefs')));
    return this;
  }
}
