import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_subscribe.freezed.dart';
part 'main_subscribe.g.dart';

@freezed
class Mainsubscribe with _$Mainsubscribe {
  const factory Mainsubscribe({
    @Default('') String subscribeId,
    @Default('') String subscribeName,
    @Default('') String deleteUrl,
    @Default([]) List<Map<String, int >> subscribePlan,
  }) = _Mainsubscribe;
  const Mainsubscribe._();
  factory Mainsubscribe.fromJson(Map<String, dynamic> json) =>
      _$MainsubscribeFromJson(json);

  factory Mainsubscribe.fromDocumentSnapshot(DocumentSnapshot ds) {
    final data = ds.data()! as Map<String, dynamic>;
    return Mainsubscribe.fromJson(<String, dynamic>{
      ...data,
      'subscribeId': ds.id,
    });
  }
  Map<String, dynamic> toJsonForFirestore() {
    final json = toJson();
    return json..remove('subscribeId');
  }
}
