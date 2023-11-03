class UserModel {
  final dynamic id;
  final String name;

  UserModel( {
    required this.id,
    required this.name,

  });

  factory UserModel.fromJson(jsonData) {
    return UserModel(
      id: jsonData['id'],
      name: jsonData['name'],
    );
  }
}