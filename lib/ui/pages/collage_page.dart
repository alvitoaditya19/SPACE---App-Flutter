import 'package:flutter/material.dart';
import 'package:space/shared/theme.dart';
import 'package:space/ui/widgets/courses_item.dart';
import 'package:space/ui/widgets/notification_item.dart';

class CollagePage extends StatelessWidget {
  const CollagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                            color: kWhiteColor,
                          ),
                          Text(
                            'Back',
                            style: whiteTextStyle.copyWith(
                                fontSize: 16, fontWeight: bold),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icon-alert2.png',
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/icon-calender.png',
                          height: 38,
                          width: 38,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 44,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Smart Class',
                      style: whiteTextStyle.copyWith(
                          fontSize: 24, fontWeight: bold),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Select the features you want to use.',
                      style: whiteTextStyle.copyWith(
                          fontSize: 16, fontWeight: medium),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Container(
                      height: 8,
                      width: 63,
                      decoration: BoxDecoration(
                        color: kGreen2Color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Container(
                      height: 50,
                      padding: EdgeInsets.only(
                        left: 16,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kWhiteColor,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 14,
                          ),
                          Expanded(
                            child: TextFormField(
                              style: greyTextStyle,
                              decoration: InputDecoration.collapsed(
                                hintText: 'Search for course name or code',
                                hintStyle: greyTextStyle.copyWith(
                                  fontSize: 14,
                                  color: Color(0xffC0C0C0),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 78,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: kGreenColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.search_rounded,
                              color: kGreyColor,
                              size: 36.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 22,
                        bottom: 27,
                      ),
                      child: Text(
                        'Courses',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      clipBehavior: Clip.none,
                      child: Row(
                        children: [
                          CoursesItem(
                              name: 'Database\nManagement',
                              code: 'IF11362',
                              imageUrl: 'assets/icon-database.png'),
                          CoursesItem(
                              name: 'Network\nEngineering',
                              code: 'IF11363',
                              imageUrl: 'assets/icon-network.png'),
                          CoursesItem(
                              name: 'Website\nProgramming',
                              code: 'IF11364',
                              imageUrl: 'assets/icon-code.png'),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 22,
                        bottom: 27,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Notifications',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'See All  ',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: semiBold,
                                ),
                              ),
                              Image.asset(
                                'assets/icon-next.png',
                                height: 16,
                                width: 16,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Today ',
                                style: primaryTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: bold,
                                ),
                              ),
                              Text(
                                '(21-11-2021)',
                                style: grey2TextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: medium,
                                ),
                              ),
                            ],
                          ),
                          NotificationItem(
                              name: 'Final Project - Network Engineering',
                              imageUrl: 'assets/icon-book.png',
                              time:
                                  'Collect on Assignments menu. Deadline: 23.59'),
                          NotificationItem(
                              name: 'UI/UX (Prototype) - HC Interaction',
                              imageUrl: 'assets/icon-book.png',
                              time:
                                  'Collect on Assignments menu. Deadline: 23.59'),
                          NotificationItem(
                              name: 'Check-in Success',
                              imageUrl: 'assets/icon-QrCode.png',
                              color: kPrimaryColor,
                              time:
                                  'Collect on Assignments menu. Deadline: 23.59'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
