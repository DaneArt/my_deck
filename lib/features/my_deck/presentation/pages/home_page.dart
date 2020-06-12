import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mydeck/features/my_deck/presentation/app_tab.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/tab/tab_bloc.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/tab/tab_event.dart';
import 'package:mydeck/features/my_deck/presentation/pages/library_page.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/shared/selectable_tab_bar.dart';
import 'package:mydeck/features/sign_in/presentation/pages/profile_page.dart';
import 'package:mydeck/features/social/presentation/pages/social_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: BlocBuilder<TabBloc, AppTab>(
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
            bottomNavigationBar: SelectableTabBar(
              activeTab: activeTab,
              onTabSelected: (tab) {
                BlocProvider.of<TabBloc>(context).add(UpdateTab(tab));
              },
            ),
          );
        },
      ),
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
      case AppTab.profile:
        return ProfilePage();
        break;
      default:
        return LibraryPage();
    }
  }
}
