import 'package:flutter/material.dart';
import 'package:food_app/pages/sign_up.dart';
import 'package:food_app/widgets/app_logo.dart';
import 'package:food_app/widgets/app_password_filed.dart';
import 'package:food_app/widgets/app_text_field.dart';
import 'package:food_app/widgets/background.dart';
import 'package:food_app/widgets/orange_button.dart';
import 'package:food_app/widgets/tap_text.dart';

class LoginPage extends StatelessWidget {
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
                OrangeButton(
                  title: 'SIGN IN',
                  onPress: () {},
                ),
                TapText(
                  title: 'Don\'t have an Account? Sing Up',
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => SingUpPage(),
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
