part of '../add_deck_page.dart';

class _TitleFieldWidget extends StatelessWidget {
  final String _initialValue;
  final Function(String) _onChanged;
  
  static const int _maxTitleCount = 30;

  const _TitleFieldWidget({Key key, String initialValue, Function(String) onChanged}) :
  _initialValue = initialValue,
  _onChanged = onChanged,
   super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
              key: key,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              initialValue: _initialValue,
              onChanged: _onChanged,
              style: Theme.of(context).textTheme.bodyText1,
              textInputAction: TextInputAction.done,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                hintText: S.of(context).editor_title_enter,
                labelText: S.of(context).editor_title + '*',
                labelStyle: Theme.of(context).textTheme.subtitle2,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 4, vertical: 8),
              ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(_maxTitleCount),
              ],
              maxLines: 1,
              maxLength: _maxTitleCount,
    );
  }
}