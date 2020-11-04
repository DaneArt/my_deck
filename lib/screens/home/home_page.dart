import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydeck/blocs/tab/tab_bloc.dart';
import 'package:mydeck/blocs/tab/tab_event.dart';

import 'package:mydeck/blocs/tab/app_tab.dart';
import 'package:mydeck/generated/l10n.dart';

import 'package:mydeck/screens/library/library_page.dart';
import 'package:mydeck/services/datasources/user_config.dart';
import 'package:mydeck/theme/my_deck_routes.dart';
import 'package:mydeck/utils/custom_icons_icons.dart';
import 'package:mydeck/widgets/login_to_cont_widget.dart';
import 'package:mydeck/widgets/md_bottom_bar.dart';
import 'package:mydeck/screens/login/profile_page.dart';
import 'package:mydeck/screens/social/social_page.dart';

class HomePage extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabBloc, AppTab>(
      builder: (context, activeTab) {
        return Scaffold(
          key: scaffoldKey,
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
            onPressed: () {
              if (UserConfig.currentUser == null) {
                scaffoldKey.currentState.hideCurrentSnackBar();
                scaffoldKey.currentState.showSnackBar(
                  LoginToContSnackbar(context: context),
                );
              } else {
                Navigator.of(context).pushNamed(MyDeckRoutes.train);
              }
            },
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
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
      /*  case AppTab.stats:
        return ProfilePage();
        break; */
      case AppTab.profile:
        return ProfilePage();
        break;
      default:
        return LibraryPage();
    }
  }
}
