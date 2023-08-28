// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'other_subscribe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Othersubscribe _$OthersubscribeFromJson(Map<String, dynamic> json) {
  return _Othersubscribe.fromJson(json);
}

/// @nodoc
mixin _$Othersubscribe {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imgUrl => throw _privateConstructorUsedError;
  String get deleteUrl => throw _privateConstructorUsedError;
  Map<String, int> get subscribePlan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OthersubscribeCopyWith<Othersubscribe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OthersubscribeCopyWith<$Res> {
  factory $OthersubscribeCopyWith(
          Othersubscribe value, $Res Function(Othersubscribe) then) =
      _$OthersubscribeCopyWithImpl<$Res, Othersubscribe>;
  @useResult
  $Res call(
      {String id,
      String name,
      String imgUrl,
      String deleteUrl,
      Map<String, int> subscribePlan});
}

/// @nodoc
class _$OthersubscribeCopyWithImpl<$Res, $Val extends Othersubscribe>
    implements $OthersubscribeCopyWith<$Res> {
  _$OthersubscribeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgUrl = null,
    Object? deleteUrl = null,
    Object? subscribePlan = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      deleteUrl: null == deleteUrl
          ? _value.deleteUrl
          : deleteUrl // ignore: cast_nullable_to_non_nullable
              as String,
      subscribePlan: null == subscribePlan
          ? _value.subscribePlan
          : subscribePlan // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OthersubscribeCopyWith<$Res>
    implements $OthersubscribeCopyWith<$Res> {
  factory _$$_OthersubscribeCopyWith(
          _$_Othersubscribe value, $Res Function(_$_Othersubscribe) then) =
      __$$_OthersubscribeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String imgUrl,
      String deleteUrl,
      Map<String, int> subscribePlan});
}

/// @nodoc
class __$$_OthersubscribeCopyWithImpl<$Res>
    extends _$OthersubscribeCopyWithImpl<$Res, _$_Othersubscribe>
    implements _$$_OthersubscribeCopyWith<$Res> {
  __$$_OthersubscribeCopyWithImpl(
      _$_Othersubscribe _value, $Res Function(_$_Othersubscribe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imgUrl = null,
    Object? deleteUrl = null,
    Object? subscribePlan = null,
  }) {
    return _then(_$_Othersubscribe(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      deleteUrl: null == deleteUrl
          ? _value.deleteUrl
          : deleteUrl // ignore: cast_nullable_to_non_nullable
              as String,
      subscribePlan: null == subscribePlan
          ? _value._subscribePlan
          : subscribePlan // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Othersubscribe extends _Othersubscribe {
  const _$_Othersubscribe(
      {this.id = '',
      this.name = '',
      this.imgUrl = '',
      this.deleteUrl = '',
      final Map<String, int> subscribePlan = const <String, int>{}})
      : _subscribePlan = subscribePlan,
        super._();

  factory _$_Othersubscribe.fromJson(Map<String, dynamic> json) =>
      _$$_OthersubscribeFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String imgUrl;
  @override
  @JsonKey()
  final String deleteUrl;
  final Map<String, int> _subscribePlan;
  @override
  @JsonKey()
  Map<String, int> get subscribePlan {
    if (_subscribePlan is EqualUnmodifiableMapView) return _subscribePlan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_subscribePlan);
  }

  @override
  String toString() {
    return 'Othersubscribe(id: $id, name: $name, imgUrl: $imgUrl, deleteUrl: $deleteUrl, subscribePlan: $subscribePlan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Othersubscribe &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.deleteUrl, deleteUrl) ||
                other.deleteUrl == deleteUrl) &&
            const DeepCollectionEquality()
                .equals(other._subscribePlan, _subscribePlan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imgUrl, deleteUrl,
      const DeepCollectionEquality().hash(_subscribePlan));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OthersubscribeCopyWith<_$_Othersubscribe> get copyWith =>
      __$$_OthersubscribeCopyWithImpl<_$_Othersubscribe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OthersubscribeToJson(
      this,
    );
  }
}

abstract class _Othersubscribe extends Othersubscribe {
  const factory _Othersubscribe(
      {final String id,
      final String name,
      final String imgUrl,
      final String deleteUrl,
      final Map<String, int> subscribePlan}) = _$_Othersubscribe;
  const _Othersubscribe._() : super._();

  factory _Othersubscribe.fromJson(Map<String, dynamic> json) =
      _$_Othersubscribe.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get imgUrl;
  @override
  String get deleteUrl;
  @override
  Map<String, int> get subscribePlan;
  @override
  @JsonKey(ignore: true)
  _$$_OthersubscribeCopyWith<_$_Othersubscribe> get copyWith =>
      throw _privateConstructorUsedError;
}
