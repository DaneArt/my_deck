
import 'package:animations/animations.dart';
import 'package:mydeck/core/icons/custom_icons_icons.dart';
import 'package:mydeck/core/injection/dependency_injection.dart';
import 'package:mydeck/core/meta/my_deck_keys.dart';
import 'package:mydeck/core/meta/my_deck_routes.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/add_deck/add_deck_bloc.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/bloc.dart';
import 'package:mydeck/features/my_deck/presentation/pages/add_deck_page.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/deck_hub/deck_hub_idle_view.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/deck_hub/deck_hub_list_view.dart';
import 'package:mydeck/core/extensions/widget_extensions.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      new GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    _fabAnimation =
        Tween<double>(begin: 1, end: 0).animate(_animationController);
    _controller = ScrollController();
    _controller.addListener(_onDeckListScrollListener);
    super.initState();
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
            child: OpenContainer(
              transitionType: ContainerTransitionType.fade,
              transitionDuration: kThemeAnimationDuration,
              openBuilder: (BuildContext _, VoidCallback openContainer) {
                return BlocProvider(
                  create: (context) => sl.get<AddDeckBloc>(),
                  child: AddDeckPage(
                    arguments: AddDeckArguments(deck: null, isEditing: true),
                  ),
                );
              },
              tappable: false,
              closedElevation: 4,
              closedShape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(64 / 2),
                ),
              ),
              closedBuilder: (BuildContext _, VoidCallback openContainer) {
                _loadDecksData(context);
                return FloatingActionButton(
                    key: Key(MyDeckTestKeys.addDeckFab),
                    heroTag: MyDeckHeroTags.addDeckFab,
                    elevation: 4,
                    child: Icon(
                      Icons.library_add,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    onPressed: openContainer);
              },
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

  BlocBuilder<LibraryBloc, LibraryState> _buildBody(BuildContext context) {
    return BlocBuilder<LibraryBloc, LibraryState>(
      builder: (context, state) {
        if (state is InitialState) {
          _loadDecksData(context);
        } else if (state is LoadedState) {
          return RefreshIndicator(
            key: _refreshIndicatorKey,
            onRefresh: () {
              _loadDecksData(context);
              return Future.value();
            },
            child:
                DeckHubListView(deckList: state.decks, controller: _controller),
          );
        } else if (state is LoadingState) {
          return CircularProgressIndicator();
        } else if (state is ErrorState) {
          return DeckHubIdleView(
            refreshKey: _refreshIndicatorKey,
            onRefresh: () => _loadDecksData(context),
            errorMessage: state.message,
          );
        } else if (state is NoTrainableDecksState) {
          WidgetsBinding.instance.addPostFrameCallback(
              (_) => _refreshIndicatorKey.currentState.show());
        } else if (state is StartTrainState) {
          return DeckHubListView(
              deckList: BlocProvider.of<LibraryBloc>(context).decksSourceList,
              controller: _controller);
        }

        return DeckHubIdleView(
          refreshKey: _refreshIndicatorKey,
          onRefresh: () => _loadDecksData(context),
          errorMessage: "Unhandled error",
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
      body: Center(
        child: SafeArea(
          top: true,
          child: BlocListener<LibraryBloc, LibraryState>(
            listener: (context, state) async {
              if (state is StartTrainState) {
                await Navigator.of(context)
                    .pushNamed(MyDeckRoutes.train, arguments: state.deckList);
                BlocProvider.of<LibraryBloc>(context).add(GetAllUsersDecks());
              } else if (state is NoTrainableDecksState) {
                Scaffold.of(context).hideCurrentSnackBar();
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('No trainable decks'),
                    action: SnackBarAction(
                      label: 'Create deck',
                      onPressed: () =>
                          Navigator.pushNamed(context, MyDeckRoutes.addDeck),
                    ),
                  ),
                );
              }
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
