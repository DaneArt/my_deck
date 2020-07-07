import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mydeck/generated/l10n.dart';

class AddCardFlatButton extends StatelessWidget {
  final Function() onPressed;

  const AddCardFlatButton({Key key, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return FlatButton(
      onPressed: onPressed,
      child: Container(
        height: screenSize.width / 1.6,
        width: screenSize.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.add),
            Text(S.of(context).create_card),
          ],
        ),
      ),
    );
  }
}
