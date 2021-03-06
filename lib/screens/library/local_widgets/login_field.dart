import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:mydeck/widgets/ensure_field_visibility.dart';
import 'package:flutter/material.dart';

typedef String FieldValidator(String param);

class LoginField extends StatefulWidget {
  final TextEditingController controller;
  final Widget prefix;
  final Widget suffix;
  final String label;
  final String hint;
  final FieldValidator validator;
  final Function(String) onChanged;
  final bool isObscureText;
  final bool autovalidate;
  final TextInputAction textInputAction;
  final Function(String) onFieldSubmitted;
  final FocusNode focusNode;
  final GlobalKey<FormFieldState> fieldKey;

  LoginField({
    Key key,
    this.controller,
    this.prefix,
    this.suffix,
    this.hint,
    this.validator,
    this.isObscureText = false,
    this.autovalidate = false,
    this.fieldKey,
    this.onChanged,
    @required this.label,
    this.textInputAction,
    this.onFieldSubmitted,
    @required FocusNode focusNode,
  })  : assert(focusNode != null),
        this.focusNode = focusNode,
        super(key: key);

  @override
  _LoginFieldState createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            widget.label,
            textAlign: TextAlign.left,
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        EnsureVisibleWhenFocused(
          focusNode: widget.focusNode,
          child: TextFormField(
            key: widget.fieldKey,
            focusNode: widget.focusNode,
            controller: widget.controller,
            onChanged: widget.onChanged,
            style: Theme.of(context).textTheme.bodyText2,
            validator: widget.validator,
            autovalidate: widget.autovalidate,
            obscureText: widget.isObscureText,
            textInputAction: widget.textInputAction ?? TextInputAction.done,
            onFieldSubmitted: widget.onFieldSubmitted,
            decoration: InputDecoration(
                hintStyle: Theme.of(context).textTheme.caption.copyWith(
                    color: Theme.of(context).primaryColor, fontSize: 14),
                suffixIcon: widget.suffix ?? null,
                prefixIcon: widget.prefix,
                hintText: widget.hint),
          ),
        ),
      ],
    );
  }
}
