import 'package:flutter/material.dart';
import 'package:mydeck/core/injection/dependency_injection.dart';
import 'package:mydeck/core/meta/my_deck_routes.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_config.dart';

import '../../../../main.dart';
import 'package:mydeck/core/injection/dependency_injection.dart' as di;

class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    initApplication(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Theme.of(context).primaryColor,
      child: Center(
        child: Image.asset(
          'lib/assets/my_deck_logo_big.jpg',
          width: 256,
          height: 256,
        ),
      ),
    );
  }

  Future<void> initApplication(BuildContext context) async {
    di.setUp();
    await App.init();

    if(await UserConfig.isSessionValid){
      Navigator.of(context).pushNamed(MyDeckRoutes.home);
    }else{
      Navigator.of(context).pushNamed(MyDeckRoutes.login);
    }
  }
}

