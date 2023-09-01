import 'package:firebase_auth/firebase_auth.dart';

/// 参考：https://www.sandromaglione.com/techblog/records-and-patterns-dart-language

sealed class LoginState {}

class LoginSuccess extends LoginState {
  LoginSuccess(this.user);
  final User user;
}

class LoginFailure extends LoginState {}

class LoginLoading extends LoginState {}
