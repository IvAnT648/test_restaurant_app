
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/failure.dart';
import '../../data/repositories/auth.dart';

abstract class ILogoutUseCase {
  Future<Either<Failure, bool>> call();
}

@Injectable(as: ILogoutUseCase)
class LogoutUseCase implements ILogoutUseCase {
  final IAuthRepository _authRepository;

  LogoutUseCase(this._authRepository);

  @override
  Future<Either<Failure, bool>> call() async {
    return await _authRepository.logout();
  }
}
