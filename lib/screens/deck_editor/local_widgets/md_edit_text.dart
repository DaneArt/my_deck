import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/widgets/ensure_field_visibility.dart';
import 'package:mydeck/widgets/no_scroll_glow_behaviour.dart';

class MDEditText extends StatefulWidget {
  final TextFile initialFile;
  final Function(String) onChanged;
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
    _textFile = widget.initialFile ?? TextFile(uniqueId: UniqueId(), text: "");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusScope.of(context).requestFocus(fieldFocusNode);
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        child: ScrollConfiguration(
          behavior: NoScrollGlowBehaviour(),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
            child: TextFormField(
              focusNode: fieldFocusNode,
              maxLines: 99999,
              onChanged: widget.onChanged,
              maxLength: 140,
              decoration: InputDecoration(
                  border: UnderlineInputBorder(borderSide: BorderSide.none)),
              initialValue: _textFile.text,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ),
      ),
    );
  }
}
