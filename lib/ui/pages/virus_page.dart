import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/shared/theme.dart';
import 'package:space/ui/widgets/statistic_item.dart';

class VirusPage extends StatefulWidget {
  @override
  _VirusPageState createState() => _VirusPageState();
}

class _VirusPageState extends State<VirusPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
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
            child: Column(
              children: [
                SizedBox(
                  height: 44,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 26, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              iconSize: 24,
                              icon: Icon(Icons.arrow_back),
                              color: kPrimaryColor,
                            ),
                            Text(
                              'Back',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 16, fontWeight: bold),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/icon-alert.png'),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 45,
                  margin: EdgeInsets.symmetric(
                    horizontal: 26,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffE6E6E5),
                    borderRadius: BorderRadius.circular(
                      4,
                    ),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        4,
                      ),
                      color: kPrimaryColor,
                    ),
                    labelColor: kWhiteColor,
                    unselectedLabelColor: kGrey2Color,
                    tabs: [
                      Tab(
                        child: Text(
                          'Statistics Details',
                          style: GoogleFonts.montserrat(fontWeight: medium),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Nearest User',
                          style: GoogleFonts.montserrat(fontWeight: medium),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 26,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Center(
                                child: Text(
                                  'COVID-19 Daily Statistics',
                                  style: primaryTextStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Center(
                                child: Text(
                                  'Updated daily from data collected\nby the government and WHO.',
                                  textAlign: TextAlign.center,
                                  style: primaryTextStyle.copyWith(
                                    fontWeight: medium,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 28,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Bandung City',
                                    style: primaryTextStyle.copyWith(
                                      fontWeight: semiBold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        color: kGreenColor,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Weekly',
                                            style: whiteTextStyle.copyWith(
                                              fontWeight: semiBold,
                                              fontSize: 14,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Image.asset(
                                            'assets/icon-dropdown.png',
                                            width: 12,
                                            height: 8,
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 20),
                                decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      offset: Offset(
                                          2, 4), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Center(
                                      child: Image.asset(
                                        'assets/icon-graph.png',
                                        height: 230,
                                        width: double.infinity,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 14,
                                          width: 14,
                                          decoration: BoxDecoration(
                                              color: Color(0xff86CB9D),
                                              shape: BoxShape.circle),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Recovered',
                                          style: greyTextStyle.copyWith(
                                            fontWeight: semiBold,
                                            fontSize: 10,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 44,
                                        ),
                                        Container(
                                          height: 14,
                                          width: 14,
                                          decoration: BoxDecoration(
                                              color: Color(0xffFF715D),
                                              shape: BoxShape.circle),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Infected',
                                          style: greyTextStyle.copyWith(
                                            fontWeight: semiBold,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 22, bottom: 12),
                                child: Text(
                                  'Information Details',
                                  style: primaryTextStyle.copyWith(
                                    fontWeight: semiBold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      offset: Offset(
                                          2, 4), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
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
                                        Text(
                                          'Daily Update  ',
                                          style: primaryTextStyle.copyWith(
                                            fontWeight: bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          '(Last Update: 21-11-2021)',
                                          style: grey2TextStyle.copyWith(
                                            fontWeight: bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        StatisticItem(
                                            name: 'Infected',
                                            summary: '+78 Cases',
                                            imageUrl: 'assets/icon-virus2.png',
                                            colorString: kRedColor),
                                        SizedBox(
                                          width: 14,
                                        ),
                                        StatisticItem(
                                            name: 'Vulnerable District',
                                            summary: 'Kec. Braga (+40 cases)',
                                            imageUrl: 'assets/icon-danger.png',
                                            colorString: kRedColor),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 14,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        StatisticItem(
                                          name: 'Recovered',
                                          summary: '+ 85 cases',
                                          imageUrl: 'assets/icon-medical.png',
                                          colorString: kGreen2Color,
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        StatisticItem(
                                            name: 'PPKM Level',
                                            summary: 'Level 2 ',
                                            imageUrl: 'assets/icon-city.png',
                                            colorString: kGreenColor),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 100,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 26),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Center(
                                child: Text(
                                  'Real-Time SPACE\nUsers Statistics',
                                  textAlign: TextAlign.center,
                                  style: primaryTextStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Center(
                                child: Text(
                                  'Data is retrieved in real-time and\nupdated regularly from SPACE users.',
                                  textAlign: TextAlign.center,
                                  style: primaryTextStyle.copyWith(
                                    fontWeight: medium,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 28,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Area Coverage',
                                    style: primaryTextStyle.copyWith(
                                      fontWeight: semiBold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        color: kGreenColor,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            '1000 m',
                                            style: whiteTextStyle.copyWith(
                                              fontWeight: semiBold,
                                              fontSize: 14,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Image.asset(
                                            'assets/icon-dropdown.png',
                                            width: 12,
                                            height: 8,
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 20),
                                decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 0,
                                      blurRadius: 4,
                                      offset: Offset(
                                          2, 4), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Center(
                                      child: Image.asset(
                                        'assets/icon-graph2.png',
                                        height: 230,
                                        width: double.infinity,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 14,
                                          width: 14,
                                          decoration: BoxDecoration(
                                              color: Color(0xffFFBB45),
                                              shape: BoxShape.circle),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Exposed',
                                          style: greyTextStyle.copyWith(
                                            fontWeight: semiBold,
                                            fontSize: 10,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 44,
                                        ),
                                        Container(
                                          height: 14,
                                          width: 14,
                                          decoration: BoxDecoration(
                                              color: Color(0xffFF715D),
                                              shape: BoxShape.circle),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Symptomatic',
                                          style: greyTextStyle.copyWith(
                                            fontWeight: semiBold,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 22),
                                child: Text(
                                  'Users Near You',
                                  style: primaryTextStyle.copyWith(
                                    fontWeight: semiBold,
                                    fontSize: 16,
                                  ),
                                ),
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
                                      offset: Offset(
                                          2, 4), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Last Update: 14:40 (GMT+7)  ',
                                          style: grey2TextStyle.copyWith(
                                              fontSize: 12,
                                              fontWeight: semiBold),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: kGrey2Color,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
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
                                          'Nearest Symptomatic:  ',
                                          style: redTextStyle.copyWith(
                                              fontSize: 12,
                                              fontWeight: semiBold),
                                        ),
                                        Text(
                                          '250 meter from you',
                                          style: redTextStyle.copyWith(
                                              fontSize: 12, fontWeight: bold),
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
                              SizedBox(
                                height: 100,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
