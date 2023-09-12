import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/user/user.dart';
import '../firestore_refs.dart';

final userRepositoryProvider = Provider.autoDispose((ref) => UserRepository());

class UserRepository {
  Future<void> addUserId() async {
    ///UID取得確認
    final uid = FirebaseAuth.instance.currentUser!.uid;
    final users = Users(uid: uid, createdAt: DateTime.now());
    print('Signed Out with temporary account. uid: $uid');
    await usersRef.doc(uid).set(users);
  }
}
