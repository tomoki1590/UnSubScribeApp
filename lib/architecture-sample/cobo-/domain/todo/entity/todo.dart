import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    required String todoId,
    required String description,
    required DateTime? createdAt,
  }) = _Todo;
}
