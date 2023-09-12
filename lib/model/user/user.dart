import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../firebase/timestamp_converter.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class Users with _$Users {
  const factory Users({
    @Default('') String uid,
    @TimestampConverter() DateTime? createdAt,
  }) = _Users;
  const Users._();
  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

  factory Users.fromDocumentSnapshot(DocumentSnapshot ds) {
    final uid = FirebaseAuth.instance.currentUser!.uid;
    final data = ds.data()! as Map<String, dynamic>;
    return Users.fromJson(<String, dynamic>{
      ...data,
      'uid': uid,
    });
  }
  Map<String, dynamic> toJsonForFirestore() {
    final json = toJson();
    return json..remove('id');
  }
}
