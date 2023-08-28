import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_subscribe.freezed.dart';
part 'master_subscribe.g.dart';

@freezed
class Mastersubscribe with _$Mastersubscribe {
  const factory Mastersubscribe({
    @Default('') String id,
    @Default('') String name,
    @Default('') String imgUrl,
    @Default('') String deleteUrl,
    @Default(<String, int>{}) Map<String, int> subscribePlan,
  }) = _Mastersubscribe;
  const Mastersubscribe._();
  factory Mastersubscribe.fromJson(Map<String, dynamic> json) =>
      _$MastersubscribeFromJson(json);

  factory Mastersubscribe.fromDocumentSnapshot(DocumentSnapshot ds) {
    final data = ds.data()! as Map<String, dynamic>;
    return Mastersubscribe.fromJson(<String, dynamic>{
      ...data,
      'id': ds.id,
    });
  }
  Map<String, dynamic> toJsonForFirestore() {
    final json = toJson();
    return json..remove('id');
  }
}
