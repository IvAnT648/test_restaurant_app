// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginAuthPageState value) login,
    required TResult Function(LoadingAuthPageState value) loading,
    required TResult Function(ErrorAuthPageState value) error,
    required TResult Function(SuccessAuthPageState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginAuthPageState value)? login,
    TResult? Function(LoadingAuthPageState value)? loading,
    TResult? Function(ErrorAuthPageState value)? error,
    TResult? Function(SuccessAuthPageState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginAuthPageState value)? login,
    TResult Function(LoadingAuthPageState value)? loading,
    TResult Function(ErrorAuthPageState value)? error,
    TResult Function(SuccessAuthPageState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthPageStateCopyWith<$Res> {
  factory $AuthPageStateCopyWith(
          AuthPageState value, $Res Function(AuthPageState) then) =
      _$AuthPageStateCopyWithImpl<$Res, AuthPageState>;
}

/// @nodoc
class _$AuthPageStateCopyWithImpl<$Res, $Val extends AuthPageState>
    implements $AuthPageStateCopyWith<$Res> {
  _$AuthPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginAuthPageStateCopyWith<$Res> {
  factory _$$LoginAuthPageStateCopyWith(_$LoginAuthPageState value,
          $Res Function(_$LoginAuthPageState) then) =
      __$$LoginAuthPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginAuthPageStateCopyWithImpl<$Res>
    extends _$AuthPageStateCopyWithImpl<$Res, _$LoginAuthPageState>
    implements _$$LoginAuthPageStateCopyWith<$Res> {
  __$$LoginAuthPageStateCopyWithImpl(
      _$LoginAuthPageState _value, $Res Function(_$LoginAuthPageState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginAuthPageState implements LoginAuthPageState {
  const _$LoginAuthPageState();

  @override
  String toString() {
    return 'AuthPageState.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginAuthPageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function() success,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function()? success,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginAuthPageState value) login,
    required TResult Function(LoadingAuthPageState value) loading,
    required TResult Function(ErrorAuthPageState value) error,
    required TResult Function(SuccessAuthPageState value) success,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginAuthPageState value)? login,
    TResult? Function(LoadingAuthPageState value)? loading,
    TResult? Function(ErrorAuthPageState value)? error,
    TResult? Function(SuccessAuthPageState value)? success,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginAuthPageState value)? login,
    TResult Function(LoadingAuthPageState value)? loading,
    TResult Function(ErrorAuthPageState value)? error,
    TResult Function(SuccessAuthPageState value)? success,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginAuthPageState implements AuthPageState {
  const factory LoginAuthPageState() = _$LoginAuthPageState;
}

/// @nodoc
abstract class _$$LoadingAuthPageStateCopyWith<$Res> {
  factory _$$LoadingAuthPageStateCopyWith(_$LoadingAuthPageState value,
          $Res Function(_$LoadingAuthPageState) then) =
      __$$LoadingAuthPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingAuthPageStateCopyWithImpl<$Res>
    extends _$AuthPageStateCopyWithImpl<$Res, _$LoadingAuthPageState>
    implements _$$LoadingAuthPageStateCopyWith<$Res> {
  __$$LoadingAuthPageStateCopyWithImpl(_$LoadingAuthPageState _value,
      $Res Function(_$LoadingAuthPageState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingAuthPageState implements LoadingAuthPageState {
  const _$LoadingAuthPageState();

  @override
  String toString() {
    return 'AuthPageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingAuthPageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function()? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginAuthPageState value) login,
    required TResult Function(LoadingAuthPageState value) loading,
    required TResult Function(ErrorAuthPageState value) error,
    required TResult Function(SuccessAuthPageState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginAuthPageState value)? login,
    TResult? Function(LoadingAuthPageState value)? loading,
    TResult? Function(ErrorAuthPageState value)? error,
    TResult? Function(SuccessAuthPageState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginAuthPageState value)? login,
    TResult Function(LoadingAuthPageState value)? loading,
    TResult Function(ErrorAuthPageState value)? error,
    TResult Function(SuccessAuthPageState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingAuthPageState implements AuthPageState {
  const factory LoadingAuthPageState() = _$LoadingAuthPageState;
}

/// @nodoc
abstract class _$$ErrorAuthPageStateCopyWith<$Res> {
  factory _$$ErrorAuthPageStateCopyWith(_$ErrorAuthPageState value,
          $Res Function(_$ErrorAuthPageState) then) =
      __$$ErrorAuthPageStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ErrorAuthPageStateCopyWithImpl<$Res>
    extends _$AuthPageStateCopyWithImpl<$Res, _$ErrorAuthPageState>
    implements _$$ErrorAuthPageStateCopyWith<$Res> {
  __$$ErrorAuthPageStateCopyWithImpl(
      _$ErrorAuthPageState _value, $Res Function(_$ErrorAuthPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ErrorAuthPageState(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorAuthPageState implements ErrorAuthPageState {
  const _$ErrorAuthPageState(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'AuthPageState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorAuthPageState &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorAuthPageStateCopyWith<_$ErrorAuthPageState> get copyWith =>
      __$$ErrorAuthPageStateCopyWithImpl<_$ErrorAuthPageState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function() success,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function()? success,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginAuthPageState value) login,
    required TResult Function(LoadingAuthPageState value) loading,
    required TResult Function(ErrorAuthPageState value) error,
    required TResult Function(SuccessAuthPageState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginAuthPageState value)? login,
    TResult? Function(LoadingAuthPageState value)? loading,
    TResult? Function(ErrorAuthPageState value)? error,
    TResult? Function(SuccessAuthPageState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginAuthPageState value)? login,
    TResult Function(LoadingAuthPageState value)? loading,
    TResult Function(ErrorAuthPageState value)? error,
    TResult Function(SuccessAuthPageState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorAuthPageState implements AuthPageState {
  const factory ErrorAuthPageState(final String msg) = _$ErrorAuthPageState;

  String get msg;
  @JsonKey(ignore: true)
  _$$ErrorAuthPageStateCopyWith<_$ErrorAuthPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessAuthPageStateCopyWith<$Res> {
  factory _$$SuccessAuthPageStateCopyWith(_$SuccessAuthPageState value,
          $Res Function(_$SuccessAuthPageState) then) =
      __$$SuccessAuthPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessAuthPageStateCopyWithImpl<$Res>
    extends _$AuthPageStateCopyWithImpl<$Res, _$SuccessAuthPageState>
    implements _$$SuccessAuthPageStateCopyWith<$Res> {
  __$$SuccessAuthPageStateCopyWithImpl(_$SuccessAuthPageState _value,
      $Res Function(_$SuccessAuthPageState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessAuthPageState implements SuccessAuthPageState {
  const _$SuccessAuthPageState();

  @override
  String toString() {
    return 'AuthPageState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessAuthPageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginAuthPageState value) login,
    required TResult Function(LoadingAuthPageState value) loading,
    required TResult Function(ErrorAuthPageState value) error,
    required TResult Function(SuccessAuthPageState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginAuthPageState value)? login,
    TResult? Function(LoadingAuthPageState value)? loading,
    TResult? Function(ErrorAuthPageState value)? error,
    TResult? Function(SuccessAuthPageState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginAuthPageState value)? login,
    TResult Function(LoadingAuthPageState value)? loading,
    TResult Function(ErrorAuthPageState value)? error,
    TResult Function(SuccessAuthPageState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessAuthPageState implements AuthPageState {
  const factory SuccessAuthPageState() = _$SuccessAuthPageState;
}
