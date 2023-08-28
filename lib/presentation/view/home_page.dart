import 'package:flutter/material.dart';
import 'package:unsbscribe_app/presentation/view/page_navigator.dart';
import 'package:unsbscribe_app/presentation/view/todo_page.dart';

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
                PageNavigator.push(context, const TodoPage());
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
