import 'package:flutter/material.dart';

import 'tab/master_subscribe_tab.dart';
import 'tab/sub_add_subscribe_page.dart';

class AddSubscribePage extends StatelessWidget {
  const AddSubscribePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0x00031524),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(78),
          child: AppBar(
            bottom: const TabBar(
              tabs: <Widget>[
                TextButton(
                  onPressed: null,
                  child: Text(
                    '主要サブスク',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: null,
                  child: Text(
                    '他のサブスク',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [MasterSubscribeTab(), OtherSubscribeTab()],
        ),
      ),
    );
  }
}
