import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydeck/core/extensions/widget_extensions.dart';
import 'package:mydeck/core/icons/custom_icons_icons.dart';
import 'package:mydeck/core/injection/dependency_injection.dart';
import 'package:mydeck/core/meta/my_deck_keys.dart';
import 'package:mydeck/core/meta/my_deck_routes.dart';
import 'package:mydeck/features/editor/domain/usecases/add_deck_usecase.dart';
import 'package:mydeck/features/editor/domain/usecases/delete_deck_usecase.dart';
import 'package:mydeck/features/editor/domain/usecases/save_deck_changes_usecase.dart';
import 'package:mydeck/features/editor/presentation/bloc/add_deck/add_deck_bloc.dart';
import 'package:mydeck/features/editor/presentation/pages/add_deck_page.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/library/library_bloc.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/library/library_event.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/library/library_state.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/deck_hub/deck_card_view.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/deck_hub/deck_hub_idle_view.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/shared/undo_snackbar.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_config.dart';
import 'package:mydeck/features/social/domain/usecases/upload_online_deck.dart';

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

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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

  List<Widget> _buildFabs(BuildContext context) {
    return [
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
            onPressed: () async => addDeck(context),
          ),
        ),
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
  }

  Widget _decksList(List<Deck> decks) => CustomScrollView(
        controller: _controller,
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => DeckCard(
                      deck: decks[index],
                      isEditing: true,
                      key: ValueKey(decks[index].deckId),
                      onUpdate: (oldDeck, changedDeck) {
                        context
                            .bloc<LibraryBloc>()
                            .add(LibraryEvent.updateDeck(deck: changedDeck));

                        _showUndoSnackBar(
                            'Deck successfully changed',
                            () => context.bloc<LibraryBloc>().add(
                                  LibraryEvent.undoEditing(oldDeck: oldDeck),
                                ));
                      },
                      onDelete: () {
                        context
                            .bloc<LibraryBloc>()
                            .add(LibraryEvent.deleteDeck(deck: decks[index]));
                        _showUndoSnackBar(
                          'Deck successfully deleted',
                          () => context.bloc<LibraryBloc>().add(
                              LibraryEvent.undoDeleting(deck: decks[index])),
                        );
                      },
                    ),
                childCount: decks.length),
          ),
        ],
      );

  void _showUndoSnackBar(String title, Function() action) {
    _scaffoldKey.currentState.hideCurrentSnackBar();
    _scaffoldKey.currentState.showSnackBar(UndoSnackBar(
      title: title,
      undoCallback: action,
    ));
  }

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

  Future<void> addDeck(BuildContext context) async {
    final newDeck = await context.navigator.push(MaterialPageRoute(
        builder: (context) => BlocProvider(
              create: (context) => AddDeckBloc(
                  addDeckUseCase: sl.get<AddDeckUseCase>(),
                  deck: Deck.basic(),
                  deleteDeckUsecase: sl.get<DeleteDeckUseCase>(),
                  saveDeckChangesUsecase: sl.get<SaveDeckChangesUsecase>(),
                  uploadOnlineDeckUsecase: sl.get<UploadOnlineDeckUsecase>(),
                  goal: AddDeckGoal.create),
              child: AddDeckPage(
                goal: AddDeckGoal.create,
              ),
            )));
    if (newDeck != null && newDeck is Deck) {
      context.bloc<LibraryBloc>().add(LibraryEvent.addDeck(deck: newDeck));
      _showUndoSnackBar(
          'Deck successfully created',
          () => context
              .bloc<LibraryBloc>()
              .add(LibraryEvent.undoAdding(deck: newDeck)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
            "${UserConfig.currentUser.username[0].toUpperCase()}${UserConfig.currentUser.username.substring(1)}'s library",
            style: Theme.of(context).textTheme.headline6.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor)),
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
                              onPressed: () async => addDeck(context),
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
