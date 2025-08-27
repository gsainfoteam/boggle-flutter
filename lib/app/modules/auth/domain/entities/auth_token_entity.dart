class AuthTokenEntity {
  final String accessToken;
  final String? refreshToken;
  final String? uuid;

  AuthTokenEntity({
    required this.accessToken,
    this.refreshToken,
    this.uuid,
  });
}
