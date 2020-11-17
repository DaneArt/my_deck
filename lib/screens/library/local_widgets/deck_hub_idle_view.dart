import 'package:flutter/material.dart';
import 'package:mydeck/generated/l10n.dart';

class DeckLibraryIdleView extends StatelessWidget {
  final Function onRefresh;
  final String errorMessage;
  final GlobalKey<RefreshIndicatorState> refreshKey;

  const DeckLibraryIdleView(
      {Key key,
      @required this.onRefresh,
      @required this.refreshKey,
      this.errorMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        key: refreshKey,
        child: Stack(children: [
          ListView(),
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: Text(
                '${errorMessage ?? S.of(context).meta_error} \n ${S.of(context).meta_swipe_to_refresh}',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
        ]),
        onRefresh: () {
          onRefresh();
          return Future.value();
        });
  }
}
