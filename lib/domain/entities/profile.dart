
class ProfileEntity {
  final int id;
  final String nickname;
  final String email;

  const ProfileEntity({
    required this.id,
    required this.nickname,
    required this.email,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileEntity &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          nickname == other.nickname &&
          email == other.email;

  @override
  int get hashCode => id.hashCode ^ nickname.hashCode ^ email.hashCode;
}
