import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unsbscribe_app/architecture-sample/cobo-/application/usecase/todo/todo_usecase.dart';

class TodoPage extends ConsumerWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('サンプルTodo'),
      ),
      body: ref.watch(todosSubscribeProvider).when(
            data: (todos) => Column(
              children: [
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'TODO を入力',
                  ),
                  onChanged: (text) {
                    ref
                        .watch(todoDescriptionStateProvider.notifier)
                        .update((_) => text);
                  },
                ),
                Expanded(
                  child: ListView(
                    children: todos
                        .map(
                          (todo) => Row(
                            children: [
                              Text(todo.description),
                              IconButton(
                                onPressed: () {
                                  ref
                                      .read(todoUseCaseProvider)
                                      .deleteTodo(todo.todoId);
                                },
                                icon: const Icon(Icons.delete),
                              )
                            ],
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (error, stackTrace) =>
                Text('エラー：$error スタックトレース：$stackTrace'),
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final discription = ref.watch(todoDescriptionStateProvider);
          if (discription != '') {
            ref.read(todoUseCaseProvider).addTodo(discription);
          }
        },
      ),
    );
  }
}
