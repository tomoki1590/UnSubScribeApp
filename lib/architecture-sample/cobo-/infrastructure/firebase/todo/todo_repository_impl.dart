import '../../../domain/todo/entity/todo.dart';
import '../../../domain/todo/todo_repository.dart';
import '../firestore_refs.dart';
import 'document/todo_document.dart';

class TodoRepostiroyImpl implements TodoRepository {
  @override
  Future<void> add({required Todo todo}) async {
    await todosRef.add(
      TodoDocument(
        description: todo.description,
        createdAt: todo.createdAt,
      ),
    );
  }

  @override
  Future<void> delete({required String todoId}) async {
    await todoRef(todoId: todoId).delete();
  }

  @override
  Stream<List<Todo>> subscribeTodos() {
    return todosRef
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((qs) {
      final result = qs.docs.map((qds) => qds.data().toTodo(qds.id)).toList();
      return result;
    });
  }

  @override
  Future<void> update({required Todo todo}) async {
    await todoRef(todoId: todo.todoId).update(
      TodoDocument(
        description: todo.description,
        createdAt: todo.createdAt,
      ).toJson(),
    );
  }

  @override
  void dispose() {
    // 本クラスでは特別後始末が必要なものは無し
  }
}

extension on TodoDocument {
  Todo toTodo(String id) {
    return Todo(
      todoId: id,
      description: description,
      createdAt: createdAt,
    );
  }
}
