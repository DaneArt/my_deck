import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydeck/core/injection/dependency_injection.dart';
import 'package:mydeck/features/social/domain/usecases/load_decks_page_for_category_usecase.dart';
import 'package:mydeck/features/social/presentation/bloc/decks_feed_tile/decks_feed_tile_bloc.dart';
import 'package:mydeck/features/social/presentation/pages/category_feed_page.dart';
import 'package:mydeck/features/social/presentation/widgets/small_deck_card.dart';
import 'package:mydeck/generated/l10n.dart';

class DeckChartTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<FeedTileBloc, FeedTileState>(
        builder: (BuildContext context, FeedTileState state) => Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('${state.categoryModel.getLocale(context)}',
                      style: Theme.of(context).textTheme.headline6),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (BuildContext context) => FeedTileBloc(
                            categoryModel: state.categoryModel,
                            loadDecksPageForCategoryUsecase:
                                sl.get<LoadDecksPageForCategoryUsecase>()),
                        child: CategoryFeedPage(),
                      ),
                    ));
                  },
                  child: Text(
                    S.of(context).social_more,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(color: Colors.blue),
                  ),
                ),
              ],
            ),
            Container(
                width: screenSize.width,
                height: screenSize.height / 4.5,
                child: DeckChartTileFeed()),
          ],
        ),
      ),
    );
  }
}

class DeckChartTileFeed extends StatefulWidget {
  DeckChartTileFeed({Key key}) : super(key: key);

  @override
  _DeckChartTileFeedState createState() => _DeckChartTileFeedState();
}

class _DeckChartTileFeedState extends State<DeckChartTileFeed> {
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    BlocProvider.of<FeedTileBloc>(context)
        .add(FeedTileEvent.loadNewPageForCurrentCategory());
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return BlocBuilder<FeedTileBloc, FeedTileState>(builder: (context, state) {
      _scrollController.addListener(() {
        if (_scrollController.offset >
                (screenSize.height / 4.5 * state.decksList.length / 2) &&
            (screenSize.height / 4.5 * state.decksList.length / 2) != 0 &&
            !state.isLoading) {
          BlocProvider.of<FeedTileBloc>(context)
              .add(FeedTileEvent.loadNewPageForCurrentCategory());
        }
      });

      return Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            controller: _scrollController,
            itemCount: state.decksList.length + 1,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => index != state.decksList.length
                ? SmallDeckCard(deck: state.decksList[index])
                : state.isLoading
                    ? Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(child: CircularProgressIndicator()),
                      )
                    : state.loadingPageFailureOrSuccess.isSome()
                        ? Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Error',
                                    style: Theme.of(context)
                                        .textTheme
                                        .overline
                                        .copyWith(fontSize: 18)),
                                FlatButton(
                                  onPressed: () {
                                    BlocProvider.of<FeedTileBloc>(context).add(
                                        FeedTileEvent
                                            .loadNewPageForCurrentCategory());
                                  },
                                  child: Text('Refresh',
                                      style:
                                          TextStyle(color: Colors.lightBlue)),
                                ),
                              ],
                            )),
                          )
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                S.of(context).meta_no_decks,
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            ),
                          ),
          ),
        ),
      );
    });
  }
}
