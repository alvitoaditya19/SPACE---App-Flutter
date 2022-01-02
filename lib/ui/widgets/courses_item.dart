import 'package:flutter/material.dart';
import 'package:space/shared/theme.dart';

class CoursesItem extends StatelessWidget {
  final String name;
  final String code;
  final String imageUrl;

  const CoursesItem({
    Key? key,
    required this.name,
    required this.code,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 108,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.only(right: 27),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  code,
                  style: green2TextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: -12,
            right: -12,
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: kGreenColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imageUrl),
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
