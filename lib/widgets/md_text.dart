import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mydeck/models/entitites/md_file.dart';

class MDText extends StatefulWidget {
  final Key key;
  final double width;
  final double height;
  final Widget placeholder;
  final Widget errorWidget;
  final Widget loadIndicator;
  final TextFile sourceFile;
  MDText(
      {Key key,
      double width,
      double height,
      this.placeholder,
      this.errorWidget,
      this.loadIndicator,
      @required TextFile text})
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
  File _sourceFile = null;
  Widget _currentWidget;

  Widget get placeholder =>
      widget.placeholder ??
      Container(
        width: widget.width,
        height: widget.height,
        color: Colors.blueGrey,
      );
  Widget get errorWidget =>
      widget.errorWidget ??
      Center(
        child: Icon(
          Icons.error,
        ),
      );
  Widget get loadIndicator =>
      widget.loadIndicator ?? Center(child: CircularProgressIndicator());

  @override
  void initState() {
    _currentWidget = widget.placeholder;

    super.initState();
    Future.delayed(Duration(milliseconds: 300), () => _initializeText());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: _currentWidget,
    );
  }

  Future<void> _initializeText() async {
    setState(() {
      _currentWidget = widget.loadIndicator;
    });

    final fileResult = await widget.sourceFile.getFileValue();
    fileResult.fold((failure) {
      setState(() {
        _currentWidget = errorWidget;
      });
    }, (file) {
      setState(() {
        _sourceFile = file;
        _currentWidget = Text(file.readAsStringSync());
      });
    });
  }
}
