import 'package:flutter/material.dart';
import 'package:food_app/pages/login.dart';
import 'package:food_app/widgets/app_logo.dart';
import 'package:food_app/widgets/app_password_filed.dart';
import 'package:food_app/widgets/app_text_field.dart';
import 'package:food_app/widgets/background.dart';
import 'package:food_app/widgets/orange_button.dart';
import 'package:food_app/widgets/tap_text.dart';
import 'package:food_app/widgets/white_button.dart';

class SingUpPage extends StatelessWidget {
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
                AppTextField(),
                AppPasswordFiled(
                  hitText: 'Password',
                ),
                AppPasswordFiled(
                  hitText: 'Confirm Password',
                ),
                WhiteButton(
                  title: 'SIGN UP',
                  onPress: () {},
                ),
                TapText(
                  title: 'Already have an Account? Sign In',
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => LoginPage(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
