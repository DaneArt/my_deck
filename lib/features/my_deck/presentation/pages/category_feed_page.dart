import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/decks_feed_tile/decks_feed_tile_bloc.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/deck_hub/deck_card_view.dart';

class CategoryFeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedTileBloc, FeedTileState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: Text(state.categoryModel.categoryName),
        ),
        body: FeedList(),
      ),
    );
  }
}

class FeedList extends StatefulWidget {
  @override
  _FeedListState createState() => _FeedListState();
}

class _FeedListState extends State<FeedList> {
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
    return BlocBuilder<FeedTileBloc, FeedTileState>(
      builder: (BuildContext context, FeedTileState state) {
        _scrollController.addListener(() {
          print('Offset: ' + _scrollController.offset.toString());
          print('Decks: ' + state.decksList.length.toString());
          print('Half collection: ' +
              (screenSize.height / 4.5 * state.decksList.length / 2)
                  .toString());
          print(
              'Loadable: ${_scrollController.offset > (screenSize.height / 5 * state.decksList.length / 2)}');
          if (_scrollController.offset >
                  (screenSize.height / 4.5 * state.decksList.length / 2) &&
              (screenSize.height / 4.5 * state.decksList.length / 2) != 0 &&
              !state.isLoading) {
            BlocProvider.of<FeedTileBloc>(context)
                .add(FeedTileEvent.loadNewPageForCurrentCategory());
          }
        });
        return Container(
          height: screenSize.height,
          child: ListView.builder(
            controller: _scrollController,
            itemCount: state.decksList.length + 1,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) => index != state.decksList.length
                ? DeckCard(
                    deck: state.decksList[index],
                    isEditing: false,
                  )
                : state.isLoading
                    ? Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(child: CircularProgressIndicator()),
                      )
                    : state.loadingPageFailureOrSuccess.isSome()
                        ? Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Center(
                                child: Text('Error',
                                    style: Theme.of(context)
                                        .textTheme
                                        .overline
                                        .copyWith(fontSize: 18))),
                          )
                        : Container(),
          ),
        );
      },
    );
  }
}
