import 'package:flutter/material.dart';
import 'package:unsbscribe_app/presentation/view/add_subscibe_page.dart';
import 'package:unsbscribe_app/presentation/view/page_navigator.dart';

import 'setting_page.dart';

class BasicPage extends StatelessWidget {
  const BasicPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0x00031524),
      appBar: AppBar(
        backgroundColor: const Color(0x00031524),
        leading: IconButton(
          onPressed: () {
            PageNavigator.pushAndRemoveUntil(
              context,
              SettingPage(),
            );
          },
          icon: const Icon(
            Icons.settings,
            size: 26,
            color: Color.fromRGBO(217, 217, 217, 1),
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
                  color: const Color.fromRGBO(24, 24, 24, 1),
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
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            '解約日まで 31 日',
                            style: TextStyle(
                              color: Colors.white,
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
                color: const Color.fromRGBO(24, 24, 24, 1),
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
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Text(
                          '解約日まで 31 日',
                          style: TextStyle(
                            color: Colors.white,
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
                color: const Color.fromRGBO(24, 24, 24, 1),
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
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Text(
                          '解約日まで 31 日',
                          style: TextStyle(
                            color: Colors.white,
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
                color: const Color.fromRGBO(24, 24, 24, 1),
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
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Text(
                          '解約日まで 31 日',
                          style: TextStyle(
                            color: Colors.white,
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
                color: const Color.fromRGBO(24, 24, 24, 1),
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
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Text(
                          '解約日まで 31 日',
                          style: TextStyle(
                            color: Colors.white,
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
