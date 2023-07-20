
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/failure.dart';
import '../../data/repositories/auth.dart';

abstract class ILoginUseCase {
  Future<Either<Failure, bool>> call(String email, String password);
}

@Injectable(as: ILoginUseCase)
class LoginUseCase implements ILoginUseCase {
  final IAuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  @override
  Future<Either<Failure, bool>> call(String email, String password) async {
    return await _authRepository.login(email, password);
  }
}
