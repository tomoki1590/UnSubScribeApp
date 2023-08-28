// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_subscribe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Mastersubscribe _$$_MastersubscribeFromJson(Map<String, dynamic> json) =>
    _$_Mastersubscribe(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      imgUrl: json['imgUrl'] as String? ?? '',
      deleteUrl: json['deleteUrl'] as String? ?? '',
      subscribePlan: (json['subscribePlan'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int),
          ) ??
          const <String, int>{},
    );

Map<String, dynamic> _$$_MastersubscribeToJson(_$_Mastersubscribe instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imgUrl': instance.imgUrl,
      'deleteUrl': instance.deleteUrl,
      'subscribePlan': instance.subscribePlan,
    };
