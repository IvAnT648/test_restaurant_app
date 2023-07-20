
import 'package:hive/hive.dart';

part 'auth.g.dart';

@HiveType(typeId: 0)
class AuthDataModel {
  @HiveField(0)
  final String accessToken;

  @HiveField(1)
  final String refreshToken;

  const AuthDataModel({
    required this.accessToken,
    required this.refreshToken,
  });
}
