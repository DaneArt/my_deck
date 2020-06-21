import 'dart:io';

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydeck/core/injection/dependency_injection.dart';
import 'package:mydeck/features/editor/domain/value_objects/deck_description.dart';
import 'package:mydeck/features/my_deck/data/models/category_model.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';
import 'package:mydeck/features/social/domain/usecases/load_decks_page_for_category_usecase.dart';
import 'package:mydeck/features/social/presentation/bloc/decks_feed_tile/decks_feed_tile_bloc.dart';
import 'package:mydeck/features/social/presentation/widgets/deck_chart_tile.dart';
import 'package:mydeck/features/social/presentation/widgets/featured_decks_widget.dart';
import 'package:mydeck/features/social/presentation/widgets/featured_decks_widget_small.dart';

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
    return ColorfulSafeArea(
      color: Colors.white,
      child: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Stack(
            children: <Widget>[
              FeaturedDeckList(
                decks: List.generate(5, (index) => Deck.basic()),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(48),
                  child: Text(
                    'FEATURED DECKS',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white.withOpacity(0.95),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Icon(Icons.keyboard_arrow_down),
                ),
              ),
            ],
          ),
          CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    width: 300,
                    height: 250,
                    child: FeaturedDeckListSmall(
                      decks: List.generate(5, (index) => Deck.basic()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'Decks chart',
                      style: Theme.of(context)
                          .textTheme
                          .headline3
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
              ),
              SliverList(
                delegate: SliverChildListDelegate(kDefaultCategories
                    .map((category) => BlocProvider(
                          create: (context) => FeedTileBloc(
                            categoryModel: category,
                            loadDecksPageForCategoryUsecase:
                                sl.get<LoadDecksPageForCategoryUsecase>(),
                          ),
                          child: DeckChartTile(),
                        ))
                    .toList()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
