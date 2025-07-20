class UserCreateRequestModel {
  String firstName;
  String lastName;
  String email;
  String password;

  UserCreateRequestModel({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.password,
  });
}
