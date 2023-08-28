import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'other_subscribe.freezed.dart';
part 'other_subscribe.g.dart';

@freezed
class Othersubscribe with _$Othersubscribe {
  const factory Othersubscribe({
    @Default('') String id,
    @Default('') String name,
    @Default('') String imgUrl,
    @Default('') String deleteUrl,
    @Default(<String, int>{}) Map<String, int> subscribePlan,
  }) = _Othersubscribe;
  const Othersubscribe._();
  factory Othersubscribe.fromJson(Map<String, dynamic> json) =>
      _$OthersubscribeFromJson(json);

  factory Othersubscribe.fromDocumentSnapshot(DocumentSnapshot ds) {
    final data = ds.data()! as Map<String, dynamic>;
    return Othersubscribe.fromJson(<String, dynamic>{
      ...data,
      'id': ds.id,
    });
  }
  Map<String, dynamic> toJsonForFirestore() {
    final json = toJson();
    return json..remove('id');
  }
}
