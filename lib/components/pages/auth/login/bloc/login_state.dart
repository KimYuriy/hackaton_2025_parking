part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginWaitForState extends LoginInitial {}

final class LoginErrorState extends LoginInitial {
  LoginErrorState({required this.exception});

  final Exception exception;
}