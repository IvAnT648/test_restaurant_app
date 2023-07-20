
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_task/domain/entities.dart';

part 'state.freezed.dart';

@freezed
class ProfileBlocState with _$ProfileBlocState {
  const factory ProfileBlocState.loading() = LoadingProfileBlocState;
  const factory ProfileBlocState.data(ProfileEntity data) = DataProfileBlocState;
  const factory ProfileBlocState.error(String msg) = ErrorProfileBlocState;
  const factory ProfileBlocState.logout() = LogoutProfileBlocState;
}
