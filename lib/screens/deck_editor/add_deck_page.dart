import 'package:flutter_bloc/flutter_bloc.dart' as blc;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';

import 'package:mydeck/blocs/add_card/add_card_bloc.dart';
import 'package:mydeck/blocs/add_deck/add_deck_bloc.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/utils/custom_icons_icons.dart';
import 'package:mydeck/screens/deck_editor/card_editor.dart';
import 'package:mydeck/screens/deck_editor/local_widgets/category_picker.dart';
import 'package:mydeck/screens/deck_editor/local_widgets/in_deck_card_view.dart';
import 'package:mydeck/screens/deck_editor/local_widgets/image_picker_widget.dart';
import 'package:mydeck/models/entitites/card.dart' as Entity;
import 'package:mydeck/widgets/buttons.dart';
import 'package:mydeck/generated/l10n.dart';

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

  AddDeckGoal get goal => widget.goal;

  bool _showActions = false;

  AddDeckBloc get bloc => blc.BlocProvider.of<AddDeckBloc>(context);

  @override
  void initState() {
    super.initState();

    tabController = TabController(
      length: 2,
      vsync: this,
    );
    tabController.addListener(() {
      FocusScope.of(context).unfocus();
      setState(() {
        _showActions = tabController.index == 1 && goal != AddDeckGoal.lookup;
      });
    });
    if (goal != AddDeckGoal.create) bloc.add(AddDeckEvent.initFromOnline());
  }

  @override
  void dispose() {
    tabController.dispose();
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
                title: Text(S.of(context).editor_cant_save,
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
    return ColorfulSafeArea(
      color: Theme.of(context).primaryColorDark,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
                goal != AddDeckGoal.lookup ? Icons.clear : Icons.arrow_back,
                color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: <Widget>[
            _showActions && bloc.state.loadingFailureOrSuccess.isNone()
                ? IconButton(
                    icon: Icon(Icons.add, color: Colors.white),
                    onPressed: () async {
                      final cards =
                          await Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext ctx) => blc.BlocProvider(
                                    create: (c) => AddCardBloc(
                                        currentCardIndex:
                                            bloc.state.cardsList.length,
                                        sourceCards:
                                            List.from(bloc.state.cardsList)
                                              ..add(Entity.Card.basic())),
                                    child: CardEditor(
                                      isCreating: true,
                                    ),
                                  )));
                      if (cards != null)
                        bloc.add(AddDeckEvent.updateCards(cards: cards));
                    },
                  )
                : Container()
          ],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white.withAlpha(125),
            tabs: [
              Tab(
                text: S.of(context).meta_deck,
                icon: Icon(
                  CustomIcons.card_bulleted,
                ),
              ),
              Tab(
                  text: S.of(context).meta_cards,
                  icon: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        CustomIcons.cards,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                          '${bloc.state.cardsList?.length != null && bloc.state.cardsList?.length != 0 ? bloc.state.cardsList?.length : bloc.deck.cardsCount ?? 0}')
                    ],
                  )),
            ],
            controller: tabController,
          ),
        ),
        body: DefaultTabController(
          length: 2, // This is the number of tabs.
          child: TabBarView(controller: tabController, children: [
            _DeckPage(goal: goal),
            _CardsPage(goal: goal),
          ]),
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

  AddDeckBloc get bloc => context.bloc<AddDeckBloc>();

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
    return blc.BlocBuilder<AddDeckBloc, AddDeckState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(child: CircularProgressIndicator());
        } else {
          return state.loadingFailureOrSuccess.fold(
            () => deckWidget(state),
            (result) => result.fold(
              (failure) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Failure'),
                    MaterialButton(
                      child: Text('Retry'),
                      onPressed: () {
                        bloc.add(AddDeckEvent.initFromOnline());
                      },
                    ),
                  ],
                ),
              ),
              (success) => deckWidget(state),
            ),
          );
        }
      },
    );
  }

  Widget deckWidget(AddDeckState state) => SingleChildScrollView(
        child: Container(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(
                  height: 16,
                ),
                deckOverviewWidget(state),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      buttonsWidget(state),
                      SizedBox(
                        height: 24,
                      ),
                      categoryWidget(state),
                      authorWidget(state),
                    ],
                  ),
                ),
                goal == AddDeckGoal.edit
                    ? MaterialButton(
                        minWidth: double.infinity,
                        child: Text(
                          'DELETE DECK',
                          style: TextStyle(color: Colors.red),
                        ),
                        onPressed: () {},
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      );

  Widget deckOverviewWidget(AddDeckState state) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              flex: 2,
              child: ImagePickerWidget(
                key: Key(state.avatar.value.fold(
                    (l) => l.failedValue.uniqueId.getOrCrash,
                    (r) => r.uniqueId.getOrCrash)),
                defaultAvatar: state.avatar,
                onImagePicked: (ImageFile image) {
                  bloc.add(AddDeckEvent.avatarChanged(image));
                },
              ),
            ),
            Flexible(
              flex: 3,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Flexible(
                      child: titleWidget(state),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    descriptionWidget(state)
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  Widget buttonsWidget(AddDeckState state) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          MDRoundedButton(
            icon: Icon(state.isShared ? Icons.lock_open : Icons.lock),
            onPressed: () {
              bloc.add(AddDeckEvent.changePrivacy());
            },
            title: Text('PRIVACY'),
          ),
          Row(
            children: <Widget>[
              MDRoundedButton(
                icon: Icon(CustomIcons.dumbbell),
                onPressed: () {},
                title: Text('TRAIN'),
              ),
              SizedBox(
                width: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Column(
                  children: <Widget>[
                    Text('Quick train'),
                    Checkbox(
                        value: state.availableQuickTrain,
                        onChanged: (value) {
                          bloc.add(AddDeckEvent.quickTrainStateChanged());
                        }),
                  ],
                ),
              )
            ],
          ),
        ],
      );

  Widget authorWidget(AddDeckState state) => Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Author', style: Theme.of(context).textTheme.headline5),
            Row(
              children: <Widget>[
                Text(state.author.username),
                SizedBox(
                  width: 8,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                    child: Image.network(state.author.avatarPath),
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  Widget descriptionWidget(AddDeckState state) => goal != AddDeckGoal.lookup
      ? TextFormField(
          key: _descriptionFieldKey,
          autovalidate: true,
          initialValue:
              state.description.value.fold((l) => l.failedValue, (r) => r),
          textInputAction: TextInputAction.done,
          onChanged: (input) =>
              bloc.add(AddDeckEvent.descriptionChanged(input)),
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            hintText: S.of(context).editor_description_enter,
            hintMaxLines: 2,
            filled: true,
            alignLabelWithHint: true,
            border: UnderlineInputBorder(),
            labelText: S.of(context).editor_description,
            contentPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
            hoverColor: Theme.of(context).accentColor,
            labelStyle: Theme.of(context).textTheme.subtitle1,
          ),
          inputFormatters: [
            new LengthLimitingTextInputFormatter(_maxDescriptionCount),
          ],
          maxLines: 3,
          maxLength: _maxDescriptionCount,
        )
      : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '${S.of(context).editor_description}:',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
            ),
            Text(
              state.description.value.fold(
                  (l) => l.failedValue.isNotEmpty
                      ? l.failedValue
                      : S.of(context).editor_no_description,
                  (r) => r),
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        );

  Widget titleWidget(AddDeckState state) => goal != AddDeckGoal.lookup
      ? TextFormField(
          key: _titleFieldKey,
          autovalidate: true,
          initialValue: state.title.value.fold((l) => l.failedValue, (r) => r),
          onChanged: (input) {
            bloc.add(AddDeckEvent.titleChanged(input));
          },
          textInputAction: TextInputAction.done,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            hintText: S.of(context).editor_title_enter,
            filled: true,
            labelText: S.of(context).editor_title + '*',
            labelStyle: Theme.of(context).textTheme.subtitle1,
            contentPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
          ),
          inputFormatters: [
            LengthLimitingTextInputFormatter(_maxTitleCount),
          ],
          maxLines: null,
          maxLength: _maxTitleCount,
        )
      : Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '${S.of(context).editor_title}:',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Padding(
              padding: const EdgeInsets.all(4),
            ),
            Text(
              state.title.value.fold(
                  (l) => l.failedValue.isNotEmpty
                      ? l.failedValue
                      : S.of(context).editor_no_title,
                  (r) => r),
              style: Theme.of(context).textTheme.subtitle1,
              maxLines: null,
              softWrap: false,
            ),
          ],
        );

  Widget categoryWidget(AddDeckState state) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            S.of(context).editor_category,
            style: Theme.of(context).textTheme.headline5,
          ),
          CategoryPicker(
            onChanged: (value) {
              bloc.add(AddDeckEvent.categoryChanged(value));
            },
            baseCategory: state.category,
          ),
        ],
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

  AddDeckBloc get bloc => blc.BlocProvider.of<AddDeckBloc>(context);
  @override
  Widget build(BuildContext context) {
    return blc.BlocBuilder<AddDeckBloc, AddDeckState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return state.loadingFailureOrSuccess.fold(
              () => state.cardsList.isNotEmpty
                  ? _cardsGrid(state)
                  : _noCardsWidget(state),
              (result) => result.fold(
                    (failure) => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Failure'),
                          MaterialButton(
                            child: Text('Retry'),
                            onPressed: () {
                              bloc.add(AddDeckEvent.initFromOnline());
                            },
                          ),
                        ],
                      ),
                    ),
                    (success) => state.cardsList.isNotEmpty
                        ? _cardsGrid(state)
                        : _noCardsWidget(state),
                  ));
        }
      },
    );
  }

  Widget _noCardsWidget(AddDeckState state) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(S.of(context).editor_cards_empty,
            style: Theme.of(context).textTheme.bodyText1),
        _isEditing
            ? RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                color: Theme.of(context).accentColor,
                onPressed: () async {
                  final cards =
                      await Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => blc.BlocProvider(
                                create: (context) => AddCardBloc(
                                    currentCardIndex: state.cardsList.length,
                                    sourceCards: List.from(state.cardsList)
                                      ..add(Entity.Card.basic())),
                                child: CardEditor(
                                  isCreating: true,
                                ),
                              )));
                  if (cards != null)
                    bloc.add(AddDeckEvent.updateCards(cards: cards));
                },
                child: Text(
                  S.of(context).editor_lets_create_card,
                  style: TextStyle(color: Colors.white),
                ),
              )
            : Container(),
      ],
    );
  }

  Widget _cardsGrid(AddDeckState state) {
    return SliverGrid.count(
      crossAxisCount: 2,
      childAspectRatio: 0.8,
      children: List.generate(
        state.cardsList.length,
        (index) => InDeckCardView(
          key: ValueKey(state.cardsList[index].id),
          onTap: _isEditing
              ? () async {
                  final cards =
                      await Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => blc.BlocProvider(
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
