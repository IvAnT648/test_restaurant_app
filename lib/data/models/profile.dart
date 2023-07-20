import 'package:hive/hive.dart';

part 'profile.g.dart';

@HiveType(typeId: 1)
class ProfileModel {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String nickname;

  @HiveField(2)
  final String email;

  ProfileModel({
    required this.id,
    required this.nickname,
    required this.email,
  });

  Map<String, dynamic> toJsonMap() {
    return {
      'id': id,
      'nickname': nickname,
      'email': email,
    };
  }

  factory ProfileModel.fromJsonMap(Map<String, dynamic> map) {
    return ProfileModel(
      id: map['id'] as int,
      nickname: map['nickname'] as String,
      email: map['email'] as String,
    );
  }
}
