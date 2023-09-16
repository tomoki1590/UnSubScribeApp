import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unsubscribe_app/firebase/repository/auth/auth_repository.dart';
import 'package:unsubscribe_app/firebase/repository/user_repository.dart';

import 'login_state.dart';

/// [RootPageState]は[RootPage]の現在のログイン状態を表現するクラスです。
///
/// [loginState]プロパティによって、ログインが成功、失敗、または読み込み中であるかが示されます。
class RootPageState {
  RootPageState({required this.loginState});
  final LoginState loginState;

  /// 現在の[RootPageState]のコピーを生成し、指定されたプロパティを使用して更新します。
  RootPageState copyWith({LoginState? loginState}) {
    return RootPageState(
      loginState: loginState ?? this.loginState,
    );
  }
}

/// [rootPageViewModelProvider]は[RootPageViewModel]のインスタンスを生成および提供するためのProvider。
final rootPageViewModelProvider =
    StateNotifierProvider.autoDispose<RootPageViewModel, RootPageState>(
  (ref) => RootPageViewModel(
    authRepository: ref.watch(authRepositoryProvider),
    userRepository: ref.watch(userRepositoryProvider),
  ),
);

/// [RootPageViewModel]は[RootPage]のビジネスロジックを管理するための`StateNotifier`。
///
/// このクラスはFirebase Authenticationとのインタラクションを担当し、ログインの成功、失敗、読み込み状態を
/// [RootPageState]を通じて通知します。
class RootPageViewModel extends StateNotifier<RootPageState> {
  RootPageViewModel({
    required this.authRepository,
    required this.userRepository,
  }) : super(RootPageState(loginState: LoginLoading())) {
    /// 初期化処理はこのスコープで行う

    /// 匿名認証
    signInAnonymously();

    /// Firebase Authenticationのユーザーの認証状態の変更を購読
    subscribeUser().listen((user) {
      if (user == null) {
        return;
      }
      state = RootPageState(
        loginState: LoginSuccess(user: user),
      );
    });
  }
  final AuthRepository authRepository;
  final UserRepository userRepository;

  /// 匿名でFirebase Authenticationにサインインします。
  Future<void> signInAnonymously() async {
    try {
      await authRepository.signInAnonymously();
      await userRepository.createUser();
    } on Exception {
      state = RootPageState(
        loginState: LoginFailure(
          errorText: 'サインインに失敗しました',
        ),
      );
    }
  }

  /// Firebaseのユーザーの認証状態の変更を購読します。
  Stream<User?> subscribeUser() async* {
    yield* authRepository.subscribeUser();
  }
}
