// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_subscribe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Othersubscribe _$$_OthersubscribeFromJson(Map<String, dynamic> json) =>
    _$_Othersubscribe(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      imgUrl: json['imgUrl'] as String? ?? '',
      deleteUrl: json['deleteUrl'] as String? ?? '',
      subscribePlan: (json['subscribePlan'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int),
          ) ??
          const <String, int>{},
    );

Map<String, dynamic> _$$_OthersubscribeToJson(_$_Othersubscribe instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imgUrl': instance.imgUrl,
      'deleteUrl': instance.deleteUrl,
      'subscribePlan': instance.subscribePlan,
    };
