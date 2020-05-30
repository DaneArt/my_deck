import 'package:flutter_svg/flutter_svg.dart';
import 'package:mydeck/core/error/auth_failure.dart';
import 'package:mydeck/core/icons/custom_icons_icons.dart';
import 'package:mydeck/core/meta/my_deck_routes.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/shared/buttons.dart';
import 'package:mydeck/features/sign_in/bloc/sign_in/sign_in_bloc.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_service.dart';
import 'package:mydeck/features/sign_in/data/models/email_address.dart';
import 'package:mydeck/features/sign_in/data/models/login.dart';
import 'package:mydeck/features/sign_in/data/models/password.dart';
import 'package:mydeck/features/sign_in/data/models/value_object.dart';
import 'package:mydeck/features/sign_in/helpers/value_validators.dart';
import 'package:mydeck/core/extensions/widget_extensions.dart';
import 'package:dartz/dartz.dart' as d;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

import '../login_field.dart';

class LoginPage extends StatelessWidget {
  Widget buildForm() => BlocBuilder<SignInBloc, SignInState>(
        builder: (context, state) {
          return state.map(
            (s) => s.isSubmitting
                ? Center(child: CircularProgressIndicator())
                : InitialLoginForm(
                    userInput: s.emailOrLogin,
                    authFailureOrSuccess: s.authFailureOrSuccessOption),
            emailInput: (s) => s.isSubmitting
                ? Center(child: CircularProgressIndicator())
                : EmailInputForm(
                    authFailureOrSuccess: s.authFailureOrSuccessOption,
                    emailAddress: s.emailAddress,
                  ),
            loginInput: (s) => s.isSubmitting
                ? Center(child: CircularProgressIndicator())
                : LoginInputForm(
                    authFailureOrSuccess: s.authFailureOrSuccessOption,
                    login: s.login,
                  ),
            passwordInput: (s) => s.isSubmitting
                ? Center(child: CircularProgressIndicator())
                : PasswordInputForm(),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return StyledToast(
      textStyle: TextStyle(fontSize: 16.0, color: Colors.white),
      backgroundColor: Color(0x99000000),
      borderRadius: BorderRadius.circular(5.0),
      textPadding: EdgeInsets.symmetric(horizontal: 17.0, vertical: 10.0),
      toastPositions: StyledToastPosition.bottom,
      toastAnimation: StyledToastAnimation.fade,
      reverseAnimation: StyledToastAnimation.fade,
      curve: Curves.fastOutSlowIn,
      reverseCurve: Curves.fastLinearToSlowEaseIn,
      duration: Duration(seconds: 4),
      animDuration: Duration(seconds: 1),
      dismissOtherOnShow: true,
      movingOnWindowChange: true,
      child: WillPopScope(
        onWillPop: () async {
          BlocProvider.of<SignInBloc>(context).add(PopStatesStack());
          return false;
        },
        child: SafeArea(
          bottom: false,
          child: Scaffold(
            backgroundColor: Theme.of(context).primaryColorDark,
            body: BlocListener<SignInBloc, SignInState>(
              listener: (context, state) {
                state.authFailureOrSuccessOption.fold(
                    () => null,
                    (some) => some.fold(
                            (failure) => showToast(failure.message,
                                duration: Duration(seconds: 3)), (success) {
                          Navigator.of(context).pushNamed(MyDeckRoutes.home);
                        }));
              },
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Container(
                  height: screenSize.height * 0.96,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      LoginScreenHat(),
                      Transform.translate(
                        offset: Offset(0, screenSize.height / -19),
                        child: MyDeckLogo(),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 16),
                          child: buildForm(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginScreenHat extends StatelessWidget {
  const LoginScreenHat({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height / 4.5,
      width: screenSize.width,
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Transform.translate(
              offset: Offset(0, -1),
              child: Image.asset(
                "lib/assets/gavno.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: screenSize.height / 3,
            width: screenSize.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Theme.of(context).primaryColorDark,
                    Theme.of(context).primaryColorDark.withAlpha(240),
                    Theme.of(context).primaryColorDark.withAlpha(180),
                    Theme.of(context).primaryColorDark.withAlpha(100),
                    Theme.of(context).primaryColorDark.withAlpha(50),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}

class MyDeckLogo extends StatelessWidget {
  const MyDeckLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Transform.translate(
              offset: Offset(-56, -8),
              child: SvgPicture.asset(
                'lib/assets/mydeck_logo.svg',
                width: screenSize.width / 2.5,
                height: screenSize.width / 2.5,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'MY     DECK',
              style: TextStyle(
                fontSize: 36,
                letterSpacing: 2,
                fontFamily: 'Rubik One-Regular',
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EmailInputForm extends StatefulWidget {
  final EmailAddress emailAddress;
  final d.Option<d.Either<AuthFailure, d.Unit>> authFailureOrSuccess;

  EmailInputForm(
      {Key key,
      @required this.emailAddress,
      @required this.authFailureOrSuccess})
      : super(key: key);

  @override
  _EmailInputFormState createState() => _EmailInputFormState();
}

class _EmailInputFormState extends State<EmailInputForm>
    with WidgetsBindingObserver {
  final emailFieldKey = GlobalKey<FormFieldState>();

  final emailTextController = TextEditingController();

  bool autovalidate = false;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);

    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      FocusScope.of(context).unfocus();
    }
  }

  String _validateEmail(String input) {
    if (widget.authFailureOrSuccess.isSome()) {
      return widget.authFailureOrSuccess.fold(
          () => null,
          (some) => some.fold(
                (failure) => failure.message,
                (success) => null,
              ));
    }

    return widget.emailAddress.value
        .fold((failure) => failure.message, (value) => null);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          LoginField(
            fieldKey: emailFieldKey,
            controller: emailTextController,
            autovalidate: autovalidate,
            onChanged: (input) => BlocProvider.of<SignInBloc>(context)
                .add(SignInEvent.emailChanged(input)),
            hint: 'Enter email.',
            validator: _validateEmail,
            prefix: Icon(
              Icons.email,
              color: Colors.indigo,
            ),
            label: 'Email address',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                LoginButton(
                  content: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    setState(() {
                      autovalidate = true;
                    });

                    BlocProvider.of<SignInBloc>(context)
                        .add(SignInEvent.popStatesStack());
                  },
                ),
                LoginButton(
                  content: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Confirm',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.white)),
                  ),
                  onPressed: () {
                    setState(() {
                      autovalidate = true;
                    });
                    if (emailFieldKey.currentState.validate()) {
                      BlocProvider.of<SignInBloc>(context)
                          .add(SignInEvent.confirmEmailPressed());
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LoginInputForm extends StatefulWidget {
  final Login login;
  final d.Option<d.Either<AuthFailure, d.Unit>> authFailureOrSuccess;

  LoginInputForm({Key key, this.login, this.authFailureOrSuccess})
      : super(key: key);

  @override
  _LoginInputFormState createState() => _LoginInputFormState();
}

class _LoginInputFormState extends State<LoginInputForm>
    with WidgetsBindingObserver {
  final loginFieldKey = GlobalKey<FormFieldState>();

  final loginTextController = TextEditingController();

  bool autovalidate = false;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      FocusScope.of(context).unfocus();
    }
  }

  String _validateLogin(String input) {
    if (widget.authFailureOrSuccess.isSome()) {
      return widget.authFailureOrSuccess.fold(
          () => null,
          (some) => some.fold(
                (failure) => failure.message,
                (success) => null,
              ));
    }

    return widget.login.value
        .fold((failure) => failure.message, (value) => null);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          LoginField(
            fieldKey: loginFieldKey,
            controller: loginTextController,
            onChanged: (input) => BlocProvider.of<SignInBloc>(context)
                .add(SignInEvent.loginChanged(input)),
            hint: 'How should we call you?',
            prefix: Icon(Icons.person),
            validator: _validateLogin,
            autovalidate: autovalidate,
            label: 'Username',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 8, right: 8),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: LoginButton(
                content: Text('Confirm',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                onPressed: () {
                  setState(() {
                    autovalidate = true;
                  });

                  if (loginFieldKey.currentState.validate()) {
                    BlocProvider.of<SignInBloc>(context)
                        .add(SignInEvent.confirmLoginPressed());
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PasswordInputForm extends StatefulWidget {
  PasswordInputForm({Key key}) : super(key: key);

  @override
  _PasswordInputFormState createState() => _PasswordInputFormState();
}

class _PasswordInputFormState extends State<PasswordInputForm>
    with WidgetsBindingObserver {
  final formKey = GlobalKey<FormState>();
  final confirmPasswordFieldKey = GlobalKey<FormFieldState>();
  final passwordFieldKey = GlobalKey<FormFieldState>();

  bool autovalidate = false;
  bool obscurePassword = true;
  bool obscureConfrimPassword = true;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      FocusScope.of(context).unfocus();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);

    super.initState();
  }

  String _validatePassword(String input) {
    // if (input.isNotEmpty) {
    //   _password = Password(input);
    // }
    // return _password.value
    //     .fold((failure) => mapFailureToMessage(failure), (value) => null);
  }

  String _confirmPassword(String input) {
    // return _password.value.fold((failure) => "Passwords doesn't match",
    //     (value) {
    //   if (input.isNotEmpty && input == value) {
    //     return null;
    //   }
    //   return "Passwords doesn't match";
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidate: autovalidate,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            LoginField(
              fieldKey: passwordFieldKey,
              hint: 'Enter password*',
              validator: _validatePassword,
              prefix: Icon(Icons.lock),
              isObscureText: obscurePassword,
              suffix: IconButton(
                icon: Icon(
                  obscurePassword ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () => setState(() {
                  obscurePassword = !obscurePassword;
                }),
              ),
              label: 'Password*',
            ),
            LoginField(
              fieldKey: confirmPasswordFieldKey,
              hint: 'Confirm password*',
              validator: _confirmPassword,
              prefix: Icon(Icons.lock),
              isObscureText: obscureConfrimPassword,
              suffix: IconButton(
                icon: Icon(
                  obscureConfrimPassword
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
                onPressed: () => setState(() {
                  obscureConfrimPassword = !obscureConfrimPassword;
                }),
              ),
              label: 'Confirm password*',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 8, right: 8),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: LoginButton(
                    content: Text('Here we go!',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    onPressed: () {
                      setState(() {
                        autovalidate = true;
                      });
                      if (formKey.currentState.validate()) {
                        BlocProvider.of<SignInBloc>(context)
                            .add(SignInEvent.confirmPasswordPressed());
                      }
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignInForm extends StatefulWidget {
  final d.Option<d.Either<AuthFailure, d.Unit>> authFailureOrSuccess;
  final ValueObject<String> emailOrLogin;
  final Password password;

  SignInForm(
      {Key key, this.emailOrLogin, this.authFailureOrSuccess, this.password})
      : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> with WidgetsBindingObserver {
  final emailOrLoginFieldKey = GlobalKey<FormFieldState>();
  final loginFormKey = GlobalKey<FormState>();
  final passwordFieldKey = GlobalKey<FormFieldState>();

  final emailOrLoginInputController = TextEditingController();
  final passwordInputController = TextEditingController();

  bool isObscurePassword = true;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      FocusScope.of(context).unfocus();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
    emailOrLoginInputController.text =
        widget.emailOrLogin.value.fold((failure) => '', (value) => value);
  }

  String _validateEmailOrLogin(String input) {}

  String _validatePassword(String input) {}

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginFormKey,
      autovalidate: true,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            LoginField(
              fieldKey: emailOrLoginFieldKey,
              controller: emailOrLoginInputController,
              onChanged: (input) => BlocProvider.of<SignInBloc>(context)
                  .add(SignInEvent.emailOrLoginChanged(input)),
              hint: 'Enter email or login.',
              prefix: Icon(Icons.person),
              label: 'Email adddress or login',
            ),
            LoginField(
              fieldKey: passwordFieldKey,
              controller: passwordInputController,
              onChanged: (input) => BlocProvider.of<SignInBloc>(context)
                  .add(SignInEvent.passwordChanged(input)),
              hint: 'Enter password.',
              prefix: Icon(Icons.lock),
              isObscureText: isObscurePassword,
              suffix: IconButton(
                icon: Icon(isObscurePassword
                    ? Icons.visibility
                    : Icons.visibility_off),
                onPressed: () => setState(() {
                  isObscurePassword = !isObscurePassword;
                }),
              ),
              label: 'Password',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 8, right: 8),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: LoginButton(
                  content: Text('SIGN IN',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  onPressed: () =>
                      Navigator.pushNamed(context, MyDeckRoutes.home),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InitialLoginForm extends StatefulWidget {
  final d.Option<d.Either<AuthFailure, d.Unit>> authFailureOrSuccess;
  final ValueObject<String> userInput;

  const InitialLoginForm({Key key, this.userInput, this.authFailureOrSuccess})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _InitialLoginFormState();
}

class _InitialLoginFormState extends State<InitialLoginForm>
    with WidgetsBindingObserver {
  final emailInputFieldKey = GlobalKey<FormFieldState>();
  final passwordInputFieldKey = GlobalKey<FormFieldState>();
  final emailInputTextController = TextEditingController();
  final passwordInputTextController = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();
  bool obscurePassword = true;

  bool isAutoValidate = false;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      FocusScope.of(context).unfocus();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  String _validateInputField(String input) {
    if (widget.authFailureOrSuccess.isSome()) {
      return widget.authFailureOrSuccess.fold(
          () => null,
          (some) => some.fold(
                (failure) => failure.message,
                (success) => null,
              ));
    }

    return widget.userInput.value
        .fold((failure) => failure.message, (value) => null);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          LoginField(
            label: 'Email or username',
            fieldKey: emailInputFieldKey,
            controller: emailInputTextController,
            onChanged: (input) => BlocProvider.of<SignInBloc>(context)
                .add(SignInEvent.emailOrLoginChanged(input)),
            validator: _validateInputField,
            hint: 'Enter email or username',
            prefix: Icon(Icons.person),
            autovalidate: isAutoValidate,
          ),
          LoginField(
            label: 'Password',
            fieldKey: passwordInputFieldKey,
            controller: passwordInputTextController,
            onChanged: (input) => BlocProvider.of<SignInBloc>(context)
                .add(SignInEvent.passwordChanged(input)),
            validator: null,
            isObscureText: obscurePassword,
            hint: 'Enter password',
            prefix: Icon(Icons.lock),
            suffix: IconButton(
              icon: Icon(
                obscurePassword ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () => setState(() {
                obscurePassword = !obscurePassword;
              }),
            ),
            autovalidate: isAutoValidate,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: LoginButton(
                content: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('JOIN VIA GOOGLE ',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                      Icon(CustomIcons.gplus,
                          color: Theme.of(context).primaryColorDark)
                    ],
                  ),
                ),
                onPressed: () => BlocProvider.of<SignInBloc>(context)
                    .add(SignInEvent.signInWithGooglePressed()),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                LoginButton(
                    enabled: true,
                    content: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('SIGN UP',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                    onPressed: () {
                      setState(() {
                        isAutoValidate = true;
                      });

                      if (emailInputFieldKey.currentState.validate() &&
                          passwordInputFieldKey.currentState.validate()) {
                        BlocProvider.of<SignInBloc>(context)
                            .add(SignInEvent.signUpPressed());
                      }
                    }),
                LoginButton(
                  enabled: true,
                  content: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('SIGN IN',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                  ),
                  onPressed: () {
                    BlocProvider.of<SignInBloc>(context)
                        .add(SignInEvent.signInPressed());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
