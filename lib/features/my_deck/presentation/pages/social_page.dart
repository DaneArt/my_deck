import 'dart:io';

import 'package:mydeck/features/my_deck/data/models/category_model.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/social_page/deck_chart_tile.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/social_page/featured_decks_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SocialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _SocialPageBody();
  }
}

class _SocialPageBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SocialPageBodyState();
}

class _SocialPageBodyState extends State<_SocialPageBody> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      top: true,
      child: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Stack(
            children: <Widget>[
              FeaturedDeckList(
                decks: [
                  Deck(
                      deckId: 'test',
                      category: CategoryModel('No category'),
                      description: 'her tam',
                      icon: File(''),
                      isPrivate: true,
                      subscribersCount: 200,
                      title: 'Test title',
                      cardsList: []),
                  Deck(
                      deckId: 'test',
                      category: CategoryModel('No category'),
                      description: 'her tam',
                      icon: File(''),
                      isPrivate: true,
                      subscribersCount: 200,
                      title: 'Test title',
                      cardsList: []),
                ],
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(48),
                  child: Text(
                    'Featured decks',
                    style: Theme.of(context)
                        .textTheme
                        .headline
                        .copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Icon(Icons.keyboard_arrow_down),
                ),
              ),
            ],
          ),
          CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      width: size.width,
                      height: size.height,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: ListWheelScrollView.useDelegate(
                          itemExtent: 250,
                          diameterRatio: 2.3,
                          physics: FixedExtentScrollPhysics(),
                          childDelegate: ListWheelChildBuilderDelegate(
                            childCount: 5,
                            builder: (context, index) {
                              return RotatedBox(
                                quarterTurns: 1,
                                child: Card(
                                  child: Container(
                                    color: Colors.green,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        'Decks chart',
                        style: Theme.of(context).textTheme.headline,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: DeckChartTile(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
