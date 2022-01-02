import 'package:flutter/material.dart';
import 'package:space/shared/theme.dart';
import 'package:space/ui/widgets/menuProduct.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget menuLIst1() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MenuProduct(
            name: 'Check-in',
            imageUrl: 'assets/icon-QrCode.png',
          ),
          MenuProduct(
            name: 'Smart\nClass',
            imageUrl: 'assets/icon-QrCode.png',
          ),
          MenuProduct(
            name: 'Health\nService',
            imageUrl: 'assets/icon-QrCode.png',
          ),
          MenuProduct(
            name: 'COVID-19\nTracking',
            imageUrl: 'assets/icon-QrCode.png',
          ),
        ],
      );
    }

    Widget menuLIst2() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MenuProduct(
            name: 'Facility',
            imageUrl: 'assets/icon-QrCode.png',
          ),
          MenuProduct(
            name: 'Chat Us',
            imageUrl: 'assets/icon-QrCode.png',
          ),
          MenuProduct(
            name: 'Profile',
            imageUrl: 'assets/icon-QrCode.png',
          ),
          MenuProduct(
            name: 'Settings',
            imageUrl: 'assets/icon-QrCode.png',
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SafeArea(
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/icon-cloud.png'),
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 54,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Muhammad Ilham F',
                                style: primaryTextStyle.copyWith(
                                  fontWeight: bold,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Safe - Vaccinated',
                                    style: greenTextStyle.copyWith(
                                      fontWeight: medium,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 14,
                                    width: 14,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            AssetImage('assets/icon-check.png'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 27,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/icon-alert.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 17,
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/icon-people.png'),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(14),
                      margin: EdgeInsets.only(top: 22),
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(2, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: kGreenColor),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 14,
                                      width: 14,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/icon-location.png'),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      'Bandung City',
                                      style: whiteTextStyle.copyWith(
                                        fontWeight: medium,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Container(
                                      height: 7,
                                      width: 12,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/icon-dropdown.png'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Text(
                                '(Last Update: 21-11-2021)',
                                style: greyTextStyle.copyWith(
                                  fontWeight: medium,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 14,
                                    width: 14,
                                    decoration: BoxDecoration(
                                        color: kRedColor,
                                        shape: BoxShape.circle),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Active Case',
                                        style: primaryTextStyle.copyWith(
                                          fontWeight: bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '4058 cases',
                                        style: primaryTextStyle.copyWith(
                                          fontWeight: medium,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 14,
                                    width: 14,
                                    decoration: BoxDecoration(
                                        color: kYellowColor,
                                        shape: BoxShape.circle),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'New Case',
                                        style: primaryTextStyle.copyWith(
                                          fontWeight: bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '58 cases',
                                        style: primaryTextStyle.copyWith(
                                          fontWeight: medium,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              GestureDetector(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 7,
                                    vertical: 3,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                      color:
                                          kGreenColor, //                   <--- border color
                                      width: 2,
                                    ),
                                  ),
                                  child: Text(
                                    'See details',
                                    style: greenTextStyle.copyWith(
                                      fontWeight: semiBold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Text(
                      'Menu',
                      style: primaryTextStyle.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    menuLIst1(),
                    SizedBox(
                      height: 28,
                    ),
                    menuLIst2(),
                    SizedBox(
                      height: 26,
                    ),
                    Text(
                      'Users Near You',
                      style: primaryTextStyle.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    ),
                    Container(
                      padding: EdgeInsets.all(14),
                      margin: EdgeInsets.only(top: 14),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(2, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Last Update: 14:40 (GMT+7)  ',
                                style: grey2TextStyle.copyWith(
                                    fontSize: 12, fontWeight: semiBold),
                              ),
                              Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    color: kGrey2Color,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Image.asset(
                                  'assets/icon-roll.png',
                                  height: 8,
                                  width: 8,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 3),
                          Row(
                            children: [
                              Text(
                                '950 meter from you : ',
                                style: yellowTextStyle.copyWith(
                                    fontSize: 12, fontWeight: semiBold),
                              ),
                              Text(
                                'Nearest Symptomatic',
                                style: redTextStyle.copyWith(
                                    fontSize: 12, fontWeight: semiBold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            'assets/icon-bigvirus.png',
                            height: 148,
                            width: double.infinity,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
