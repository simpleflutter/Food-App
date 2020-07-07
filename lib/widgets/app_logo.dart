import 'package:flutter/material.dart';
import 'package:food_app/styles/app_colors.dart';

class AppLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.only(top: 80),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.restaurant,
              size: 80,
              color: AppColors.primaryColor,
            ),
            Text(
              'Food House',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Cookie',
                color: AppColors.whiteColor,
                shadows: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
