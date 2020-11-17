import 'package:flutter/material.dart';
import 'package:mydeck/generated/l10n.dart';
import 'package:mydeck/theme/my_deck_routes.dart';

class MDLoginToContSnackbar extends SnackBar {
  MDLoginToContSnackbar({
    Key key,
    @required BuildContext context,
  }) : super(
          key: key,
          content: Text(S.of(context).library_sign_in_to_create),
          action: SnackBarAction(
            label: S.of(context).login_sign_in,
            onPressed: () {
              Navigator.of(context).pushNamed(MyDeckRoutes.login);
            },
          ),
        );
}
