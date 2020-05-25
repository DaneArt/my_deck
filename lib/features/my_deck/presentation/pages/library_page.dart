import 'package:animations/animations.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/core/icons/custom_icons_icons.dart';
import 'package:mydeck/core/injection/dependency_injection.dart';
import 'package:mydeck/core/meta/my_deck_keys.dart';
import 'package:mydeck/core/meta/my_deck_routes.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/domain/usecases/add_deck_usecase.dart';
import 'package:mydeck/features/my_deck/domain/usecases/delete_deck_usecase.dart';
import 'package:mydeck/features/my_deck/domain/usecases/save_deck_changes_usecase.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/add_deck/add_deck_bloc.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/bloc.dart';
import 'package:mydeck/features/my_deck/presentation/pages/add_deck_page.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/deck_hub/deck_card_view.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/deck_hub/deck_hub_idle_view.dart';
import 'package:mydeck/core/extensions/widget_extensions.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_service.dart';

class LibraryPage extends StatefulWidget {
  LibraryPage({Key key}) : super(key: key);

  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage>
    with SingleTickerProviderStateMixin {
  ScrollController _controller;
  AnimationController _animationController;
  Animation _fabAnimation;
  GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();
  bool initialized = false;
  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    _fabAnimation =
        Tween<double>(begin: 1, end: 0).animate(_animationController);
    _controller = ScrollController();
    _controller.addListener(_onDeckListScrollListener);
    super.initState();
    if (!initialized) {
      _loadDecksData(context);
      setState(() {
        initialized = true;
      });
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_onDeckListScrollListener);
    _controller.dispose();
    _animationController.dispose();
    super.dispose();
  }

  _onDeckListScrollListener() {
    switch (_controller.position.userScrollDirection) {
      case ScrollDirection.forward:
        _animationController.reverse();
        break;
      case ScrollDirection.reverse:
        _animationController.forward();
        break;
      case ScrollDirection.idle:
        break;
    }
  }

  void _loadDecksData(BuildContext context) {
    BlocProvider.of<LibraryBloc>(context).add(GetAllUsersDecks());
  }

  List<Widget> _buildFabs(BuildContext context) => [
        FadeTransition(
          opacity: _fabAnimation,
          child: ScaleTransition(
              scale: _fabAnimation,
              child: FloatingActionButton(
                  key: Key(MyDeckTestKeys.addDeckFab),
                  heroTag: MyDeckHeroTags.addDeckFab,
                  elevation: 4,
                  child: Icon(
                    Icons.add,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  onPressed: () async {
                    final newDeck =
                        await context.navigator.push(MaterialPageRoute(
                            builder: (context) => BlocProvider(
                                  create: (context) => AddDeckBloc(
                                      addDeckUseCase: sl.get<AddDeckUseCase>(),
                                      deck: Deck.basic(),
                                      deleteDeckUsecase:
                                          sl.get<DeleteDeckUseCase>(),
                                      saveDeckChangesUsecase:
                                          sl.get<SaveDeckChangesUsecase>(),
                                      goal: AddDeckGoal.create),
                                  child: AddDeckPage(
                                    goal: AddDeckGoal.create,
                                  ),
                                )));
                    if (newDeck != null && newDeck is Deck) {
                      context
                          .bloc<LibraryBloc>()
                          .add(LibraryEvent.addDeck(deck: newDeck));
                    }
                  })),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
        ),
        FadeTransition(
          opacity: _fabAnimation,
          child: ScaleTransition(
            scale: _fabAnimation,
            child: FloatingActionButton(
              heroTag: MyDeckHeroTags.startTrainFab,
              elevation: 4,
              child: Icon(
                CustomIcons.dumbbell,
                color: Theme.of(context).iconTheme.color,
              ),
              onPressed: _tryToStartTrain,
            ),
          ),
        ),
      ];

  Widget _decksList(List<Deck> decks) => CustomScrollView(
        controller: _controller,
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => DeckCard(
                    deck: decks[index],
                    isEditing: true,
                    key: ValueKey(decks[index].deckId)),
                childCount: decks.length),
          ),
        ],
      );

  BlocBuilder<LibraryBloc, LibraryState> _buildBody(BuildContext context) {
    return BlocBuilder<LibraryBloc, LibraryState>(
      builder: (context, state) {
        if (state.isLoading) {
          return CircularProgressIndicator();
        } else if (state.decksSourceList.isEmpty ||
            state.loadingFailureOrSuccess.isSome()) {
          return DeckHubIdleView(
            refreshKey: _refreshIndicatorKey,
            onRefresh: () => _loadDecksData(context),
            errorMessage: "No decks",
          );
        }
        return RefreshIndicator(
          key: _refreshIndicatorKey,
          onRefresh: () {
            _loadDecksData(context);
            return Future.value();
          },
          child: _decksList(state.decksSourceList),
        );
      },
    );
  }

  void _tryToStartTrain() {
    BlocProvider.of<LibraryBloc>(_refreshIndicatorKey.currentContext)
        .add(TryToStartTrain());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text("${UserService.currentUser.username}'s library",
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: Colors.white)),
      ),
      body: Center(
        child: SafeArea(
          top: true,
          child: BlocListener<LibraryBloc, LibraryState>(
            listener: (context, state) async {
              state.trainStartFailureOrSuccess.fold(
                  () {},
                  (some) => some.fold((failure) {
                        Scaffold.of(context).hideCurrentSnackBar();
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            content: Text('No trainable decks'),
                            action: SnackBarAction(
                              label: 'Create deck',
                              onPressed: () async {
                                final newDeck = await context.navigator
                                    .push(MaterialPageRoute(
                                        builder: (context) => BlocProvider(
                                              create: (context) => AddDeckBloc(
                                                  addDeckUseCase:
                                                      sl.get<AddDeckUseCase>(),
                                                  deck: Deck.basic(),
                                                  deleteDeckUsecase: sl
                                                      .get<DeleteDeckUseCase>(),
                                                  saveDeckChangesUsecase: sl.get<
                                                      SaveDeckChangesUsecase>(),
                                                  goal: AddDeckGoal.create),
                                              child: AddDeckPage(
                                                goal: AddDeckGoal.create,
                                              ),
                                            )));
                                if (newDeck != null && newDeck is Deck) {
                                  context
                                      .bloc<LibraryBloc>()
                                      .add(LibraryEvent.addDeck(deck: newDeck));
                                }
                              },
                            ),
                          ),
                        );
                      }, (result) async {
                        context
                            .bloc<LibraryBloc>()
                            .add(LibraryEvent.trainStarted());
                        final trainResult = await Navigator.of(context)
                            .pushNamed(MyDeckRoutes.train, arguments: result);
                      }));
            },
            child: _buildBody(context),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: _buildFabs(context),
      ),
    );
  }
}
