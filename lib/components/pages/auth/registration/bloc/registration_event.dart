part of 'registration_bloc.dart';

@immutable
sealed class RegistrationEvent {}

final class MakeRegistrationEvent extends RegistrationEvent {
  MakeRegistrationEvent({
    required this.context,
    required this.username,
    required this.email,
    required this.password
  });

  final BuildContext context;
  final String username;
  final String email;
  final String password;
}

final class InitializeWaitState extends RegistrationEvent {}
