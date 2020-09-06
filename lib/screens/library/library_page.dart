import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mydeck/blocs/add_deck/add_deck_bloc.dart';
import 'package:mydeck/blocs/library/library_bloc.dart';
import 'package:mydeck/utils/custom_icons_icons.dart';
import 'package:mydeck/utils/widget_extensions.dart';
import 'package:mydeck/utils/dependency_injection.dart';
import 'package:mydeck/theme/my_deck_routes.dart';
import 'package:mydeck/services/usecases/add_deck_usecase.dart';
import 'package:mydeck/services/usecases/delete_deck_usecase.dart';
import 'package:mydeck/services/usecases/save_deck_changes_usecase.dart';
import 'package:mydeck/screens/deck_editor/add_deck_page.dart';
import 'package:mydeck/models/entitites/deck.dart';
import 'package:mydeck/screens/library/local_widgets/deck_card_view.dart';
import 'package:mydeck/screens/library/local_widgets/deck_hub_idle_view.dart';
import 'package:mydeck/widgets/no_scroll_glow_behaviour.dart';
import 'package:mydeck/widgets/undo_snackbar.dart';
import 'package:mydeck/services/datasources/user_config.dart';
import 'package:mydeck/services/usecases/upload_online_deck.dart';
import 'package:mydeck/generated/l10n.dart';

class LibraryPage extends StatefulWidget {
  LibraryPage({Key key}) : super(key: key);

  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage>
    with SingleTickerProviderStateMixin {
  ScrollController _controller;

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();
  bool initialized = false;

  @override
  void initState() {
    _controller = ScrollController();
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
    _controller.dispose();
    super.dispose();
  }

  void _loadDecksData(BuildContext context) {
    BlocProvider.of<LibraryBloc>(context).add(LibraryEvent.loadUserLibrary());
  }

  Widget _decksList(List<Deck> decks) => ScrollConfiguration(
        behavior: NoScrollGlowBehaviour(),
        child: CustomScrollView(
          controller: _controller,
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => DeckCard(
                        deck: decks[index],
                        isEditing: true,
                        key: ValueKey(decks[index].deckId.getOrCrash),
                        iconButton: IconButton(
                          icon: Icon(CustomIcons.dumbbell,
                              color: Theme.of(context).accentColor),
                          onPressed: () {},
                        ),
                      ),
                  childCount: decks.length),
            ),
          ],
        ),
      );

  BlocBuilder<LibraryBloc, LibraryState> _buildBody(BuildContext context) {
    return BlocBuilder<LibraryBloc, LibraryState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state.decks.isEmpty) {
          return DeckLibraryIdleView(
            refreshKey: _refreshIndicatorKey,
            onRefresh: () => _loadDecksData(context),
            errorMessage: S.of(context).meta_no_decks,
          );
        }
        return RefreshIndicator(
          key: _refreshIndicatorKey,
          onRefresh: () {
            _loadDecksData(context);
            return Future.value();
          },
          child: _decksList(state.decks),
        );
      },
    );
  }

  Future<void> addDeck(BuildContext context) async {
    final newDeck = await context.navigator.push(MaterialPageRoute(
        builder: (context) => BlocProvider(
              create: (context) => AddDeckBloc(
                deck: Deck.basic(),
                uploadOnlineDeckUsecase: sl.get<UploadOnlineDeckUsecase>(),
              ),
              child: AddDeckPage(
                goal: AddDeckGoal.create,
              ),
            )));
    // if (newDeck != null && newDeck is Deck) {
    //   context.bloc<LibraryBloc>().add(LibraryEvent.addDeck(deck: newDeck));
    //   _showUndoSnackBar(
    //       S.of(context).library_deck_created,
    //       () => context
    //           .bloc<LibraryBloc>()
    //           .add(LibraryEvent.undoAdding(deck: newDeck)));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: Theme.of(context).iconTheme.color,
              semanticLabel: S.of(context).editor_create_deck,
              size: 32,
            ),
            onPressed: () {
              if (UserConfig.currentUser == null) {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text(S.of(context).library_sign_in_to_create),
                  action: SnackBarAction(
                    label: S.of(context).login_sign_in,
                    onPressed: () {
                      context.navigator.pushNamed(MyDeckRoutes.login);
                    },
                  ),
                ));
              } else {
                context.navigator.push(
                  MaterialPageRoute(
                    builder: (ctx) => BlocProvider<AddDeckBloc>(
                      create: (BuildContext context) => AddDeckBloc(
                        deck: Deck.basic(),
                        uploadOnlineDeckUsecase:
                            sl.get<UploadOnlineDeckUsecase>(),
                      ),
                      child: AddDeckPage(
                        goal: AddDeckGoal.create,
                      ),
                    ),
                  ),
                );
              }
            },
          )
        ],
        title: Text("${S.of(context).library_title}",
            style: Theme.of(context).textTheme.headline4),
      ),
      body: SafeArea(
        top: true,
        child:
/*         UserConfig.currentUser == null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      S.of(context).deck_call_to_sign_up,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  SizedBox(height: 8),
                  RaisedButton(
                      color: Theme.of(context).accentColor,
                      child: Text(
                        S.of(context).login_sign_up.toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                      ),
                      onPressed: () {
                        context.navigator.pushNamed(MyDeckRoutes.login);
                        //TODO: implement registration
                      }),
                ],
              )
            : */
            _buildBody(context),
      ),
    );
  }
}
