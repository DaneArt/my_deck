import 'package:flutter/material.dart';
import 'package:mydeck/generated/l10n.dart';

class DeckHubIdleView extends StatelessWidget {
  final Function onRefresh;
  final String errorMessage;
  final GlobalKey<RefreshIndicatorState> refreshKey;

  const DeckHubIdleView(
      {Key key,
      @required this.onRefresh,
      @required this.refreshKey,
      this.errorMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return RefreshIndicator(
        key: refreshKey,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Container(
            height: screenSize.height,
            width: screenSize.width,
            child: Center(
              child: Text(
                '${errorMessage ?? S.of(context).meta_error} \n ${S.of(context).meta_swipe_to_refresh}',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
        ),
        onRefresh: () {
          onRefresh();
          return Future.value();
        });
  }
}
