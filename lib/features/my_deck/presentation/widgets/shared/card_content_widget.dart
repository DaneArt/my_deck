import 'package:mydeck/features/my_deck/domain/entities/card_content.dart';
import 'package:flutter/material.dart';

class TextCardContextWidget extends StatefulWidget {
  final TextContent content;
  final Function(String text) onTextChanged;
  final bool isEditing;

  const TextCardContextWidget(
      {Key key, this.content, this.onTextChanged, this.isEditing})
      : super(key: key);

  @override
  _TextCardContextWidgetState createState() => _TextCardContextWidgetState();
}

class _TextCardContextWidgetState extends State<TextCardContextWidget> {
  TextEditingController contentController;
  FocusNode contentFocusNode;

  @override
  void initState() {
    super.initState();
    contentController = TextEditingController();
    contentController.text = widget.content.text;
    contentController.addListener(() {
      widget.onTextChanged(contentController.text);
    });

    contentFocusNode = FocusNode();
  }

  @override
  void dispose() {
    contentFocusNode.dispose();
    contentController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height / 2.2,
      width: screenSize.width / 1.5,
      child: InkWell(
        onTap: () {
          contentFocusNode.requestFocus();
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: widget.isEditing
                ? TextField(
                    textInputAction: TextInputAction.newline,
                    focusNode: contentFocusNode,
                    controller: contentController,
                    textAlign: TextAlign.center,
                    maxLines: null,
                    style: Theme.of(context).textTheme.body2,
                  )
                : Text(contentController.text),
          ),
        ),
      ),
    );
  }
}
