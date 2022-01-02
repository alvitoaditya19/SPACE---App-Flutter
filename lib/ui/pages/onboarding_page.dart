import 'dart:async';

import 'package:flutter/material.dart';
import 'package:space/shared/theme.dart';
import 'package:space/ui/pages/onboarding/onboarding1_page.dart';
import 'package:space/ui/pages/onboarding/onboarding2_page.dart';
import 'package:space/ui/pages/onboarding/onboarding3_page.dart';
import 'package:space/ui/pages/signin_page.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    OnBoarding1(),
    OnBoarding2(),
    OnBoarding3(),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _controller.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 800),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 98,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 800),
                              curve: Curves.easeInOutQuint);
                          child:
                          (_currentPage == (_pages.length - 1))
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignInPage()))
                              : (_currentPage == (_pages.length - 1));
                        },
                        child: Container(
                            child: (_currentPage == (_pages.length - 1))
                                ? Text(
                                    'Start',
                                    style: whiteTextStyle.copyWith(
                                      fontWeight: semiBold,
                                      fontSize: 16,
                                      decoration: TextDecoration.underline,
                                    ),
                                  )
                                : Text(
                                    'Skip',
                                    style: whiteTextStyle.copyWith(
                                      fontWeight: semiBold,
                                      fontSize: 16,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ))),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (int index) {
                    return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 8,
                        width: (index == _currentPage) ? 22 : 8,
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: (index == _currentPage)
                                ? kTertiary
                                : kWhiteColor));
                  })),
              SizedBox(
                height: 92,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
