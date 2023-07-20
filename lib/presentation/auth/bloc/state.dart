
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class AuthPageState with _$AuthPageState {
  const factory AuthPageState.login() = LoginAuthPageState;
  const factory AuthPageState.loading() = LoadingAuthPageState;
  const factory AuthPageState.error(String msg) = ErrorAuthPageState;
  const factory AuthPageState.success() = SuccessAuthPageState;
}
