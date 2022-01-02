import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:space/providers/page_provider.dart';
import 'package:space/shared/theme.dart';
import 'package:space/ui/pages/barcode_page.dart';
import 'package:space/ui/pages/collage_page.dart';
import 'package:space/ui/pages/home_page.dart';
import 'package:space/ui/pages/virus_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);

    Widget body() {
      switch (pageProvider.currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return BarcodePage();
          break;
        case 2:
          return CollagePage();
          break;
        case 3:
          return VirusPage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      floatingActionButton: Container(
        height: 72,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 0,
              blurRadius: 54,
              offset: Offset(0, -6), // changes position of shadow
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: kWhiteColor,
          currentIndex: pageProvider.currentIndex,
          onTap: (value) {
            print(value);
            setState(() {
              pageProvider.currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/icon-home.png',
                    width: 26,
                    color: pageProvider.currentIndex == 0
                        ? kPrimaryColor
                        : Color(0xffDDDDDD),
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/icon-QrCode.png',
                    width: 21,
                    color: pageProvider.currentIndex == 1
                        ? kPrimaryColor
                        : Color(0xffDDDDDD),
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/icon-collage.png',
                    width: 20,
                    color: pageProvider.currentIndex == 2
                        ? kPrimaryColor
                        : Color(0xffDDDDDD),
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/icon-virus.png',
                    width: 18,
                    color: pageProvider.currentIndex == 3
                        ? kPrimaryColor
                        : Color(0xffDDDDDD),
                  ),
                ),
                label: '')
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: body(),
    );
  }
}
