import 'package:flutter/material.dart';

import '../../app_colors.dart';

class ListSample extends StatelessWidget {
  const ListSample({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: double.infinity,
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
    );
  }
}

class ListExpandedSample extends StatelessWidget {
  const ListExpandedSample({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth,
      child: const ExpansionTile(
        title: ListSample(),
        children: [
          Divider(),
          Row(
            children: [
              Text(
                'サブスク期間',
                style: TextStyle(
                  color: AppColors.gray2,
                ),
              ),
              Expanded(child: SizedBox()),
              Text(
                '8ヶ月',
                style: TextStyle(
                  color: AppColors.gray2,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '金額',
                style: TextStyle(
                  color: AppColors.gray2,
                ),
              ),
              Expanded(child: SizedBox()),
              Text(
                '€200',
                style: TextStyle(
                  color: AppColors.gray2,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
