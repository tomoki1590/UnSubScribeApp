import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../page_navigator.dart';
import 'add_subscibe_page.dart';
import 'component/list_sample.dart';

class BasicPage extends StatelessWidget {
  const BasicPage({
    super.key,
    required this.controller,
  });
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0x00031524),
      appBar: AppBar(
        backgroundColor: const Color(0x00031524),
        leading: IconButton(
          onPressed: () {
            controller.previousPage(
              duration: const Duration(milliseconds: 200),
              curve: Curves.linear,
            );
          },
          icon: const Icon(
            Icons.settings,
            size: 26,
            color: AppColors.gray2,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ListExpandedSample(),
            ListExpandedSample(),
            ListExpandedSample(),
            ListExpandedSample(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          PageNavigator.push(context, const AddSubscribePage());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
