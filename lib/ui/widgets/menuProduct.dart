import 'package:flutter/material.dart';
import 'package:space/shared/theme.dart';

class MenuProduct extends StatelessWidget {
  final String name;
  final String imageUrl;
  const MenuProduct({
    Key? key,
    required this.name,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 64,
            width: 64,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: kPrimaryColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(2, 4), // changes position of shadow
                ),
              ],
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imageUrl),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style:
                primaryTextStyle.copyWith(fontWeight: semiBold, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
