import 'package:flutter/material.dart';

class OtherSubscribeTab extends StatelessWidget {
  const OtherSubscribeTab({super.key});

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
                          'https://onl.bz/gsdG42w',
                        ),
                        width: 60,
                        height: 40,
                      ),
                      Text(
                        'Flutter大学',
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
