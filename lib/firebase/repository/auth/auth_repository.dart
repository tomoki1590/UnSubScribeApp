import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../model/user/user.dart';
import '../../firestore_refs.dart';

/// [authRepositoryProvider]は[AuthRepository]のインスタンスを提供するための`Provider`です。
final authRepositoryProvider = Provider.autoDispose((ref) => AuthRepository());

/// [userIdStateProvider]はユーザーのIDの状態を管理するための`StateProvider`です。
final userIdStateProvider = StateProvider<String>((ref) => '');

/// [AuthRepository]はFirebase Authenticationとのインタラクションを担当するクラス。
class AuthRepository {
  /// FirebaseAuthのインスタンスへの参照。
  final _auth = FirebaseAuth.instance;

  /// 匿名ユーザーとしてFirebase Authenticationにサインイン。
  ///
  /// 成功した場合は[UserCredential]を返し、失敗またはキャンセルされた場合は`null`を返す。
  Future<UserCredential?> signInAnonymously() async {
    return _auth.signInAnonymously();
  }

  Future<void> addUser() async {
    ///UID取得確認
    final uid = FirebaseAuth.instance.currentUser!.uid;
    final users = Users(uid: uid, createdAt: DateTime.now());

    print('Signed Out with temporary account. uid: $uid');
    await usersRef.doc(uid).set(users);
  }

  /// Firebaseのユーザーの認証状態の変更を購読します。
  ///
  /// ユーザーの状態が変更されるたびに[User]をストリームとして送出する。ログアウトまたはサインアウトの場合は`null`を送出する。
  Stream<User?> subscribeUser() {
    return _auth.authStateChanges();
  }
}
