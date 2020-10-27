import 'package:dartz/dartz.dart' as d;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:mydeck/blocs/auth/auth_bloc.dart';
import 'package:mydeck/errors/auth_failure.dart';
import 'package:mydeck/screens/login/sign_in_page.dart';
import 'package:mydeck/screens/login/sign_up_page.dart';
import 'package:mydeck/services/datasources/user_config.dart';
import 'package:mydeck/services/usecases/google_signin_usecase.dart';
import 'package:mydeck/services/usecases/usecase.dart';
import 'package:mydeck/utils/custom_icons_icons.dart';
import 'package:mydeck/theme/my_deck_routes.dart';
import 'package:mydeck/utils/dependency_injection.dart';
import '../library/local_widgets/login_field.dart';
import 'local_widgets/login_screen_hat.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          height: screenSize.height * 0.96,
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.authFailureOrSuccessOption.fold(
                () => null,
                (some) => some.fold(
                    (failure) => showToast(
                          failure.message,
                          duration: Duration(seconds: 3),
                        ), (success) {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      MyDeckRoutes.home, (Route<dynamic> route) => false);
                }),
              );
            },
            builder: (context, state) => Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: LoginScreenHat(),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 64.0),
                  child: state.submitting
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : Hero(
                          tag: 'Google',
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            onPressed: () {
                              context
                                  .bloc<AuthBloc>()
                                  .add(AuthEvent.signInWithGooglePressed());
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.width / 4,
                              width: MediaQuery.of(context).size.width / 5,
                              child: Icon(
                                CustomIcons.gplus,
                                size: 32,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    MaterialButton(
                      child: Text(
                        'SIGN UP',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      onPressed: state.submitting
                          ? null
                          : () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (ctx) => BlocProvider<AuthBloc>(
                                    child: SignUpPage(),
                                    create: (c) => sl.get<AuthBloc>(),
                                  ),
                                ),
                              );
                            },
                    ),
                    Hero(
                      tag: 'SignIn',
                      child: MaterialButton(
                        child: Text(
                          'SIGN IN',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        onPressed: state.submitting
                            ? null
                            : () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (ctx) => BlocProvider<AuthBloc>(
                                      child: SignInPage(),
                                      create: (c) => sl.get<AuthBloc>(),
                                    ),
                                  ),
                                );
                              },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
