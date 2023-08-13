// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoDocument _$$_TodoDocumentFromJson(Map<String, dynamic> json) =>
    _$_TodoDocument(
      description: json['description'] as String? ?? '',
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_TodoDocumentToJson(_$_TodoDocument instance) =>
    <String, dynamic>{
      'description': instance.description,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
