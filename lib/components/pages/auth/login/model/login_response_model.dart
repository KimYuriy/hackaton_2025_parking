import 'package:equatable/equatable.dart';

class LoginResponseModel extends Equatable {
  LoginResponseModel({
    required this.accessToken,
    required this.tokenType
  });

  final String accessToken;
  final String tokenType;

  @override
  List<Object?> get props => [
    accessToken,
    tokenType
  ];

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      accessToken: json["access_token"],
      tokenType: json["token_type"]
    );
  }
}