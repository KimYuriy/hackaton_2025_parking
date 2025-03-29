part of 'registration_bloc.dart';

@immutable
sealed class RegistrationState {}

final class RegistrationInitial extends RegistrationState {}

final class RegistrationWaitForState extends RegistrationInitial {

}

final class RegistrationErrorState extends RegistrationInitial {
  RegistrationErrorState({required this.exception});

  final Exception exception;
}