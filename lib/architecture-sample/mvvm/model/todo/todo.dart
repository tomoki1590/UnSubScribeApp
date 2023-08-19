import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../firebase/timestamp_converter.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

/// 画面とデータソースの両方に対応するデータモデル
@freezed
class Todo with _$Todo {
  const factory Todo({
    @Default('') String todoId,
    @Default('') String description,
    @TimestampConverter() DateTime? createdAt,
  }) = _Todo;
  const Todo._();

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  factory Todo.fromDocumentSnapshot(DocumentSnapshot ds) {
    final data = ds.data()! as Map<String, dynamic>;
    return Todo.fromJson(<String, dynamic>{
      ...data,
      'todoId': ds.id,
    });
  }

  Map<String, dynamic> toJsonForFirestore() {
    final json = toJson();
    return json..remove('todoId');
  }
}
