part of 'login_bloc.dart';

@immutable
class LoginState {
  final String username;
  final String password;

  LoginState({
    this.username = '',
    this.password = '',
  });
}

class LoginInitial extends LoginState {}

LoginState copyWith({
  required String username,
  required String password,
}) {
  return LoginState(
    username: username,
    password: password,
  );
}
