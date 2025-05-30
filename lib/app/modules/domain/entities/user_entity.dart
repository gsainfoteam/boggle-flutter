class UserEntity {
  final String email;
  final String name;
  final String uuid;
  final String? studentId;
  final String? major;

  UserEntity({
    required this.email,
    required this.name,
    required this.studentId,
    required this.major,
    required this.uuid,
  });
}
