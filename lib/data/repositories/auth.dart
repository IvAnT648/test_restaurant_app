
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/failure.dart';
import '../sources/local/auth_storage.dart';
import '../sources/network/server.dart';

abstract class IAuthRepository {
  Future<Either<Failure, bool>> login(String email, String password);
  Future<Either<Failure, bool>> logout();
  bool get isLoggedIn;
}

@Injectable(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final IServerDataSource _serverDataSource;
  final IAuthLocalStorage _authLocalStorage;

  AuthRepository(this._serverDataSource, this._authLocalStorage);

  @override
  Future<Either<Failure, bool>> login(String email, String password) async {
    try {
      if (_authLocalStorage.authData != null) {
        await _authLocalStorage.clearAuthData();
      }

      final authData = await _serverDataSource.login(email, password);
      await _authLocalStorage.saveAuthData(authData);

      return const Right(true);
    } on Failure catch (e) {
      print(e);
      return Left(LoginFailure(e.message));
    } catch (e) {
      print(e);
      return Left(LoginFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> logout() async {
    try {
      await _authLocalStorage.clearAuthData();

      return const Right(true);
    } on Failure catch (e) {
      print(e);
      return Left(LogoutFailure(e.message));
    } catch (e) {
      print(e);
      return Left(LogoutFailure());
    }
  }

  @override
  bool get isLoggedIn => _authLocalStorage.isLoggedIn;
}
