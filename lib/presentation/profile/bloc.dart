import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/logout.dart';
import '../../domain/usecases/profile.dart';
import 'bloc/state.dart';

export 'bloc/state.dart';

class ProfileBloc extends Cubit<ProfileBlocState> {
  final IGetProfileUseCase _getProfileUseCase;
  final ILogoutUseCase _logoutUseCase;

  ProfileBloc(this._getProfileUseCase, this._logoutUseCase)
      : super(const ProfileBlocState.loading()) {
    _getProfileUseCase().then((result) {
      result.fold(
        (error) => emit(ProfileBlocState.error(error.message)),
        (data) => emit(ProfileBlocState.data(data)),
      );
    }).onError((_, __) {
      emit(const ProfileBlocState.error('Что-то пошло не так'));
    });
  }

  void logout() {
    _logoutUseCase().then((response) => response.fold(
          (error) => emit(ProfileBlocState.error(error.message)),
          (result) => emit(result
              ? const ProfileBlocState.logout()
              : const ProfileBlocState.error(
                  'Не удалось выполнить выход из аккаунта')),
        ));
  }
}
