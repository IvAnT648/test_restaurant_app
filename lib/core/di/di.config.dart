// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:restaurant_task/core/navigation/router.dart' as _i3;
import 'package:restaurant_task/data/repositories/auth.dart' as _i7;
import 'package:restaurant_task/data/repositories/profile.dart' as _i10;
import 'package:restaurant_task/data/sources/local/auth_storage.dart' as _i4;
import 'package:restaurant_task/data/sources/local/profile_storage.dart' as _i5;
import 'package:restaurant_task/data/sources/network/server.dart' as _i6;
import 'package:restaurant_task/domain/usecases/is_logged_in.dart' as _i11;
import 'package:restaurant_task/domain/usecases/login.dart' as _i8;
import 'package:restaurant_task/domain/usecases/logout.dart' as _i9;
import 'package:restaurant_task/domain/usecases/profile.dart' as _i13;
import 'package:restaurant_task/presentation/auth/bloc.dart' as _i12;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.singleton<_i4.IAuthLocalStorage>(_i4.HiveAuthLocalStorage());
    gh.singleton<_i5.IProfileStorage>(_i5.HiveProfileStorage());
    gh.factory<_i6.IServerDataSource>(() => _i6.ServerDataSource());
    gh.factory<_i7.IAuthRepository>(() => _i7.AuthRepository(
          gh<_i6.IServerDataSource>(),
          gh<_i4.IAuthLocalStorage>(),
        ));
    gh.factory<_i8.ILoginUseCase>(
        () => _i8.LoginUseCase(gh<_i7.IAuthRepository>()));
    gh.factory<_i9.ILogoutUseCase>(
        () => _i9.LogoutUseCase(gh<_i7.IAuthRepository>()));
    gh.factory<_i10.IProfileRepository>(() => _i10.ProfileRepository(
          gh<_i6.IServerDataSource>(),
          gh<_i4.IAuthLocalStorage>(),
          gh<_i5.IProfileStorage>(),
        ));
    gh.factory<_i11.IsLoggedInUseCase>(
        () => _i11.IsLoggedInUseCaseImpl(gh<_i7.IAuthRepository>()));
    gh.factory<_i12.AuthPageBloc>(() => _i12.AuthPageBloc(
          gh<_i8.ILoginUseCase>(),
          gh<_i11.IsLoggedInUseCase>(),
        ));
    gh.factory<_i13.IGetProfileUseCase>(
        () => _i13.GetProfileUseCase(gh<_i10.IProfileRepository>()));
    return this;
  }
}
