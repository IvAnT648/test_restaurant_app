
import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../models/auth.dart';

abstract class IAuthLocalStorage {
  AuthDataModel? get authData;
  bool get isLoggedIn;
  bool get isNotLoggedIn;
  Future<void> saveAuthData(AuthDataModel data);
  Future<void> clearAuthData();
}

@Singleton(as: IAuthLocalStorage)
class HiveAuthLocalStorage implements IAuthLocalStorage {
  static const _authDataBoxName = 'auth_data_box';
  static const _authDataKey = 'auth_data';
  static const _secureAuthKey = 'secure_auth';

  static late final Box<AuthDataModel> _box;

  static Future<void> init() async {
    const secureStorage = FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    );
    String? keyString = await secureStorage.read(key: _secureAuthKey);
    if (keyString == null) {
      keyString = base64UrlEncode(Hive.generateSecureKey());
      await secureStorage.write(
        key: _secureAuthKey,
        value: keyString,
      );
    }
    final encryptionKey = base64Url.decode(keyString);
    _box = await Hive.openBox<AuthDataModel>(
      _authDataBoxName,
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
  }

  @override
  AuthDataModel? get authData => _box.get(_authDataKey);

  @override
  bool get isLoggedIn => authData != null;
  @override
  bool get isNotLoggedIn => authData == null;

  @override
  Future<void> saveAuthData(AuthDataModel data) async {
    return await _box.put(_authDataKey, data);
  }

  @override
  Future<void> clearAuthData() async {
    await _box.clear();
  }
}
