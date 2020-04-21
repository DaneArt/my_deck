import 'package:mydeck/features/my_deck/presentation/widgets/shared/ensure_field_visibility.dart';
import 'package:flutter/material.dart';

typedef String FieldValidator(String param);

class LoginField extends StatefulWidget {
  final TextEditingController controller;
  final Widget prefix;
  final Widget suffix;
  final String hint;
  final FieldValidator validator;
  final Function(String) onChanged;
  final bool isObscureText;
  final bool autovalidate;
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
  }) : super(key: key);

  @override
  _LoginFieldState createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  final fieldFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        alignment: Alignment.center,
        height: 58,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(128)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black38, blurRadius: 16, offset: Offset(0, 4))
            ]),
      ),
      EnsureVisibleWhenFocused(
        child: TextFormField(
          key: widget.fieldKey,
          focusNode: fieldFocusNode,
          controller: widget.controller,
          onChanged: widget.onChanged,
          style: Theme.of(context).textTheme.body2,
          validator: widget.validator,
          autovalidate: widget.autovalidate,
          obscureText: widget.isObscureText,
          decoration: InputDecoration(
              suffixIcon: widget.suffix ?? null,
              prefixIcon: widget.prefix,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(128.0)),
                borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.brightness ==
                            Brightness.dark
                        ? Colors.grey
                        : Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(128.0)),
                borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.brightness ==
                            Brightness.dark
                        ? Colors.grey
                        : Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(128.0)),
                borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.brightness ==
                            Brightness.dark
                        ? Colors.grey
                        : Colors.white),
              ),
              fillColor:
                  Theme.of(context).colorScheme.brightness == Brightness.dark
                      ? Colors.grey
                      : Colors.white,
              filled:
                  Theme.of(context).colorScheme.brightness != Brightness.dark,
              hintText: widget.hint),
        ),
        focusNode: fieldFocusNode,
      ),
    ]);
  }
}
