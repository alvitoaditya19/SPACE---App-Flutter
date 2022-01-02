import 'package:flutter/material.dart';
import 'package:space/shared/theme.dart';

class NotificationItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String time;
  final Color? color;

  const NotificationItem(
      {Key? key,
      required this.name,
      required this.imageUrl,
      required this.time,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            color: color,
            height: 30,
            width: 30,
          ),
          SizedBox(
            width: 6,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: primaryTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                time,
                style: greenTextStyle.copyWith(
                  fontSize: 10,
                  fontWeight: medium,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
