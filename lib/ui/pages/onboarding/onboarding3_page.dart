import 'package:flutter/material.dart';
import 'package:space/shared/theme.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Spacer(),
                    Container(
                      height: 260,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/icon-vektor1.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Center(
                    child: Container(
                      height: 375,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icon-vektor3.png'),
                        ),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 28,
                            ),
                            Container(
                              height: 10,
                              width: 250,
                              decoration: BoxDecoration(
                                color: Color(0xff3E6173),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Text(
                          'No More Hassle',
                          style: whiteTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 27,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Use the best facilities provided\nby the university in one apps\nthrough single-click.',
                      textAlign: TextAlign.center,
                      style: whiteTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
