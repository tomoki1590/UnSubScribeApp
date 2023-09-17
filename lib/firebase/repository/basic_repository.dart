import 'package:flutter_riverpod/flutter_riverpod.dart';

final basicRepositoryProvider = Provider<BasicRepository>(
  (_) => BasicRepository(),
);

class BasicRepository {}
