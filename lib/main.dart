import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unsbscribe_app/architecture-sample/cobo-/domain/todo/todo_repository.dart';
import 'package:unsbscribe_app/architecture-sample/cobo-/infrastructure/firebase/todo/todo_repository_impl.dart';
import 'package:unsbscribe_app/presentation/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ProviderScope(
      overrides: [
        todoRepositoryProvider.overrideWith((ref) {
          return TodoRepostiroyImpl();
        })
      ],
      child: const App(),
    ),
  );
}
