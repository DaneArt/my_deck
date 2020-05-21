import 'package:flutter/material.dart';
import 'package:mydeck/core/icons/custom_icons_icons.dart';
import 'package:mydeck/core/meta/my_deck_routes.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/presentation/pages/add_deck_page.dart';

class SmallDeckCard extends StatelessWidget {
  final DeckOnline deck;

  const SmallDeckCard({Key key, this.deck}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(MyDeckRoutes.addDeck,
              arguments: AddDeckArguments(deck: deck, isEditing: false));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          child: Container(
            width: screenSize.height / 4.5,
            height: screenSize.height / 4.5,
            child: Stack(
              children: <Widget>[
                Image.file(deck.icon,
                    width: screenSize.height / 4.5,
                    height: screenSize.height / 4.5,
                    fit: BoxFit.cover),
                Container(
                  color: Colors.black38,
                  width: screenSize.height / 4.5,
                  height: screenSize.height / 4.5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(deck.cardsCount.toString(),
                                style: TextStyle(color: Colors.white)),
                          ),
                          Icon(
                            CustomIcons.cards,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                    Text(deck.title,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.white)),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(deck.subscribersCount.toString(),
                                style: TextStyle(color: Colors.white)),
                          ),
                          Icon(
                            Icons.person,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}