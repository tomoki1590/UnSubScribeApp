import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unsubscribe_app/firebase/repository/auth/auth_repository.dart';

import 'loading_state.dart';

class RootPageState {
  RootPageState({required this.loginState});
  final LoginState loginState;

  RootPageState copyWith({User? user, LoginState? loginState}) {
    return RootPageState(
      loginState: loginState ?? this.loginState,
    );
  }
}

final rootPageViewModelProvider =
    StateNotifierProvider.autoDispose<RootPageViewModel, RootPageState>(
  (ref) => RootPageViewModel(
    authRepository: ref.watch(authRepositoryProvider),
  ),
);

class RootPageViewModel extends StateNotifier<RootPageState> {
  RootPageViewModel({required this.authRepository})
      : super(RootPageState(loginState: LoginLoading())) {
    signInAndSubscribeUser();
    authRepository.subscribeUser().listen((user) {
      if (user == null) {
        return;
      }
      state = RootPageState(
        loginState: LoginSuccess(user),
      );
    });
  }
  final AuthRepository authRepository;

  Future<void> signInAndSubscribeUser() async {
    try {
      await authRepository.signInAnonymously();
    } on Exception {
      state = RootPageState(loginState: LoginFailure());
    }
  }
}
