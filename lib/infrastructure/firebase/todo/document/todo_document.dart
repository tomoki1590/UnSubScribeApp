import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../timestamp_converter.dart';

part 'todo_document.freezed.dart';
part 'todo_document.g.dart';

@freezed
class TodoDocument with _$TodoDocument {
  const factory TodoDocument({
    @Default('') String todoId,
    @Default('') String description,
    @TimestampConverter() DateTime? createdAt,
  }) = _TodoDocument;

  factory TodoDocument.fromJson(Map<String, dynamic> json) =>
      _$TodoDocumentFromJson(json);

  factory TodoDocument.fromDocumentSnapshot(DocumentSnapshot ds) {
    final data = ds.data()! as Map<String, dynamic>;
    return TodoDocument.fromJson(<String, dynamic>{
      ...data,
      'expenseId': ds.id,
    });
  }

  const TodoDocument._();
}
