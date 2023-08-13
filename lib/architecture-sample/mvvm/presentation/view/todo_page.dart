import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unsbscribe_app/presentation/components/loading.dart';

import '../view_model/todo_page_view_model.dart';

class TodoPage extends ConsumerWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewState = ref.watch(todoPageViewModelProvider);
    final viewModel = ref.read(todoPageViewModelProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('サンプルTodo'),
      ),
      body: viewState.todos.when(
        data: (todos) => Column(
          children: [
            TextField(
              controller: viewModel.descriptionController,
              decoration: const InputDecoration(
                hintText: 'TODO を入力',
              ),
            ),
            Expanded(
              child: ListView(
                children: todos
                    .map(
                      (todo) => Row(
                        children: [
                          Text(todo.description),
                          IconButton(
                            onPressed: () => viewModel.deleteTodo(todo.todoId),
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
          child: OverlayLoading(),
        ),
        error: (error, stackTrace) => Text('エラー：$error スタックトレース：$stackTrace'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.addTodo,
        child: const Icon(Icons.add),
      ),
    );
  }
}
