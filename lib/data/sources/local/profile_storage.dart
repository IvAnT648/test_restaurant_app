import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../models/profile.dart';

abstract class IProfileStorage {
  ProfileModel? get profileData;
  Future<void> saveProfileData(ProfileModel data);
  Future<void> clearProfileData();
}

@Singleton(as: IProfileStorage)
class HiveProfileStorage implements IProfileStorage {
  static const _boxName = 'profile_box';
  static const _key = 'profile';

  static late final Box<ProfileModel?> _profileBox;

  static Future<void> init() async {
    _profileBox = await Hive.openBox<ProfileModel>(_boxName);
  }

  @override
  ProfileModel? get profileData => _profileBox.get(_key);

  @override
  Future<void> saveProfileData(ProfileModel data) async {
    return await _profileBox.put(_key, data);
  }

  @override
  Future<void> clearProfileData() async {
    await _profileBox.clear();
  }
}
