import 'package:flutter/material.dart';
import 'package:unsbscribe_app/presentation/page_navigator.dart';

import 'basic_page.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x00031524),
      appBar: AppBar(
        backgroundColor: const Color(0x00031524),
        actions: [
          IconButton(
            onPressed: () {
              PageNavigator.push(context, const BasicPage());
            },
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child: Container(
          width: 336,
          height: 464,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(46),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    '通知設定',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_right),
                  )
                ],
              ),
              Row(
                children: [
                  const Text(
                    'テーマカラー変更',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_right),
                  )
                ],
              ),
              const Text(
                '起動画面に戻る',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                'データ引き継ぎ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                'ご意見箱',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
