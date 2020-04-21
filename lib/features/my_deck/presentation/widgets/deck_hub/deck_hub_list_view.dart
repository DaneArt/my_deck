import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:flutter/material.dart';

import 'deck_card_view.dart';

class DeckHubListView extends StatelessWidget {
  final List<Deck> _decks;
  final ScrollController _deckListScrollController;
  const DeckHubListView(
      {List<Deck> deckList, Key key, ScrollController controller})
      : assert(deckList != null),
        assert(controller != null),
        _deckListScrollController = controller,
        _decks = deckList,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemWidth = size.width / 2;
    final double itemHeight = itemWidth * 1.6;

    return CustomScrollView(
      controller: _deckListScrollController,
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: <Widget>[
        SliverGrid.count(
          childAspectRatio: (itemWidth / itemHeight),
          crossAxisCount: 2,
          children: _buildDeckViews(),
        ),
      ],
    );
  }

  List<Widget> _buildDeckViews() {
    final List<Widget> result = [];
    for (Deck deck in _decks) {
      result.add(DeckCard(deck, key: ValueKey(deck.deckId)));
    }
    return result;
  }
}
