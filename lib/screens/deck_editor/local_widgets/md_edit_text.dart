import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/widgets/ensure_field_visibility.dart';

class MDEditText extends StatefulWidget {
  final TextFile initialFile;
  final Function(TextFile) onChanged;
  final double height;
  final double width;
  MDEditText(
      {Key key, this.initialFile, this.onChanged, this.height, this.width})
      : super(key: key);

  @override
  _MDEditTextState createState() => _MDEditTextState();
}

class _MDEditTextState extends State<MDEditText> {
  TextFile _textFile;
  final fieldFocusNode = FocusNode();

  @override
  void initState() {
    _textFile = widget.initialFile ?? TextFile(uniqueId: UniqueId());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: EnsureVisibleWhenFocused(
            focusNode: fieldFocusNode,
            child: TextFormField(
              initialValue: _textFile.getFileOrCrash().readAsStringSync(),
            ),
          ),
        ),
      ),
    );
  }
}
