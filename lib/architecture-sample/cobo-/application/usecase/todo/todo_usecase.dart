import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/todo/entity/todo.dart';
import '../../../domain/todo/todo_repository.dart';

final todosSubscribeProvider = StreamProvider<List<Todo>>((ref) {
  return ref.watch(todoRepositoryProvider).subscribeTodos();
});

final todoDescriptionStateProvider = StateProvider.autoDispose((ref) => '');

final todoUseCaseProvider = Provider.autoDispose<TodoUsecase>(
  (ref) => TodoUsecase(todoRepository: ref.watch(todoRepositoryProvider)),
);

class TodoUsecase {
  TodoUsecase({
    required TodoRepository todoRepository,
  }) : _todoRepository = todoRepository;

  final TodoRepository _todoRepository;

  Future<void> addTodo(String description) async {
    try {
      await _todoRepository.add(
        todo: Todo(
          todoId: '',
          description: description,
          createdAt: DateTime.now(),
        ),
      );
    } on Exception {
      /// TODO
    }
  }

  Future<void> deleteTodo(String id) async {
    try {
      await _todoRepository.delete(todoId: id);
    } on Exception {
      /// TODO
    }
  }
}
