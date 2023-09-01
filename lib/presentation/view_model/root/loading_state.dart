import 'package:firebase_auth/firebase_auth.dart';

sealed class LoginState {}

class LoginSuccess extends LoginState {
  LoginSuccess(this.user);
  final User user;
}

class LoginFailure extends LoginState {}

class LoginLoading extends LoginState {}
