class User {
  String? createdAt;
  String? name;
  String? nickname;
  bool? married;
  String? id;

  User({
    required this.createdAt,
    required this.name,
    required this.nickname,
    required this.married,
    required this.id,
  });

  factory User.fromJson(Map<String, Object?> json) => User(
      createdAt: json['createdAt'] as String?,
      name: json['name'] as String?,
      nickname: json['nickname'] as String?,
      married: json['married'] as bool?,
      id: json['id'] as String?);

  @override
  String toString() =>
      "\nUser(\n\t\tcreatedAt: $createdAt, name: $name, \n\t\tnickname: $nickname, \n\t\tmarried: $married, \n\t\tid: $id)";
}
