import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/is_logged_in.dart';
import '../../domain/usecases/login.dart';
import 'bloc/state.dart';

export 'bloc/state.dart';

@injectable
class AuthPageBloc extends Cubit<AuthPageState> {
  final ILoginUseCase _loginUseCase;
  final IsLoggedInUseCase _isLoggedInUseCase;

  AuthPageBloc(
    this._loginUseCase,
    this._isLoggedInUseCase,
  ) : super(_isLoggedInUseCase()
            ? const AuthPageState.success()
            : const AuthPageState.login());

  void login(String email, String password) {
    if (email.isEmpty || password.isEmpty) {
      emit(const AuthPageState.error('E-mail и пароль не могут быть пустыми'));
      emit(const AuthPageState.login());
    } else {
      _loginUseCase(email, password).then((response) {
        response.fold(
          (failure) {
            emit(AuthPageState.error(failure.message));
            emit(const AuthPageState.login());
          },
          (result) {
            if (result) {
              emit(const AuthPageState.success());
            } else {
              const AuthPageState.error('Не удалось выполнить вход');
              emit(const AuthPageState.login());
            }
          },
        );
      }).onError((_, __) {
        emit(const AuthPageState.error('Что-то пошло не так'));
        emit(const AuthPageState.login());
      });
    }
  }
}
