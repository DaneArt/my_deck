import 'dart:io';
import 'dart:math';

import 'package:mydeck/features/my_deck/data/models/category_model.dart';
import 'package:mydeck/features/my_deck/data/models/deck_model.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/shared/custom_page_scroll_physics.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/social_page/deck_chart_tile.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/social_page/featured_decks_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/training_page/custom_stack_list_widget.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';

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
                decks: List.generate(
                    5,
                    (index) => Deck(
                        cardsList: [],
                        author: UserModel('', ',', ',', ','),
                        category: CategoryModel(''),
                        description: 'null',
                        deckId: ',',
                        icon: File(''),
                        isPrivate: false,
                        title: '',
                        subscribersCount: 0)),
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
                      width: 300,
                      height: 250,
                      child: FeaturedDeckList(
                        decks: List.generate(
                            5,
                                (index) => Deck(
                                cardsList: [],
                                author: UserModel('', ',', ',', ','),
                                category: CategoryModel(''),
                                description: 'null',
                                deckId: ',',
                                icon: File(''),
                                isPrivate: false,
                                title: '',
                                subscribersCount: 0)),
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
