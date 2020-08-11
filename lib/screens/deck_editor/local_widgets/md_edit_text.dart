import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/models/entitites/unique_id.dart';

class MDEditText extends StatefulWidget {
  final TextFile initialFile;
  final Function(TextFile) onChanged;
  MDEditText({Key key, this.initialFile, this.onChanged}) : super(key: key);

  @override
  _MDEditTextState createState() => _MDEditTextState();
}

class _MDEditTextState extends State<MDEditText> {
  TextFile _textFile;

  @override
  void initState() {
    _textFile = widget.initialFile ?? TextFile(uniqueId: UniqueId());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: _textFile.getFileOrCrash().readAsStringSync(),
    );
  }
}
