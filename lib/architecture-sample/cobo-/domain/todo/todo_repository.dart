import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'entity/todo.dart';

final todoRepositoryProvider = Provider<TodoRepository>(
  (_) => throw UnimplementedError('Provider was not initialized'),
);

abstract interface class TodoRepository {
  /// Create
  Future<void> add({required Todo todo});

  /// Read
  Stream<List<Todo>> subscribeTodos();

  /// Update
  Future<void> update({required Todo todo});

  /// Delete
  Future<void> delete({required String todoId});

  /// 破棄処理の実装をルール付けておく
  void dispose();
}
