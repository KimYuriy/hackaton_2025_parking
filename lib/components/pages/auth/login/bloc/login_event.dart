part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

final class MakeLoginEvent extends LoginEvent {
  MakeLoginEvent({
    required this.context,
    required this.username,
    required this.password
  });

  final BuildContext context;
  final String username;
  final String password;
}

final class InitializeWaitState extends LoginEvent {}
