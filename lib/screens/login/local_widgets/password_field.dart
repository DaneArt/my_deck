import 'package:flutter/material.dart';
import 'package:mydeck/screens/library/local_widgets/login_field.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  final FieldValidator validator;
  final Function(String) onChanged;
  final bool autovalidate;
  final TextInputAction textInputAction;
  final Function(String) onFieldSubmitted;
  final FocusNode focusNode;
  final GlobalKey<FormFieldState> fieldKey;
  PasswordField(
      {Key key,
      @required FocusNode focusNode,
      this.controller,
      this.validator,
      this.onChanged,
      this.autovalidate,
      this.textInputAction,
      this.onFieldSubmitted,
      this.fieldKey})
      : assert(focusNode != null),
        this.focusNode = focusNode,
        super(key: key);

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
      onFieldSubmitted: widget.onFieldSubmitted,
      onChanged: widget.onChanged,
      controller: widget.controller,
      fieldKey: widget.fieldKey,
      autovalidate: widget.autovalidate,
      key: widget.key,
      textInputAction: widget.textInputAction,
      validator: widget.validator,
      focusNode: widget.focusNode,
    );
  }
}
