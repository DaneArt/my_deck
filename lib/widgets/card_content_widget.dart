import 'dart:io';
import 'dart:math';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import 'package:mydeck/models/entitites/my_deck_file.dart';
import 'package:mydeck/widgets/ensure_field_visibility.dart';

class TextCardWidget extends StatefulWidget {
  final TextFile content;
  final Function(String text) onTextChanged;
  final bool isEditing;

  const TextCardWidget({
    Key key,
    this.content,
    this.onTextChanged,
    this.isEditing,
  }) : super(key: key);

  @override
  _TextCardWidgetState createState() => _TextCardWidgetState();
}

class _TextCardWidgetState extends State<TextCardWidget> {
  FocusNode contentFocusNode;
  GlobalKey<FormFieldState> formState;
  final area_lost_percent = 5;
  final kCharactersLimit = 210;

  @override
  void initState() {
    super.initState();

    contentFocusNode = FocusNode();
    formState = GlobalKey<FormFieldState>();
  }

  @override
  void dispose() {
    contentFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    double fontSize = 18;
    return Expanded(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: widget.isEditing
              ? EnsureVisibleWhenFocused(
                  focusNode: contentFocusNode,
                  child: TextFormField(
                    initialValue: widget.content.text.readAsStringSync(),
                    textInputAction: TextInputAction.newline,
                    focusNode: contentFocusNode,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(kCharactersLimit),
                    ],
                    maxLength: kCharactersLimit,
                    onChanged: (input) {
                      setState(() {
                        fontSize = autoSizeFont(
                            textLength: input.length,
                            parentArea: ((screenSize.width * 0.9 - 32 * 2) *
                                    (128 * input.length / 30))
                                .toInt());
                        widget.onTextChanged(input);
                      });
                    },
                    maxLines: null,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(fontSize: fontSize),
                  ),
                )
              : Text(
                  widget.content.text.readAsStringSync(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                      fontSize: autoSizeFont(
                          textLength:
                              widget.content.text.readAsStringSync().length,
                          parentArea: ((screenSize.width * 0.9 - 32 * 2) *
                                  (128 *
                                      widget.content.text
                                          .readAsStringSync()
                                          .length /
                                      30))
                              .toInt())),
                ),
        ),
      ),
    );
  }

  double autoSizeFont({@required int textLength, @required int parentArea}) {
    assert(textLength != null, "'textLength' may not be null");
    assert(parentArea != null, "'parentArea' may not be null");
    final letterArea = parentArea / textLength;
    final pixelOfLetter = sqrt(letterArea);
    final pixelSize = pixelOfLetter - (pixelOfLetter * area_lost_percent) / 100;
    return pixelSize;
  }
}

class ImageCardContentWidget extends StatefulWidget {
  final MDFile imageFile;
  final double width;
  final double heigth;
  final BorderRadius radius;

  ImageCardContentWidget({
    Key key,
    @required this.imageFile,
    this.width,
    this.heigth,
    this.radius,
  }) : super(key: key);

  @override
  _ImageCardContentWidgetState createState() => _ImageCardContentWidgetState();
}

class _ImageCardContentWidgetState extends State<ImageCardContentWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
          borderRadius: widget.radius ??
              BorderRadius.only(
                  bottomRight: Radius.circular(4),
                  bottomLeft: Radius.circular(4)),
          child: Image.file(
            widget.imageFile.getFileOrCrash(),
            fit: BoxFit.cover,
            height: widget.heigth ?? MediaQuery.of(context).size.height * 0.65,
            width: widget.width ?? MediaQuery.of(context).size.width,
          )),
    );
  }
}
