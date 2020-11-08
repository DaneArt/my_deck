part of '../add_deck_page.dart';

class _MDPrivacyWidget extends StatelessWidget {
  final bool _isShared;
  const _MDPrivacyWidget({Key key, @required bool isShared}) : _isShared = isShared, super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                    children: [
                      Text('PRIVACY'),
                      Container(height: 8),
                      Icon(_isShared ? Icons.lock_open : Icons.lock),
                    ],
                  );
  }
}