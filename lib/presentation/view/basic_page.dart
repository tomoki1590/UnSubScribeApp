import 'package:flutter/material.dart';
import 'package:unsbscribe_app/presentation/view/add_subscibe_page.dart';
import 'package:unsbscribe_app/presentation/view/page_navigator.dart';

import 'component/app_colors.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: SizedBox(
                height: 100,
                width: screenWidth,
                child: Card(
                  color: AppColors.black3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Center(
                            child: Image(
                              image: NetworkImage(
                                'https://onl.bz/gsdG42w',
                              ),
                              width: 60,
                              height: 40,
                            ),
                          ),
                          Text(
                            'Flutter大学',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            '解約日まで 31 日',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 29,
                        width: 130,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(255, 93, 91, 1),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text(
                            '解約はこちら',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              width: screenWidth,
              child: Card(
                color: AppColors.black3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Center(
                          child: Image(
                            image: NetworkImage(
                              'https://onl.bz/gsdG42w',
                            ),
                            width: 60,
                            height: 40,
                          ),
                        ),
                        Text(
                          'Flutter大学',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Text(
                          '解約日まで 31 日',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 29,
                      width: 130,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(255, 93, 91, 1),
                          foregroundColor: Colors.white,
                        ),
                        child: const Text(
                          '解約はこちら',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
              width: screenWidth,
              child: Card(
                color: AppColors.black3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Center(
                          child: Image(
                            image: NetworkImage(
                              'https://onl.bz/gsdG42w',
                            ),
                            width: 60,
                            height: 40,
                          ),
                        ),
                        Text(
                          'Flutter大学',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Text(
                          '解約日まで 31 日',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 29,
                      width: 130,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(255, 93, 91, 1),
                          foregroundColor: Colors.white,
                        ),
                        child: const Text(
                          '解約はこちら',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
              width: screenWidth,
              child: Card(
                color: AppColors.black3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Center(
                          child: Image(
                            image: NetworkImage(
                              'https://onl.bz/gsdG42w',
                            ),
                            width: 60,
                            height: 40,
                          ),
                        ),
                        Text(
                          'Flutter大学',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Text(
                          '解約日まで 31 日',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 29,
                      width: 130,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(255, 93, 91, 1),
                          foregroundColor: Colors.white,
                        ),
                        child: const Text(
                          '解約はこちら',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
              width: screenWidth,
              child: Card(
                color: AppColors.black3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Center(
                          child: Image(
                            image: NetworkImage(
                              'https://onl.bz/gsdG42w',
                            ),
                            width: 60,
                            height: 40,
                          ),
                        ),
                        Text(
                          'Flutter大学',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Text(
                          '解約日まで 31 日',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 29,
                      width: 130,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(255, 93, 91, 1),
                          foregroundColor: Colors.white,
                        ),
                        child: const Text(
                          '解約はこちら',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
