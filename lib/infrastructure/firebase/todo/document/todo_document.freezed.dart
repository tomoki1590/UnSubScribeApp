// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoDocument _$TodoDocumentFromJson(Map<String, dynamic> json) {
  return _TodoDocument.fromJson(json);
}

/// @nodoc
mixin _$TodoDocument {
  String get todoId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoDocumentCopyWith<TodoDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDocumentCopyWith<$Res> {
  factory $TodoDocumentCopyWith(
          TodoDocument value, $Res Function(TodoDocument) then) =
      _$TodoDocumentCopyWithImpl<$Res, TodoDocument>;
  @useResult
  $Res call(
      {String todoId,
      String description,
      @TimestampConverter() DateTime? createdAt});
}

/// @nodoc
class _$TodoDocumentCopyWithImpl<$Res, $Val extends TodoDocument>
    implements $TodoDocumentCopyWith<$Res> {
  _$TodoDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoId = null,
    Object? description = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoDocumentCopyWith<$Res>
    implements $TodoDocumentCopyWith<$Res> {
  factory _$$_TodoDocumentCopyWith(
          _$_TodoDocument value, $Res Function(_$_TodoDocument) then) =
      __$$_TodoDocumentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String todoId,
      String description,
      @TimestampConverter() DateTime? createdAt});
}

/// @nodoc
class __$$_TodoDocumentCopyWithImpl<$Res>
    extends _$TodoDocumentCopyWithImpl<$Res, _$_TodoDocument>
    implements _$$_TodoDocumentCopyWith<$Res> {
  __$$_TodoDocumentCopyWithImpl(
      _$_TodoDocument _value, $Res Function(_$_TodoDocument) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoId = null,
    Object? description = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$_TodoDocument(
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoDocument extends _TodoDocument {
  const _$_TodoDocument(
      {this.todoId = '',
      this.description = '',
      @TimestampConverter() this.createdAt})
      : super._();

  factory _$_TodoDocument.fromJson(Map<String, dynamic> json) =>
      _$$_TodoDocumentFromJson(json);

  @override
  @JsonKey()
  final String todoId;
  @override
  @JsonKey()
  final String description;
  @override
  @TimestampConverter()
  final DateTime? createdAt;

  @override
  String toString() {
    return 'TodoDocument(todoId: $todoId, description: $description, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoDocument &&
            (identical(other.todoId, todoId) || other.todoId == todoId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, todoId, description, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoDocumentCopyWith<_$_TodoDocument> get copyWith =>
      __$$_TodoDocumentCopyWithImpl<_$_TodoDocument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoDocumentToJson(
      this,
    );
  }
}

abstract class _TodoDocument extends TodoDocument {
  const factory _TodoDocument(
      {final String todoId,
      final String description,
      @TimestampConverter() final DateTime? createdAt}) = _$_TodoDocument;
  const _TodoDocument._() : super._();

  factory _TodoDocument.fromJson(Map<String, dynamic> json) =
      _$_TodoDocument.fromJson;

  @override
  String get todoId;
  @override
  String get description;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_TodoDocumentCopyWith<_$_TodoDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
