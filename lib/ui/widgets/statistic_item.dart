

import 'package:flutter/material.dart';
import 'package:space/shared/theme.dart';

class StatisticItem extends StatelessWidget {
  final String name;
  final String summary;
  final String imageUrl;
  final Color colorString;

  const StatisticItem({
    Key? key,
    required this.name,
    required this.summary,
    required this.imageUrl,
    required this.colorString,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(imageUrl, height: 30, width: 30),
        SizedBox(
          width: 7,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: primaryTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 12,
              ),
            ),
            Text(
              summary,
              style: redTextStyle.copyWith(
                color: colorString,
                fontWeight: medium,
                fontSize: 12,
              ),
            ),
          ],
        )
      ],
    );
  }
}
