import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydeck/blocs/sign_in/login_bloc.dart';
import 'package:mydeck/screens/library/local_widgets/login_field.dart';
import 'package:mydeck/screens/login/local_widgets/login_screen_hat.dart';
import 'package:mydeck/screens/login/sign_up_page.dart';
import 'package:mydeck/utils/custom_icons_icons.dart';
import 'package:mydeck/utils/dependency_injection.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.96,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              LoginScreenHat(),
              Column(
                children: <Widget>[
                  Card(
                    elevation: 8,
                    margin: EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 32),
                      child: Column(
                        children: <Widget>[
                          LoginField(
                            label: 'Email or username',
                            hint: 'Enter email or username',
                          ),
                          SizedBox(
                            height: 16,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Hero(
                        tag: 'SignUp',
                        child: MaterialButton(
                          child: Text(
                            'SIGN UP',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) => BlocProvider<LoginBloc>(
                                  child: SignUpPage(),
                                  create: (c) => sl.get<LoginBloc>(),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Hero(
                        tag: 'SignIn',
                        child: MaterialButton(
                          child: Text(
                            'SIGN IN',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Problems with access?',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Divider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'or',
                          style: TextStyle(
                              color: Theme.of(context).primaryColorLight),
                        ),
                      ),
                      Expanded(
                        child: Divider(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Hero(
                    tag: 'Google',
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 88,
                        width: 48,
                        child: Icon(
                          CustomIcons.gplus,
                          size: 32,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
