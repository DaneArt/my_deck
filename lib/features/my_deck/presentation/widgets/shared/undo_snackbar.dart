import 'package:flutter/material.dart';

class UndoSnackBar extends SnackBar{
  final String title;
  final Function() undoCallback;

  UndoSnackBar({@required this.title,@required this.undoCallback}):super(
    content: Text(title),
    action: SnackBarAction(label: "UNDO", onPressed: undoCallback,)
  );
}
