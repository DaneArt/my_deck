import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:mydeck/blocs/auth/auth_bloc.dart';
import 'package:mydeck/models/value_objects/email_address.dart';
import 'package:mydeck/models/value_objects/password.dart';
import 'package:mydeck/models/value_objects/username.dart';
import 'package:mydeck/screens/library/local_widgets/login_field.dart';
import 'package:mydeck/screens/login/local_widgets/login_screen_hat.dart';
import 'package:mydeck/theme/my_deck_routes.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.authFailureOrSuccessOption.fold(
              () => null,
              (result) => result.fold(
                (failure) {
                  showToast(failure.message);
                },
                (success) {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      MyDeckRoutes.home, (Route<dynamic> route) => false);
                },
              ),
            );
          },
          builder: (context, state) {
            return Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.96,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 7.5),
                    child: LoginScreenHat(),
                  ),
                  Column(
                    children: <Widget>[
                      Hero(
                        tag: 'signCard',
                        child: Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          margin: EdgeInsets.all(16),
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 24.0),
                              child: SignUpForm(
                                state: state,
                              )),
                        ),
                      ),
                      MaterialButton(
                        child: Text(
                          'SIGN UP',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        onPressed: () {
                          context
                              .bloc<AuthBloc>()
                              .add(AuthEvent.signUpPressed());
                        },
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
          },
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  final AuthState state;
  SignUpForm({Key key, this.state}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  AuthState get state => widget.state;
  final formKey = GlobalKey<FormState>();
  final usernameNode = FocusNode();
  final emailNode = FocusNode();
  final passwordNode = FocusNode();

  String _validateUsernameField(String value) {
    final username = Username(value);
    return username.value.fold((failure) => failure.message, (r) => null);
  }

  String _validatePasswordField(String value) {
    final password = Password(value);
    return password.value.fold((failure) => failure.message, (r) => null);
  }

  String _validateEmailField(String value) {
    final email = EmailAddress(value);
    return email.value.fold((failure) => failure.message, (r) => null);
  }

  _nextField(BuildContext context, FocusNode currentNode, FocusNode nextNode) {
    currentNode.unfocus();
    FocusScope.of(context).requestFocus(nextNode);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          LoginField(
            label: 'Username',
            hint: 'Enter username',
            autovalidate: state.autovalidate,
            validator: _validateUsernameField,
            onChanged: (value) => context
                .bloc<AuthBloc>()
                .add(AuthEvent.usernameChanged(usernameStr: value)),
            focusNode: usernameNode,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (input) {
              _nextField(context, usernameNode, emailNode);
            },
          ),
          SizedBox(
            height: 24,
          ),
          LoginField(
            label: 'Email',
            hint: 'Enter email',
            validator: _validateEmailField,
            autovalidate: state.autovalidate,
            onChanged: (value) => context
                .bloc<AuthBloc>()
                .add(AuthEvent.emailChanged(emailStr: value)),
            focusNode: emailNode,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (input) {
              _nextField(context, emailNode, passwordNode);
            },
          ),
          SizedBox(
            height: 24,
          ),
          LoginField(
            label: 'Password',
            hint: 'Enter password',
            validator: _validatePasswordField,
            autovalidate: state.autovalidate,
            onChanged: (value) => context
                .bloc<AuthBloc>()
                .add(AuthEvent.passwordChanged(passwordStr: value)),
            suffix: IconButton(
              icon: Icon(
                state.obscurePassword ? Icons.visibility : Icons.visibility_off,
                color: Theme.of(context).accentColor,
              ),
              onPressed: () {
                context.read<AuthBloc>().add(AuthEvent.obscurePassword());
              },
            ),
            isObscureText: state.obscurePassword,
            focusNode: passwordNode,
            textInputAction: TextInputAction.done,
            onFieldSubmitted: (input) {
              passwordNode.unfocus();
            },
          )
        ],
      ),
    );
  }
}
