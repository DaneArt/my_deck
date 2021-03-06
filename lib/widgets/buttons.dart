import 'package:flutter/material.dart';

class IconRoundButton extends StatelessWidget {
  final Icon icon;
  final VoidCallback onTap;
  final Color backgroundColor;
  final TextStyle style;

  IconRoundButton({
    Key key,
    @required this.icon,
    @required this.onTap,
    this.style,
    @required this.backgroundColor,
  })  : assert(icon != null),
        assert(onTap != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(56, 56), // button width and height
      child: ClipOval(
        child: Material(
          color: backgroundColor, // button color
          child: InkWell(
            splashColor: Colors.white30, // splash color
            onTap: onTap, // button pressed
            child: icon,
          ),
        ),
      ),
    );
  }
}

class MDRoundedButton extends StatelessWidget {
  final Function onPressed;
  final Widget icon;
  final Widget title;

  const MDRoundedButton(
      {Key key,
      @required this.onPressed,
      @required this.icon,
      @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 8,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: <Widget>[
            title,
            SizedBox(
              height: 8,
            ),
            icon
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final bool enabled;
  final Widget content;
  final VoidCallback onPressed;

  const LoginButton(
      {Key key, this.content, this.onPressed, this.enabled = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).accentColor,
      onPressed: enabled ? onPressed : null,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: content,
    );
  }
}
