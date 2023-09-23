import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../app_colors.dart';

class SettingPage extends StatelessWidget {
  SettingPage({super.key, required this.controller});
  final PageController controller;

  final url = Uri.parse('https://forms.gle/cqwX14tgmS6nDGVq8');
  Future<void> _launchUrl() async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0x00031524),
      appBar: AppBar(
        backgroundColor: const Color(0x00031524),
        actions: [
          IconButton(
            onPressed: () {
              controller.nextPage(
                duration: const Duration(milliseconds: 200),
                curve: Curves.linear,
              );
            },
            icon: const Icon(
              Icons.home,
              color: AppColors.gray2,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: screenWidth,
          height: 464,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(46),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '通知設定',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'テーマカラー変更',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '起動画面に戻る',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'データ引き継ぎ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: _launchUrl,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ご意見箱',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: AppColors.white,
                    )
                  ],
                ),
              ),
              // const BuyMeACoffeeWidget(
              //   sponsorID: 'sBGXj7Pl4',
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
