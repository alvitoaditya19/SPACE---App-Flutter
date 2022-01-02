import 'package:flutter/material.dart';
import 'package:space/shared/theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/icon-vektorsi.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    margin: EdgeInsets.symmetric(
                      horizontal: 32,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon-vektor2.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: defaultMargin,
                    ),
                    child: Text(
                      'Sign Up',
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: defaultMargin,
                    ),
                    child: Text(
                      'Explore the future campus system.',
                      style: whiteTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    height: 8,
                    width: 64,
                    margin: EdgeInsets.symmetric(
                      horizontal: 34,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: kGreen2Color,
                    ),
                  ),
                  SizedBox(
                    height: 46,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(
                          horizontal: 26,
                          vertical: 26,
                        ),
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Full Name',
                              style: greenTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  border:
                                      Border.all(color: kGreyColor, width: 2)),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      style: greenTextStyle,
                                      decoration: InputDecoration.collapsed(
                                        hintText: 'Type your name here',
                                        hintStyle: greyTextStyle,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Email',
                              style: greenTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  border:
                                      Border.all(color: kGreyColor, width: 2)),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      style: greenTextStyle,
                                      decoration: InputDecoration.collapsed(
                                        hintText: 'Type your E-Mail here',
                                        hintStyle: greyTextStyle,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Phone Number',
                              style: greenTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  border:
                                      Border.all(color: kGreyColor, width: 2)),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      style: greenTextStyle,
                                      decoration: InputDecoration.collapsed(
                                        hintText: 'Type an active phone number',
                                        hintStyle: greyTextStyle,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Password',
                              style: greenTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  border:
                                      Border.all(color: kGreyColor, width: 2)),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      style: greenTextStyle,
                                      obscureText: _isObscure,
                                      decoration: InputDecoration.collapsed(
                                        hintText: 'Your Full Name',
                                        hintStyle: greyTextStyle,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                      icon: Icon(
                                        _isObscure
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: kGreenColor,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _isObscure = !_isObscure;
                                        });
                                      }),
                                ],
                              ),
                            ),
                            Container(
                              height: 48,
                              margin: EdgeInsets.only(top: 28),
                              width: double.infinity,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    backgroundColor: kGreenColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    )),
                                child: Text(
                                  'Sign Up',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Have an account?',
                                  style: green2TextStyle.copyWith(
                                    fontWeight: semiBold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    'Login',
                                    style: green2TextStyle.copyWith(
                                      fontWeight: bold,
                                      fontSize: 16,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 34,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
