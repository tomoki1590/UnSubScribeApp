import 'package:flutter/material.dart';

class MasterSubscribeTab extends StatelessWidget {
  const MasterSubscribeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: const SizedBox(
              height: 100,
              child: Card(
                color: Color.fromRGBO(24, 24, 24, 1),
                child: Center(
                  child: Row(
                    children: [
                      Image(
                        image: NetworkImage(
                          'https://onl.tw/9zMzaPG',
                        ),
                        width: 60,
                        height: 40,
                      ),
                      Text(
                        'NetFlix',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
