import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mydeck/models/entitites/md_file.dart';

class MDText extends StatefulWidget {
  final Key key;
  final double width;
  final double height;
  final TextFile sourceFile;
  MDText({Key key, double width, double height, @required TextFile text})
      : assert(text != null),
        sourceFile = text,
        this.width = width ?? 0,
        this.height = height ?? 0,
        this.key = key ?? Key(text.uniqueId.getOrCrash),
        super(key: key);

  @override
  _MDTextState createState() => _MDTextState();
}

class _MDTextState extends State<MDText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Center(child: Text(widget.sourceFile.text)),
    );
  }
}
