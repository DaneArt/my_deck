import 'package:flutter/material.dart';

class MDSliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  MDSliverTabBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 4))
        ],
      ),
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(MDSliverTabBarDelegate oldDelegate) {
    return false;
  }
}
