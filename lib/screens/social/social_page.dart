import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydeck/blocs/decks_feed_tile/decks_feed_tile_bloc.dart';
import 'package:mydeck/models/entitites/mde_deck.dart';
import 'package:mydeck/utils/dependency_injection.dart';
import 'package:mydeck/models/dtos/deck_category.dart';
import 'package:mydeck/services/usecases/load_decks_page_for_category_usecase.dart';
import 'package:mydeck/screens/social/local_widgets/deck_chart_tile.dart';
import 'package:mydeck/screens/social/local_widgets/featured_decks_widget.dart';
import 'package:mydeck/screens/social/local_widgets/featured_decks_widget_small.dart';
import 'package:mydeck/generated/l10n.dart';
import 'package:mydeck/widgets/md_no_scroll_glow_behaviour.dart';

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
      child: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Stack(
            children: <Widget>[
              FeaturedDeckList(
                decks: List.generate(5, (index) => MDEDeck.basic()),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(48),
                  child: Text(
                    S.of(context).social_decks_chart,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24, left: 32),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Swipe'),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ScrollConfiguration(
            behavior: MDNoScrollGlowBehaviour(),
            child: CustomScrollView(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      width: 300,
                      height: 250,
                      child: FeaturedDeckListSmall(
                        decks: List.generate(5, (index) => MDEDeck.basic()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        S.of(context).social_decks_chart,
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
          ),
        ],
      ),
    );
  }
}
