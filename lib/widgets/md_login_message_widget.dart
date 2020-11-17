import 'package:flutter/material.dart';
import 'package:mydeck/theme/my_deck_routes.dart';

class MDLoginMessageWidget extends StatelessWidget {
  const MDLoginMessageWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Sign in to start learning"),
          MaterialButton(
            child: Text("Sign in"),
            onPressed: () {
              Navigator.of(context).pushNamed(MyDeckRoutes.login);
            },
          )
        ],
      ),
    );
  }
}
