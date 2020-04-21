import 'package:equatable/equatable.dart';

import '../../app_tab.dart';

abstract class TabEvent extends Equatable {
  const TabEvent();
}

class UpdateTab extends TabEvent {
  final AppTab tab;

  UpdateTab(this.tab);

  @override
  List<Object> get props => [tab];

  @override
  String toString() {
    return "Update tab event: $tab";
  }
}
