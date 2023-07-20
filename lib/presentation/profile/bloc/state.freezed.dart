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
mixin _$ProfileBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ProfileEntity data) data,
    required TResult Function(String msg) error,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ProfileEntity data)? data,
    TResult? Function(String msg)? error,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ProfileEntity data)? data,
    TResult Function(String msg)? error,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingProfileBlocState value) loading,
    required TResult Function(DataProfileBlocState value) data,
    required TResult Function(ErrorProfileBlocState value) error,
    required TResult Function(LogoutProfileBlocState value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingProfileBlocState value)? loading,
    TResult? Function(DataProfileBlocState value)? data,
    TResult? Function(ErrorProfileBlocState value)? error,
    TResult? Function(LogoutProfileBlocState value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingProfileBlocState value)? loading,
    TResult Function(DataProfileBlocState value)? data,
    TResult Function(ErrorProfileBlocState value)? error,
    TResult Function(LogoutProfileBlocState value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileBlocStateCopyWith<$Res> {
  factory $ProfileBlocStateCopyWith(
          ProfileBlocState value, $Res Function(ProfileBlocState) then) =
      _$ProfileBlocStateCopyWithImpl<$Res, ProfileBlocState>;
}

/// @nodoc
class _$ProfileBlocStateCopyWithImpl<$Res, $Val extends ProfileBlocState>
    implements $ProfileBlocStateCopyWith<$Res> {
  _$ProfileBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingProfileBlocStateCopyWith<$Res> {
  factory _$$LoadingProfileBlocStateCopyWith(_$LoadingProfileBlocState value,
          $Res Function(_$LoadingProfileBlocState) then) =
      __$$LoadingProfileBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingProfileBlocStateCopyWithImpl<$Res>
    extends _$ProfileBlocStateCopyWithImpl<$Res, _$LoadingProfileBlocState>
    implements _$$LoadingProfileBlocStateCopyWith<$Res> {
  __$$LoadingProfileBlocStateCopyWithImpl(_$LoadingProfileBlocState _value,
      $Res Function(_$LoadingProfileBlocState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingProfileBlocState implements LoadingProfileBlocState {
  const _$LoadingProfileBlocState();

  @override
  String toString() {
    return 'ProfileBlocState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingProfileBlocState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ProfileEntity data) data,
    required TResult Function(String msg) error,
    required TResult Function() logout,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ProfileEntity data)? data,
    TResult? Function(String msg)? error,
    TResult? Function()? logout,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ProfileEntity data)? data,
    TResult Function(String msg)? error,
    TResult Function()? logout,
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
    required TResult Function(LoadingProfileBlocState value) loading,
    required TResult Function(DataProfileBlocState value) data,
    required TResult Function(ErrorProfileBlocState value) error,
    required TResult Function(LogoutProfileBlocState value) logout,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingProfileBlocState value)? loading,
    TResult? Function(DataProfileBlocState value)? data,
    TResult? Function(ErrorProfileBlocState value)? error,
    TResult? Function(LogoutProfileBlocState value)? logout,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingProfileBlocState value)? loading,
    TResult Function(DataProfileBlocState value)? data,
    TResult Function(ErrorProfileBlocState value)? error,
    TResult Function(LogoutProfileBlocState value)? logout,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingProfileBlocState implements ProfileBlocState {
  const factory LoadingProfileBlocState() = _$LoadingProfileBlocState;
}

/// @nodoc
abstract class _$$DataProfileBlocStateCopyWith<$Res> {
  factory _$$DataProfileBlocStateCopyWith(_$DataProfileBlocState value,
          $Res Function(_$DataProfileBlocState) then) =
      __$$DataProfileBlocStateCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileEntity data});
}

/// @nodoc
class __$$DataProfileBlocStateCopyWithImpl<$Res>
    extends _$ProfileBlocStateCopyWithImpl<$Res, _$DataProfileBlocState>
    implements _$$DataProfileBlocStateCopyWith<$Res> {
  __$$DataProfileBlocStateCopyWithImpl(_$DataProfileBlocState _value,
      $Res Function(_$DataProfileBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DataProfileBlocState(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileEntity,
    ));
  }
}

/// @nodoc

class _$DataProfileBlocState implements DataProfileBlocState {
  const _$DataProfileBlocState(this.data);

  @override
  final ProfileEntity data;

  @override
  String toString() {
    return 'ProfileBlocState.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataProfileBlocState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataProfileBlocStateCopyWith<_$DataProfileBlocState> get copyWith =>
      __$$DataProfileBlocStateCopyWithImpl<_$DataProfileBlocState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ProfileEntity data) data,
    required TResult Function(String msg) error,
    required TResult Function() logout,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ProfileEntity data)? data,
    TResult? Function(String msg)? error,
    TResult? Function()? logout,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ProfileEntity data)? data,
    TResult Function(String msg)? error,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingProfileBlocState value) loading,
    required TResult Function(DataProfileBlocState value) data,
    required TResult Function(ErrorProfileBlocState value) error,
    required TResult Function(LogoutProfileBlocState value) logout,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingProfileBlocState value)? loading,
    TResult? Function(DataProfileBlocState value)? data,
    TResult? Function(ErrorProfileBlocState value)? error,
    TResult? Function(LogoutProfileBlocState value)? logout,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingProfileBlocState value)? loading,
    TResult Function(DataProfileBlocState value)? data,
    TResult Function(ErrorProfileBlocState value)? error,
    TResult Function(LogoutProfileBlocState value)? logout,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataProfileBlocState implements ProfileBlocState {
  const factory DataProfileBlocState(final ProfileEntity data) =
      _$DataProfileBlocState;

  ProfileEntity get data;
  @JsonKey(ignore: true)
  _$$DataProfileBlocStateCopyWith<_$DataProfileBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorProfileBlocStateCopyWith<$Res> {
  factory _$$ErrorProfileBlocStateCopyWith(_$ErrorProfileBlocState value,
          $Res Function(_$ErrorProfileBlocState) then) =
      __$$ErrorProfileBlocStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ErrorProfileBlocStateCopyWithImpl<$Res>
    extends _$ProfileBlocStateCopyWithImpl<$Res, _$ErrorProfileBlocState>
    implements _$$ErrorProfileBlocStateCopyWith<$Res> {
  __$$ErrorProfileBlocStateCopyWithImpl(_$ErrorProfileBlocState _value,
      $Res Function(_$ErrorProfileBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ErrorProfileBlocState(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorProfileBlocState implements ErrorProfileBlocState {
  const _$ErrorProfileBlocState(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'ProfileBlocState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorProfileBlocState &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorProfileBlocStateCopyWith<_$ErrorProfileBlocState> get copyWith =>
      __$$ErrorProfileBlocStateCopyWithImpl<_$ErrorProfileBlocState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ProfileEntity data) data,
    required TResult Function(String msg) error,
    required TResult Function() logout,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ProfileEntity data)? data,
    TResult? Function(String msg)? error,
    TResult? Function()? logout,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ProfileEntity data)? data,
    TResult Function(String msg)? error,
    TResult Function()? logout,
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
    required TResult Function(LoadingProfileBlocState value) loading,
    required TResult Function(DataProfileBlocState value) data,
    required TResult Function(ErrorProfileBlocState value) error,
    required TResult Function(LogoutProfileBlocState value) logout,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingProfileBlocState value)? loading,
    TResult? Function(DataProfileBlocState value)? data,
    TResult? Function(ErrorProfileBlocState value)? error,
    TResult? Function(LogoutProfileBlocState value)? logout,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingProfileBlocState value)? loading,
    TResult Function(DataProfileBlocState value)? data,
    TResult Function(ErrorProfileBlocState value)? error,
    TResult Function(LogoutProfileBlocState value)? logout,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorProfileBlocState implements ProfileBlocState {
  const factory ErrorProfileBlocState(final String msg) =
      _$ErrorProfileBlocState;

  String get msg;
  @JsonKey(ignore: true)
  _$$ErrorProfileBlocStateCopyWith<_$ErrorProfileBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutProfileBlocStateCopyWith<$Res> {
  factory _$$LogoutProfileBlocStateCopyWith(_$LogoutProfileBlocState value,
          $Res Function(_$LogoutProfileBlocState) then) =
      __$$LogoutProfileBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutProfileBlocStateCopyWithImpl<$Res>
    extends _$ProfileBlocStateCopyWithImpl<$Res, _$LogoutProfileBlocState>
    implements _$$LogoutProfileBlocStateCopyWith<$Res> {
  __$$LogoutProfileBlocStateCopyWithImpl(_$LogoutProfileBlocState _value,
      $Res Function(_$LogoutProfileBlocState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutProfileBlocState implements LogoutProfileBlocState {
  const _$LogoutProfileBlocState();

  @override
  String toString() {
    return 'ProfileBlocState.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutProfileBlocState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ProfileEntity data) data,
    required TResult Function(String msg) error,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ProfileEntity data)? data,
    TResult? Function(String msg)? error,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ProfileEntity data)? data,
    TResult Function(String msg)? error,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingProfileBlocState value) loading,
    required TResult Function(DataProfileBlocState value) data,
    required TResult Function(ErrorProfileBlocState value) error,
    required TResult Function(LogoutProfileBlocState value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingProfileBlocState value)? loading,
    TResult? Function(DataProfileBlocState value)? data,
    TResult? Function(ErrorProfileBlocState value)? error,
    TResult? Function(LogoutProfileBlocState value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingProfileBlocState value)? loading,
    TResult Function(DataProfileBlocState value)? data,
    TResult Function(ErrorProfileBlocState value)? error,
    TResult Function(LogoutProfileBlocState value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutProfileBlocState implements ProfileBlocState {
  const factory LogoutProfileBlocState() = _$LogoutProfileBlocState;
}
