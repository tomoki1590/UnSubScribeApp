import 'package:flutter/material.dart';
import 'package:unsbscribe_app/presentation/view/basic_page.dart';

import '../setting_page.dart';

class PageViewer extends StatefulWidget {
  const PageViewer({super.key});

  @override
  State<PageViewer> createState() => _PageViewerState();
}

class _PageViewerState extends State<PageViewer> {
  int pageIndex = 1;
  PageController controller = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Scaffold(
            backgroundColor: Colors.black38,
            body: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  pageIndex = index;
                });
              },
              children: [
                SettingPage(controller: controller),
                BasicPage(controller: controller),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
