import 'package:flutter/material.dart';
import 'package:mydeck/screens/library/local_widgets/login_field.dart';
import 'package:mydeck/screens/login/local_widgets/login_screen_hat.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          LoginScreenHat(),
          Column(
            children: <Widget>[
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                margin: EdgeInsets.all(16),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 24.0),
                  child: Column(
                    children: <Widget>[
                      LoginField(
                        label: 'Username',
                        hint: 'Enter username',
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      LoginField(
                        label: 'Email',
                        hint: 'Enter email',
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      LoginField(
                        label: 'Password',
                        hint: 'Enter password',
                        suffix: Icon(
                          Icons.visibility,
                          color: Theme.of(context).accentColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              MaterialButton(
                child: Text(
                  'SIGN UP',
                  style: Theme.of(context).textTheme.headline6,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              'Регистрируясь, вы соглашаетесь с Условиями пользования и Политикой конфиденциальности',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
