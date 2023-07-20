
import 'package:injectable/injectable.dart';

import '../../data/repositories/auth.dart';

abstract class IsLoggedInUseCase {
  bool call();
}

@Injectable(as: IsLoggedInUseCase)
class IsLoggedInUseCaseImpl implements IsLoggedInUseCase {
  final IAuthRepository _authRepository;

  IsLoggedInUseCaseImpl(this._authRepository);

  @override
  bool call() => _authRepository.isLoggedIn;
}
