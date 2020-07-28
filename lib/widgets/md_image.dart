import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mydeck/models/entitites/my_deck_file.dart';

class MDImage extends StatefulWidget {
  final Key key;
  final double width;
  final double height;
  final Widget placeholder;
  final Widget errorWidget;
  final Widget loadIndicator;
  final ImageFile sourceImage;
  MDImage(
      {Key key,
      double width,
      double height,
      this.placeholder,
      this.errorWidget,
      this.loadIndicator,
      @required ImageFile image})
      : assert(image != null),
        sourceImage = image,
        this.width = width ?? 0,
        this.height = height ?? 0,
        this.key = key ?? Key(image.uniqueId.getOrCrash),
        super(key: key);

  @override
  _MDImageState createState() => _MDImageState();
}

class _MDImageState extends State<MDImage> {
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
    _initializeImage();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: _currentWidget,
    );
  }

  Future<void> _initializeImage() async {
    setState(() {
      _currentWidget = widget.loadIndicator;
    });

    final fileResult = await widget.sourceImage.getFileValue();
    fileResult.fold((failure) {
      setState(() {
        _currentWidget = errorWidget;
      });
    }, (file) {
      setState(() {
        _sourceFile = file;
        _currentWidget = Image.file(
          _sourceFile,
          fit: BoxFit.cover,
        );
      });
    });
  }
}
