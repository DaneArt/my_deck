import 'package:flutter/material.dart';
import 'package:mydeck/screens/library/local_widgets/login_field.dart';

class PasswordField extends StatefulWidget {
  PasswordField({Key key}) : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return LoginField(
      label: 'Password',
      hint: 'Enter password',
      isObscureText: _isObscured,
      suffix: IconButton(
        icon: Icon(_isObscured ? Icons.visibility : Icons.visibility_off,
            color: Theme.of(context).accentColor),
        onPressed: () {
          setState(() {
            _isObscured = !_isObscured;
          });
        },
      ),
    );
  }
}
