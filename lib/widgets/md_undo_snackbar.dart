import 'package:flutter/material.dart';

class MDUndoSnackBar extends SnackBar{
  final String title;
  final Function() undoCallback;

  MDUndoSnackBar({@required this.title,@required this.undoCallback}):super(
    content: Text(title),
    action: SnackBarAction(label: "UNDO", onPressed: undoCallback,)
  );
}
