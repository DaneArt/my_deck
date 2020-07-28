import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydeck/blocs/tab/tab_bloc.dart';
import 'package:mydeck/blocs/tab/tab_event.dart';

import 'package:mydeck/blocs/tab/app_tab.dart';

import 'package:mydeck/screens/library/library_page.dart';
import 'package:mydeck/utils/custom_icons_icons.dart';
import 'package:mydeck/widgets/md_bottom_bar.dart';
import 'package:mydeck/screens/login/profile_page.dart';
import 'package:mydeck/screens/social/social_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabBloc, AppTab>(
      builder: (context, activeTab) {
        return Scaffold(
          body: PageTransitionSwitcher(
            transitionBuilder: (Widget child,
                Animation<double> primaryAnimation,
                Animation<double> secondaryAnimation) {
              return FadeThroughTransition(
                animation: primaryAnimation,
                secondaryAnimation: secondaryAnimation,
                child: child,
              );
            },
            child: _buildBody(activeTab),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(
              CustomIcons.dumbbell,
              color: Theme.of(context).accentIconTheme.color,
            ),
            onPressed: () {},
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: MDBottomBar(
            activeTab: activeTab,
            onTabSelected: (tab) {
              BlocProvider.of<TabBloc>(context).add(UpdateTab(tab));
            },
          ),
        );
      },
    );
  }

  Widget _buildBody(AppTab activeTab) {
    switch (activeTab) {
      case AppTab.library:
        return LibraryPage();
        break;
      case AppTab.social:
        return SocialPage();
        break;
      case AppTab.stats:
        return ProfilePage();
        break;
      case AppTab.profile:
        return ProfilePage();
        break;
      default:
        return LibraryPage();
    }
  }
}
