// ignore_for_file: flutter_style_todos

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:unsbscribe_app/architecture-sample/cobo-/infrastructure/firebase/todo/document/todo_document.dart';

final _db = FirebaseFirestore.instance;

/// todos コレクションの参照。
final todosRef = _db.collection('todos').withConverter<TodoDocument>(
      fromFirestore: (ds, _) {
        return TodoDocument.fromDocumentSnapshot(ds);
      },
      toFirestore: (obj, _) => obj.toJson(),
    );

/// todo ドキュメントの参照。
DocumentReference<TodoDocument> todoRef({required String todoId}) =>
    todosRef.doc(todoId);
