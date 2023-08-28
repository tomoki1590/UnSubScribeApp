import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../firebase/timestamp_converter.dart';

part 'subscribe.freezed.dart';
part 'subscribe.g.dart';

@freezed
class Subscribe with _$Subscribe {
  const factory Subscribe({
    @Default('') String reason,
    @TimestampConverter() deadDay,
  }) = _Subscribe;
  const Subscribe._();
  factory Subscribe.fromJson(Map<String, dynamic> json) =>
      _$SubscribeFromJson(json);

  factory Subscribe.fromDocumentSnapshot(DocumentSnapshot ds) {
    final data = ds.data()! as Map<String, dynamic>;
    return Subscribe.fromJson(<String, dynamic>{
      ...data,
      'subscribeId': ds.id,
    });
  }
  Map<String, dynamic> toJsonForFirestore() {
    final json = toJson();
    return json..remove('subscribeId');
  }
}
