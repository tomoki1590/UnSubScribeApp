import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../firebase/timestamp_converter.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @Default('') String uid,
    @TimestampConverter() DateTime? createdAt,
  }) = _User;
  const User._();
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.fromDocumentSnapshot(DocumentSnapshot ds) {
    final data = ds.data()! as Map<String, dynamic>;
    return User.fromJson(<String, dynamic>{
      ...data,
      'UserId': ds.id,
    });
  }
}
