
abstract class Failure {
  late final String message;
}

class NoInternetConnectionError extends Failure {
  @override
  String get message => 'Нет подключения к сети';
}

class CommonError extends Failure {
  @override
  String get message => 'Что-то пошло не так';
}

class ServerFailure extends Failure {
  ServerFailure([String? msg]) {
    message = msg ?? 'Ошибка сервера';
  }
}

class StorageFailure extends Failure {
  StorageFailure([String? msg]) {
    message = msg ?? 'Ошибка локального хранилища';
  }
}

class LoginFailure extends Failure {
  LoginFailure([String? msg]) {
    message = msg ?? 'Ошибка при авторизации';
  }
}

class LogoutFailure extends Failure {
  LogoutFailure([String? msg]) {
    message = msg ?? 'Ошибка при выходе из аккаунта';
  }
}

class NotLoggedInFailure extends Failure {
  NotLoggedInFailure() {
    message = 'Ошибка. Вход в аккаунт не выполнен';
  }
}
