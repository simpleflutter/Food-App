import 'package:flutter/material.dart';
import 'package:food_app/pages/login.dart';
import 'package:food_app/pages/sign_up.dart';
import 'package:food_app/widgets/app_logo.dart';
import 'package:food_app/widgets/background.dart';
import 'package:food_app/widgets/orange_button.dart';
import 'package:food_app/widgets/tap_text.dart';
import 'package:food_app/widgets/white_button.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Background(),
          AppLogo(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                OrangeButton(
                  title: 'SIGN IN',
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => LoginPage(),
                      ),
                    );
                  },
                ),
                WhiteButton(
                  title: 'SIGN UP',
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => SingUpPage(),
                      ),
                    );
                  },
                ),
                TapText(title: 'Need Help?', onPress: () {}),
                SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
