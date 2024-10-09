class UserLoginModel {
  String? phoneNumber;
  String? password;

  UserLoginModel({
    this.phoneNumber,
    this.password,
  });

  // Factory constructor for creating a new UserLoginModel instance from a map
  factory UserLoginModel.fromJson(Map<String, dynamic> json) {
    return UserLoginModel(
      phoneNumber: json['phoneNumber'],
      password: json['password'],
    );
  }

  // Method to convert UserLoginModel instance to map
  Map<String, dynamic> toJson() {
    return {
      'phoneNumber': phoneNumber,
      'password': password,
    };
  }
}
