// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'todo_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoDocument _$$_TodoDocumentFromJson(Map<String, dynamic> json) =>
    _$_TodoDocument(
      todoId: json['todoId'] as String? ?? '',
      description: json['description'] as String? ?? '',
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_TodoDocumentToJson(_$_TodoDocument instance) =>
    <String, dynamic>{
      'todoId': instance.todoId,
      'description': instance.description,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
