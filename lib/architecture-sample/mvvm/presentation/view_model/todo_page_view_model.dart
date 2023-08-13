// ignore_for_file: flutter_style_todos

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unsbscribe_app/application/state/overlay_loading_provider.dart';

import '../../firebase/repository/todo_repository.dart';
import '../../model/todo/todo.dart';

/// TodoPageの状態を表すクラス
/// 主にTodoPageに表示したいデータを保持する
/// このクラスはTodoPageViewModelを介してのみ更新される
/// 1 Page に対して 1 ViewModel と 1 State を持つ
class TodoPageState {
  TodoPageState({required this.todos, required this.inputText});
  final AsyncValue<List<Todo>> todos;
  final String inputText;

  TodoPageState copyWith({AsyncValue<List<Todo>>? todos, String? inputText}) {
    return TodoPageState(
      todos: todos ?? this.todos,
      inputText: inputText ?? this.inputText,
    );
  }
}

/// TodoPageの状態を管理するProvider
final todoPageViewModelProvider =
    StateNotifierProvider<TodoPageViewModel, TodoPageState>(
  (ref) => TodoPageViewModel(
    ref.read(todoRepositoryProvider),
    ref.watch(overlayLoadingProvider.notifier),
  ),
);

/// TodoPageに対する操作を行うためのクラス
/// 画面の状態をを表すクラス[TodoPageState]を引数にとる
class TodoPageViewModel extends StateNotifier<TodoPageState> {
  TodoPageViewModel(this._todoRepository, this._overlayLoading)
      : super(TodoPageState(todos: const AsyncValue.loading(), inputText: '')) {
    descriptionController.addListener(() {
      updateDescription(descriptionController.text);
    });

    // 初期化時にTodoの一覧を取得する
    _subscription = _todoRepository.subscribeTodos().listen(
      (todos) {
        _overlayLoading.update((_) => true);
        state = state.copyWith(todos: AsyncValue.data(todos));
        _overlayLoading.update((_) => false);
      },
    );
  }

  final TodoRepository _todoRepository;
  final StateController<bool> _overlayLoading;
  final TextEditingController descriptionController = TextEditingController();
  StreamSubscription<List<Todo>>? _subscription;

  /// 説明文を更新する
  void updateDescription(String description) {
    state = state.copyWith(inputText: description);
  }

  /// Todoを追加する
  Future<void> addTodo() async {
    _overlayLoading.update((_) => true);
    // オーバーレイローディングを確認するために意図的に遅延させる
    // ignore: inference_failure_on_instance_creation
    await Future.delayed(const Duration(seconds: 1));
    if (state.inputText.isNotEmpty) {
      await _todoRepository.add(
        todo: Todo(
          description: state.inputText,
          createdAt: DateTime.now(),
        ),
      );
      descriptionController.clear();
    }
    _overlayLoading.update((_) => false);
  }

  /// Todoを削除する
  Future<void> deleteTodo(String todoId) async {
    _overlayLoading.update((_) => true);
    // オーバーレイローディングを確認するために意図的に遅延させる
    // ignore: inference_failure_on_instance_creation
    await Future.delayed(const Duration(seconds: 1));
    await _todoRepository.delete(todoId: todoId);
    _overlayLoading.update((_) => false);
  }

  /// 画面が破棄された時に呼ばれる
  /// [StreamSubscription] をキャンセルする
  /// [TextEditingController] を破棄する
  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
