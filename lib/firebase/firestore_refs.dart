// ignore_for_file: flutter_style_todos

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:unsubscribe_app/model/user/user.dart';

import '../model/todo/todo.dart';

final _db = FirebaseFirestore.instance;

/// todos コレクションの参照。
final todosRef = _db.collection('todos').withConverter<Todo>(
      fromFirestore: (ds, _) => Todo.fromDocumentSnapshot(ds),
      toFirestore: (obj, _) => obj.toJsonForFirestore(),
    );

/// todo ドキュメントの参照。
DocumentReference<Todo> todoRef({required String todoId}) =>
    todosRef.doc(todoId);

/// user コレクションの参照。
final usersRef = _db.collection('user').withConverter<Users>(
      fromFirestore: (ds, _) => Users.fromDocumentSnapshot(ds),
      toFirestore: (obj, _) => obj.toJsonForFirestore(),
    );
