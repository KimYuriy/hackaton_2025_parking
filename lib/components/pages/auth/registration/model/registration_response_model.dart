import 'package:equatable/equatable.dart';

class RegistrationResponseModel extends Equatable {
  RegistrationResponseModel({
    required this.username,
    required this.email,
    required this.id,
    required this.isAdmin
  });

  final String username;
  final String email;
  final int id;
  final bool isAdmin;

  @override
  List<Object?> get props => [
    username,
    email,
    id,
    isAdmin
  ];

  factory RegistrationResponseModel.fromJson(Map<String, dynamic> json) {
    return RegistrationResponseModel(
        username: json["username"],
        email: json["email"],
        id: json["id"],
        isAdmin: json["is_admin"]
    );
  }
}