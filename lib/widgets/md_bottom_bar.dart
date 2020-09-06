import 'package:icon_shadow/icon_shadow.dart';
import 'package:mydeck/blocs/tab/app_tab.dart';
import 'package:mydeck/main.dart';
import 'package:mydeck/utils/custom_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class MDBottomBar extends StatefulWidget {
  final Function(AppTab) onTabSelected;
  final AppTab activeTab;

  MDBottomBar({Key key, this.onTabSelected, this.activeTab}) : super(key: key);

  @override
  MDBottomBarState createState() => MDBottomBarState();
}

class MDBottomBarState extends State<MDBottomBar> {
  Function(AppTab) get onTabSelected => widget.onTabSelected;
  AppTab get activeTab => widget.activeTab;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: MediaQuery.of(context).orientation == Orientation.landscape
          ? _landscapeBottomBar()
          : _portraitBottomBar(),
    );
  }

  Widget _landscapeBottomBar() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: AppTab.values
                    .map((tab) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32.0),
                          child: IconButton(
                            onPressed: () => onTabSelected(tab),
                            icon: tab == activeTab
                                ? IconShadowWidget(
                                    Icon(
                                      _iconFromTab(tab),
                                      color: Theme.of(context).primaryColor,
                                      size: 32,
                                    ),
                                  )
                                : Icon(
                                    _iconFromTab(tab),
                                    color: Colors.blueGrey.withAlpha(150),
                                  ),
                          ),
                        ))
                    .toList(),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: AppTab.values
                    .getRange(2, 4)
                    .map((tab) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32.0),
                          child: IconButton(
                            onPressed: () => onTabSelected(tab),
                            icon: tab == activeTab
                                ? IconShadowWidget(
                                    Icon(
                                      _iconFromTab(tab),
                                      color: Theme.of(context).primaryColor,
                                      size: 32,
                                    ),
                                  )
                                : Icon(
                                    _iconFromTab(tab),
                                    color: Colors.blueGrey.withAlpha(150),
                                  ),
                          ),
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      );
  Widget _portraitBottomBar() => Padding(
        padding: const EdgeInsets.only(top: 4.0, bottom: 4.0, right: 64),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: AppTab.values
              .map((tab) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: IconButton(
                      onPressed: () => onTabSelected(tab),
                      icon: tab == activeTab
                          ? IconShadowWidget(
                              Icon(
                                _iconFromTab(tab),
                                color: Theme.of(context).primaryColor,
                                size: 32,
                              ),
                            )
                          : Icon(
                              _iconFromTab(tab),
                              color: Colors.blueGrey.withAlpha(150),
                            ),
                    ),
                  ))
              .toList(),
        ),
      );

  IconData _iconFromTab(AppTab tab) {
    IconData result;
    switch (tab) {
      case AppTab.library:
        result = CustomIcons.cards;
        break;
      case AppTab.social:
        result = CustomIcons.search;
        break;
      /*  case AppTab.stats:
        result = CustomIcons.chart_bar;
        break; */
      case AppTab.profile:
        result = Icons.person;
        break;
    }
    return result;
  }
}
