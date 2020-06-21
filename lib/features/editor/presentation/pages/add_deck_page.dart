import 'package:colorful_safe_area/colorful_safe_area.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mydeck/core/extensions/widget_extensions.dart';
import 'package:mydeck/core/icons/custom_icons_icons.dart';
import 'package:mydeck/core/meta/my_deck_routes.dart';
import 'package:mydeck/features/editor/presentation/bloc/add_card/add_card_bloc.dart';
import 'package:mydeck/features/editor/presentation/bloc/add_deck/add_deck_bloc.dart';
import 'package:mydeck/features/editor/presentation/pages/card_editor.dart';
import 'package:mydeck/features/editor/presentation/widgets/category_picker.dart';
import 'package:mydeck/features/editor/presentation/widgets/in_deck_card_view.dart';
import 'package:mydeck/features/editor/presentation/widgets/pick_image_view.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart' as Entity;
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/shared/sliver_tab_bar_delegate.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_config.dart';

enum AddDeckGoal { edit, create, lookup }

class AddDeckPage extends StatelessWidget {
  final AddDeckGoal goal;

  const AddDeckPage({Key key, @required this.goal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AddDeckTabView(goal: goal);
  }
}

class AddDeckTabView extends StatefulWidget {
  final AddDeckGoal goal;

  const AddDeckTabView({Key key, @required this.goal}) : super(key: key);

  @override
  _AddDeckTabViewState createState() => _AddDeckTabViewState();
}

class _AddDeckTabViewState extends State<AddDeckTabView>
    with TickerProviderStateMixin<AddDeckTabView>, WidgetsBindingObserver {
  TabController tabController;
  ScrollController scrollController;
  AnimationController _animationController;
  Animation _fabAnimation;

  AddDeckGoal get goal => widget.goal;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    _fabAnimation =
        Tween<double>(begin: 0, end: 1).animate(_animationController);

    tabController = TabController(
      length: 2,
      vsync: this,
    );
    tabController.addListener(() {
      FocusScope.of(context).unfocus();
      if (tabController.index == 1) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });

    scrollController = ScrollController();
    scrollController.addListener(() {
      switch (scrollController.position.userScrollDirection) {
        case ScrollDirection.forward:
          _animationController.forward();
          break;
        case ScrollDirection.reverse:
          _animationController.reverse();
          break;
        case ScrollDirection.idle:
          break;
      }
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  Widget fieldCheckItem({@required String text, @required bool isValid}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          isValid
              ? Icon(
                  Icons.check,
                  color: Colors.green,
                  size: 32,
                )
              : Icon(
                  Icons.clear,
                  color: Colors.red,
                  size: 32,
                ),
          Text(text,
              textAlign: TextAlign.right,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600))
        ],
      ),
    );
  }

  _showInvalidFieldsDialog(
          {@required BuildContext context, @required AddDeckState state}) =>
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                title: Text("Can't save deck. Correct mistakes and try again.",
                    textAlign: TextAlign.center),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    fieldCheckItem(
                        text: "Title longer than 6 characters.",
                        isValid: state.title.value.isRight()),
                    fieldCheckItem(
                        text: "Deck has avatar.",
                        isValid: state.avatar.value.isRight()),
                    fieldCheckItem(
                        text: "Created at least 2 cards.",
                        isValid: state.cardsList.length >= 2),
                  ],
                ),
                actions: <Widget>[
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      },
                      child: Text('SAVE ANYWAY')),
                  FlatButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: Text('FIX'))
                ],
              ));

  @override
  Widget build(BuildContext context) {
    if (goal == AddDeckGoal.lookup &&
        context.bloc<AddDeckBloc>().state.author.username.isEmpty) {
      context.bloc<AddDeckBloc>().add(AddDeckEvent.initFromOnline());
    }

    return WillPopScope(
      onWillPop: () async {
        if (goal != AddDeckGoal.lookup) {
          BlocProvider.of<AddDeckBloc>(context).add(AddDeckEvent.saveChanges());
        } else {
          return true;
        }
        return false;
      },
      child: ColorfulSafeArea(
        color: Theme.of(context).primaryColorDark,
        child: Scaffold(
          body: BlocListener<AddDeckBloc, AddDeckState>(
            listener: (context, state) {
              state.saveFailureOrSuccessOption.fold(
                  () => null,
                  (some) => some.fold((failure) {
                        failure.maybeMap(fieldsInvalid: (f) async {
                          final save = await _showInvalidFieldsDialog(
                              context: context, state: state);
                          if (save) {
                            BlocProvider.of<AddDeckBloc>(context)
                                .add(AddDeckEvent.saveDraft());
                          }
                        }, unsaveableDraft: (f) {
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text("Can't save draft of public deck."),
                          ));
                        }, insertFailure: (f) {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Error while saving.'),
                              action: SnackBarAction(
                                  label: 'Retry',
                                  onPressed: () =>
                                      BlocProvider.of<AddDeckBloc>(context)
                                          .add(AddDeckEvent.saveChanges())),
                            ),
                          );
                        }, updateFailure: (f) {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Error while saving.'),
                              action: SnackBarAction(
                                  label: 'Retry',
                                  onPressed: () =>
                                      BlocProvider.of<AddDeckBloc>(context)
                                          .add(AddDeckEvent.saveChanges())),
                            ),
                          );
                        }, deleteFailure: (f) {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Error while saving.'),
                              action: SnackBarAction(
                                  label: 'Retry',
                                  onPressed: () =>
                                      BlocProvider.of<AddDeckBloc>(context)
                                          .add(AddDeckEvent.deleteDeck())),
                            ),
                          );
                        }, orElse: () {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Unhandled failure.'),
                              action:
                                  SnackBarAction(label: 'OK', onPressed: () {}),
                            ),
                          );
                        });
                      },
                          (success) => Navigator.of(context)
                              .pop(success != null ? success : true)));
            },
            child: DefaultTabController(
              length: 2, // This is the number of tabs.
              child: NestedScrollView(
                physics: tabController.index == 0
                    ? NeverScrollableScrollPhysics()
                    : AlwaysScrollableScrollPhysics(),
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverOverlapAbsorber(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                          context),
                      sliver: SliverAppBar(
                        elevation: 4,
                        floating: false,
                        pinned: false,
                        title: Text(
                          "Edit deck",
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: IconButton(
                          icon: Icon(
                              goal != AddDeckGoal.lookup
                                  ? Icons.clear
                                  : Icons.arrow_back,
                              color: Colors.white),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        actions: <Widget>[
                          goal == AddDeckGoal.edit
                              ? IconButton(
                                  icon: Icon(Icons.delete, color: Colors.white),
                                  onPressed: () {
                                    BlocProvider.of<AddDeckBloc>(context)
                                        .add(AddDeckEvent.deleteDeck());
                                  },
                                )
                              : Spacer(),
                          goal != AddDeckGoal.lookup
                              ? IconButton(
                                  icon: Icon(Icons.check, color: Colors.white),
                                  onPressed: () {
                                    BlocProvider.of<AddDeckBloc>(context)
                                        .add(AddDeckEvent.saveChanges());
                                  },
                                )
                              : Spacer(),
                        ],
                      ),
                    ),
                    SliverPersistentHeader(
                      delegate: SliverTabBarDelegate(
                        TabBar(
                          indicatorSize: TabBarIndicatorSize.label,
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.white.withAlpha(125),
                          tabs: [
                            Tab(
                              text: 'Deck',
                              icon: Icon(
                                Icons.book,
                              ),
                            ),
                            Tab(
                                text: 'Cards',
                                icon: Icon(
                                  CustomIcons.cards,
                                )),
                          ],
                          controller: tabController,
                        ),
                      ),
                      pinned: true,
                    ),
                  ];
                },
                body: TabBarView(controller: tabController, children: [
                  _DeckPage(goal: goal),
                  _CardsPage(scrollController: scrollController, goal: goal),
                ]),
              ),
            ),
          ),
          floatingActionButton: goal != AddDeckGoal.lookup
              ? FadeTransition(
                  opacity: _fabAnimation,
                  child: ScaleTransition(
                    scale: _fabAnimation,
                    child: BlocBuilder<AddDeckBloc, AddDeckState>(
                      builder: (context, state) => FloatingActionButton(
                        child: Icon(Icons.add, color: Colors.white),
                        onPressed: () async {
                          final newCards = await context.navigator.push(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      BlocProvider(
                                        create: (context) => AddCardBloc(
                                          currentCardIndex:
                                              state.cardsList.length,
                                          sourceCards:
                                              List.from(state.cardsList)
                                                ..add(Entity.Card.basic()),
                                        ),
                                        child: CardEditor(isCreating: true),
                                      )));
                          if (newCards != null) {
                            context
                                .bloc<AddDeckBloc>()
                                .add(AddDeckEvent.updateCards(cards: newCards));
                          }
                        },
                      ),
                    ),
                  ),
                )
              : Container(),
        ),
      ),
    );
  }
}

class _DeckPage extends StatefulWidget {
  final AddDeckGoal goal;

  _DeckPage({
    Key key,
    this.goal,
  }) : super(key: key);

  @override
  _DeckPageState createState() => _DeckPageState();
}

class _DeckPageState extends State<_DeckPage> with WidgetsBindingObserver {
  final _formKey = GlobalKey<FormState>();
  final _titleFieldKey = GlobalKey<FormFieldState>();
  final _descriptionFieldKey = GlobalKey<FormFieldState>();

  static const _maxDescriptionCount = 70;
  static const _maxTitleCount = 30;

  AddDeckGoal get goal => widget.goal;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);

    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      FocusScope.of(context).unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddDeckBloc, AddDeckState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(child: CircularProgressIndicator());
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: ImagePickerWidget(
                      isEditing: goal != AddDeckGoal.lookup,
                      onImagePicked: goal != AddDeckGoal.lookup
                          ? (image) {
                              BlocProvider.of<AddDeckBloc>(context)
                                  .add(AddDeckEvent.avatarChanged(image.path));
                            }
                          : (image) {},
                      defaultImage: state.avatar,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Flexible(
                      flex: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          titleWidget(state),
                          descriptionWidget(state),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[authorWidget(state), trainWidget(state)],
                ),
              ),
              shareWidget(state),
              categoryWidget(state),
            ],
          );
        }
      },
    );
  }

  Widget authorWidget(AddDeckState state) => Row(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.grey,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(32)),
              child: Image.network(goal != AddDeckGoal.lookup &&
                      state.author.userId == UserConfig.currentUser.userId
                  ? UserConfig.currentUser.avatarPath
                  : state.author.avatarPath),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
          ),
          Text(goal == AddDeckGoal.lookup
              ? state.author.username
              : state.author.userId == UserConfig.currentUser.userId
                  ? 'you'
                  : '')
        ],
      );

  Widget descriptionWidget(AddDeckState state) => goal != AddDeckGoal.lookup
      ? TextFormField(
          key: _descriptionFieldKey,
          autovalidate: true,
          initialValue:
              state.description.value.fold((l) => l.failedValue, (r) => r),
          textInputAction: TextInputAction.done,
          onChanged: (input) => BlocProvider.of<AddDeckBloc>(context)
              .add(AddDeckEvent.descriptionChanged(input)),
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            hintText: 'Enter description(optional)',
            hintMaxLines: 2,
            labelText: 'Description',
            contentPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
            hoverColor: Theme.of(context).accentColor,
          ),
          inputFormatters: [
            new LengthLimitingTextInputFormatter(_maxDescriptionCount),
          ],
          maxLength: _maxDescriptionCount,
        )
      : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Description:',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
            ),
            Text(state.description.value.fold(
                (l) =>
                    l.failedValue.isNotEmpty ? l.failedValue : 'No description',
                (r) => r)),
          ],
        );

  Widget titleWidget(AddDeckState state) => goal != AddDeckGoal.lookup
      ? TextFormField(
          key: _titleFieldKey,
          autovalidate: true,
          initialValue: state.title.value.fold((l) => l.failedValue, (r) => r),
          onChanged: (input) {
            BlocProvider.of<AddDeckBloc>(context)
                .add(AddDeckEvent.titleChanged(input));
          },
          textInputAction: TextInputAction.done,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            hintText: 'Enter title',
            labelText: 'Title*',
            contentPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
          ),
          inputFormatters: [
            LengthLimitingTextInputFormatter(_maxTitleCount),
          ],
        )
      : Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Title:',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
              ),
              Text(state.title.value.fold(
                  (l) => l.failedValue.isNotEmpty ? l.failedValue : 'No title',
                  (r) => r)),
            ],
          ),
        );

  Widget trainWidget(AddDeckState state) => goal != AddDeckGoal.create
      ? RaisedButton(
          onPressed: state.cardsList.isNotEmpty
              ? () async {
                  final cards = List<Entity.Card>.from(state.cardsList);
                  cards.removeWhere((c) =>
                      c.answer.model.isEmpty || c.question.model.isEmpty);
                  if (cards.length >= 2) {
                    final trainedCards = await Navigator.of(context)
                        .pushNamed(MyDeckRoutes.train, arguments: [
                      (state.initialDeck as DeckLibrary)
                          .copyWith(cardsList: cards)
                    ]);
                    if (trainedCards != null) {
                      context.bloc<AddDeckBloc>().add(AddDeckEvent.updateCards(
                          cards: (trainedCards as List)
                              .map((c) => Entity.Card.fromModel(c))
                              .toList()));
                    }
                  } else {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text(
                          'Deck must have two filled cards at least. ${goal != AddDeckGoal.lookup ? 'Create cards and save deck.' : ''}'),
                    ));
                  }
                }
              : () {},
          color: Colors.white,
          elevation: 4,
          child: Row(
            children: <Widget>[
              Text(
                'TRAIN',
                style: TextStyle(color: Colors.black),
              ),
              Icon(
                CustomIcons.dumbbell,
                color: Colors.black,
              )
            ],
          ),
        )
      : Spacer();

  Widget shareWidget(AddDeckState state) => goal != AddDeckGoal.lookup
      ? Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Share with community?',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Switch.adaptive(
                value: state.isShared,
                onChanged: (isChecked) {
                  context
                      .bloc<AddDeckBloc>()
                      .add(AddDeckEvent.privacyChanged(isChecked));
                },
              ),
            ],
          ),
        )
      : Container();

  Widget categoryWidget(AddDeckState state) => Padding(
        padding: const EdgeInsets.only(top: 4, left: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Category'),
            CategoryPicker(
              onChanged: (value) {
                BlocProvider.of<AddDeckBloc>(context)
                    .add(AddDeckEvent.categoryChanged(value));
              },
              baseCategory: state.category,
            ),
          ],
        ),
      );
}

class _CardsPage extends StatefulWidget {
  final ScrollController scrollController;
  final AddDeckGoal goal;

  _CardsPage({Key key, this.scrollController, this.goal}) : super(key: key);

  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<_CardsPage> {
  @override
  void initState() {
    super.initState();
  }

  bool get _isEditing => widget.goal != AddDeckGoal.lookup;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddDeckBloc, AddDeckState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Builder(
            builder: (context) => CustomScrollView(
              key: PageStorageKey<String>('Cards'),
              slivers: <Widget>[
                SliverOverlapInjector(
                  // This is the flip side of the SliverOverlapAbsorber above.
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                ),
                SliverPadding(
                    padding: const EdgeInsets.all(8),
                    sliver: state.cardsList.isNotEmpty
                        ? _cardsGrid(state)
                        : _noCardsWidget(state)),
              ],
            ),
          );
        }
      },
    );
  }

  Widget _noCardsWidget(AddDeckState state) {
    return SliverFillRemaining(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Oops, card collection is Empty.',
              style: Theme.of(context).textTheme.bodyText1),
          _isEditing
              ? RaisedButton(
                  color: Theme.of(context).accentColor,
                  onPressed: () async {
                    final cards =
                        await context.navigator.push(MaterialPageRoute(
                            builder: (BuildContext context) => BlocProvider(
                                  create: (context) => AddCardBloc(
                                      currentCardIndex: state.cardsList.length,
                                      sourceCards: List.from(state.cardsList)
                                        ..add(Entity.Card.basic())),
                                  child: CardEditor(
                                    isCreating: true,
                                  ),
                                )));
                    if (cards != null)
                      context
                          .bloc<AddDeckBloc>()
                          .add(AddDeckEvent.updateCards(cards: cards));
                  },
                  child: Text(
                    "Let's create a new one!",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }

  Widget _cardsGrid(AddDeckState state) {
    return SliverGrid.count(
      crossAxisCount: 2,
      childAspectRatio: 0.8,
      children: List.generate(
        state.cardsList.length,
        (index) => InDeckCardView(
          key: ValueKey(state.cardsList[index].cardId),
          onTap: _isEditing
              ? () async {
                  final cards = await context.navigator.push(MaterialPageRoute(
                      builder: (BuildContext context) => BlocProvider(
                            create: (context) => AddCardBloc(
                              sourceCards: List.from(state.cardsList),
                              currentCardIndex: index,
                            ),
                            child: CardEditor(
                              isCreating: true,
                            ),
                          )));
                  if (cards != null) {
                    context
                        .bloc<AddDeckBloc>()
                        .add(AddDeckEvent.updateCards(cards: cards));
                  }
                }
              : () {},
          sourceCard: state.cardsList[index],
        ),
      ),
    );
  }
}
