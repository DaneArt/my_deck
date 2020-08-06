import 'package:flutter/material.dart';
import 'package:mydeck/utils/custom_icons_icons.dart';

class LoginScreenHat extends StatelessWidget {
  const LoginScreenHat({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Hero(
      tag: 'LogoMD',
      child: Container(
        height: screenSize.height / 4.5,
        width: screenSize.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "My\nDeck",
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.headline3.copyWith(
                    fontFamily: 'Rubik One-Regular',
                    color: Theme.of(context).primaryColor,
                  ),
            ),
            SizedBox(
              width: 16,
            ),
            Icon(
              CustomIcons.brain,
              size: 128,
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
