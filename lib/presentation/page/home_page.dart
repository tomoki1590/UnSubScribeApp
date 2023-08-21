import 'package:flutter/material.dart';

import '../../architecture-sample/cobo-/presentation/page/todo/todo_page.dart';
import '../../architecture-sample/mvvm/presentation/view/todo_page.dart'
    as mvvm;
import '../page_navigator.dart';
import 'basic_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Text('Listを入れる'),
            TextButton(
              onPressed: () {
                PageNavigator.push(context, const TodoPage());
              },
              child: const Text('サンプルTodo/cobo-architecture'),
            ),
            TextButton(
              onPressed: () {
                PageNavigator.push(context, const mvvm.TodoPage());
              },
              child: const Text('サンプルTodo/simple-mvvm-architecture'),
            ),
            TextButton(
              onPressed: () {
                PageNavigator.push(context, const BasicPage());
              },
              child: const Text('仮ページ'),
            ),
          ],
        ),
      ),
    );
  }
}
