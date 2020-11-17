part of '../add_deck_page.dart';

class _DescriptionField extends StatelessWidget {
   final String _initialValue;
  final Function(String) _onChanged;
  static const _maxDescriptionCount = 70;

  const _DescriptionField({Key key,Key fieldKey, String initialValue, Function(String) onChanged}) :
  _initialValue = initialValue,
  _onChanged = onChanged,
   super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
                key: key,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                initialValue:
                    _initialValue,
                textInputAction: TextInputAction.done,
                style: Theme.of(context).textTheme.bodyText1,
                onChanged:_onChanged,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                    hintText: S.of(context).editor_description_enter,
                    hintMaxLines: 2,
                    alignLabelWithHint: true,
                    border: UnderlineInputBorder(),
                    labelText: S.of(context).editor_description,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                    hoverColor: Theme.of(context).accentColor,
                    labelStyle: Theme.of(context).textTheme.subtitle2),
                inputFormatters: [
                  new LengthLimitingTextInputFormatter(_maxDescriptionCount),
                ],
                maxLines: 3,
                maxLength: _maxDescriptionCount,
              ),
    );
  }
}