class UserRegistrationModel {
  String? name;
  String? phoneNumber;
  String? password;
  String? confPassword;
  String? email;

  UserRegistrationModel({
    this.name,
    this.phoneNumber,
    this.password,
    this.confPassword,
    this.email,
  });

  // Factory constructor for creating a new UserModel instance from a map
  factory UserRegistrationModel.fromJson(Map<String, dynamic> json) {
    return UserRegistrationModel(
      name: json['name'],
      phoneNumber: json['phoneNumber'],
      password: json['password'],
      confPassword: json['confPassword'],
      email: json['email'],
    );
  }

  // Method to convert UserModel instance to map
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'phoneNumber': phoneNumber,
      'password': password,
      'confPassword': confPassword,
      'email': email,
    };
  }
}
