import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/failure.dart';
import '../../domain/entities/profile.dart';
import '../models/profile.dart';
import '../sources/local/auth_storage.dart';
import '../sources/local/profile_storage.dart';
import '../sources/network/server.dart';

abstract class IProfileRepository {
  Future<Either<Failure, ProfileEntity>> getProfileData();
}

@Injectable(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final IServerDataSource _serverDataSource;
  final IAuthLocalStorage _authLocalStorage;
  final IProfileStorage _profileStorage;

  ProfileRepository(
    this._serverDataSource,
    this._authLocalStorage,
    this._profileStorage,
  );

  @override
  Future<Either<Failure, ProfileEntity>> getProfileData() async {
    try {
      if (_authLocalStorage.isNotLoggedIn) {
        if (_profileStorage.profileData != null) {
          await _profileStorage.clearProfileData();
        }
        return Left(NotLoggedInFailure());
      }

      final profileData = await _serverDataSource.getProfileData(
        _authLocalStorage.authData!.accessToken,
      );

      await _profileStorage.saveProfileData(profileData);

      return Right(profileData.asDomain);

    } on Failure catch (e) {
      print(e);
      return Left(e);
    } catch (e) {
      print(e);
      return Left(CommonError());
    }
  }
}

extension on ProfileModel {
  ProfileEntity get asDomain {
    return ProfileEntity(
      id: this.id,
      nickname: nickname,
      email: email,
    );
  }
}
