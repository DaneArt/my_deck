import 'package:mydeck/features/my_deck/domain/entities/card_content.dart';
import 'package:flutter/material.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/shared/ensure_field_visibility.dart';

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
  FocusNode contentFocusNode;
  GlobalKey<FormFieldState> formState;

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
    return Container(
      height: screenSize.height * 0.65,
      width: screenSize.width * 0.9,
      child: InkWell(
        onTap: () {
          contentFocusNode.requestFocus();
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: widget.isEditing
                ? EnsureVisibleWhenFocused(
                    focusNode: contentFocusNode,
                    child: TextFormField(
                      initialValue: widget.content.model,
                      textInputAction: TextInputAction.newline,
                      focusNode: contentFocusNode,
                      textAlign: TextAlign.center,
                      onChanged: (input) {
                        setState(() {
                          widget.onTextChanged(input);
                        });
                      },
                      maxLines: null,
                      style: Theme.of(context).textTheme.body2,
                    ),
                  )
                : Text(widget.content.model),
          ),
        ),
      ),
    );
  }
}
