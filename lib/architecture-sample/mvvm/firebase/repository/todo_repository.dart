import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unsbscribe_app/architecture-sample/mvvm/firebase/firestore_refs.dart';

import '../../model/todo/todo.dart';

final todoRepositoryProvider = Provider<TodoRepository>(
  (_) => TodoRepository(),
);

class TodoRepository {
  Future<void> add({required Todo todo}) async {
    await todosRef.add(todo);
  }

  Future<void> delete({required String todoId}) async {
    await todoRef(todoId: todoId).delete();
  }

  Stream<List<Todo>> subscribeTodos() {
    return todosRef.orderBy('createdAt', descending: true).snapshots().map(
      (qs) {
        final result = qs.docs.map((qds) => qds.data()).toList();
        return result;
      },
    );
  }

  Future<void> update({required Todo todo}) async {
    await todoRef(todoId: todo.todoId).update(todo.toJson());
  }
}
