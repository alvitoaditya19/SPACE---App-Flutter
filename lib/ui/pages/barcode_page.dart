import 'package:flutter/material.dart';
import 'package:space/shared/theme.dart';

class BarcodePage extends StatelessWidget {
  const BarcodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 400,
                  ),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        onPressed: () {},
                        iconSize: 24,
                        icon: Icon(Icons.arrow_back),
                        color: kWhiteColor,
                      ),
                      Text(
                        'Back',
                        style: whiteTextStyle.copyWith(
                            fontSize: 16, fontWeight: bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 416,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          color: Color(0xffDDDDDD).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 404,
                        margin: EdgeInsets.symmetric(horizontal: 42),
                        decoration: BoxDecoration(
                          color: Color(0xffEDEDED).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 392,
                        margin: EdgeInsets.symmetric(horizontal: 32),
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 262,
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 23),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/asset-barcode.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Any problem while scanning?',
                                  style: grey2TextStyle.copyWith(
                                      fontSize: 14, fontWeight: medium),
                                ),
                                Text(
                                  ' Chat Us',
                                  style: grey2TextStyle.copyWith(
                                      fontSize: 14, fontWeight: semiBold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 64,
                    height: 8,
                    margin: EdgeInsets.symmetric(
                      vertical: 30,
                    ),
                    decoration: BoxDecoration(
                      color: kGreenColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Text(
                    'Place the QR Code',
                    style:
                        whiteTextStyle.copyWith(fontSize: 24, fontWeight: bold),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Scanning will start automatically.',
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
