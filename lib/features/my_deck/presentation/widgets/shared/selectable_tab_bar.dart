import 'package:mydeck/core/icons/custom_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../app_tab.dart';

class SelectableTabBar extends StatelessWidget {
  final AppTab activeTab;
  final Function(AppTab) onTabSelected;

  const SelectableTabBar(
      {Key key, @required this.activeTab, @required this.onTabSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: AppTab.values.indexOf(activeTab),
        onTap: (index) => onTabSelected(AppTab.values[index]),
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        items: AppTab.values.map((tab) {
          switch (tab) {
            case AppTab.social:
              return BottomNavigationBarItem(
                icon: Icon(
                  CustomIcons.search,
                  color: Theme.of(context).accentColor.withOpacity(0.5),
                ),
                activeIcon: Icon(
                  CustomIcons.search,
                  color: Theme.of(context).accentColor,
                ),
                title: Text(''),
              );
            case AppTab.library:
              return BottomNavigationBarItem(
                icon: Icon(
                  CustomIcons.cards,
                  color: Theme.of(context).accentColor.withOpacity(0.5),
                ),
                activeIcon: Icon(
                  CustomIcons.cards,
                  color: Theme.of(context).accentColor,
                ),
                title: Text(''),
              );
            case AppTab.stats:
              return BottomNavigationBarItem(
                icon: Icon(
                  CustomIcons.chart_bar,
                  color: Theme.of(context).accentColor.withOpacity(0.5),
                ),
                activeIcon: Icon(
                  CustomIcons.chart_bar,
                  color: Theme.of(context).accentColor,
                ),
                title: Text(''),
              );
            case AppTab.profile:
              return BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Theme.of(context).accentColor.withOpacity(0.5),
                ),
                activeIcon: Icon(
                  Icons.person,
                  color: Theme.of(context).accentColor,
                ),
                title: Text(''),
              );
            default:
              return null;
          }
        }).toList());
  }
}
