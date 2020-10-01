import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

import 'package:mydeck/blocs/add_deck/add_deck_bloc.dart';
import 'package:mydeck/blocs/card_editor/card_editor_bloc.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/utils/custom_icons_icons.dart';
import 'package:mydeck/screens/deck_editor/card_editor.dart';
import 'package:mydeck/screens/deck_editor/local_widgets/category_picker.dart';
import 'package:mydeck/screens/deck_editor/local_widgets/in_deck_card_view.dart';
import 'package:mydeck/screens/deck_editor/local_widgets/image_picker_widget.dart';
import 'package:mydeck/models/entitites/card.dart' as Entity;
import 'package:mydeck/utils/dependency_injection.dart';
import 'package:mydeck/widgets/buttons.dart';
import 'package:mydeck/generated/l10n.dart';

class AddDeckPage extends StatelessWidget {
  const AddDeckPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AddDeckTabView();
  }
}

class AddDeckTabView extends StatefulWidget {
  const AddDeckTabView({
    Key key,
  }) : super(key: key);

  @override
  _AddDeckTabViewState createState() => _AddDeckTabViewState();
}

class _AddDeckTabViewState extends State<AddDeckTabView>
    with TickerProviderStateMixin<AddDeckTabView>, WidgetsBindingObserver {
  TabController tabController;

  bool _showActions = false;

  AddDeckBloc get bloc => BlocProvider.of<AddDeckBloc>(context);

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
        _showActions = tabController.index == 1 &&
            bloc.state.status == AddDeckStatus.edit &&
            !bloc.state.isSaving &&
            !bloc.state.isLoading;
      });
    });
    if (bloc.state.goal != AddDeckGoal.create)
      bloc.add(AddDeckEvent.initFromOnline());
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddDeckBloc, AddDeckState>(
      listener: (context, state) {
        state.savingFailureOrSuccess.fold(
            () => null,
            (some) => some.fold(
                (failure) => showToast("Check internet connection and retry"),
                (success) => showToast(
                    "Deck ${state.goal == AddDeckGoal.create ? "" : state.goal == AddDeckGoal.update ? "changed" : ""} saved")));
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                  state.status == AddDeckStatus.edit
                      ? Icons.clear
                      : Icons.arrow_back,
                  color: Colors.white),
              onPressed: () {
                if (state.goal == AddDeckGoal.create) {
                  Navigator.of(context).pop();
                } else if (state.status == AddDeckStatus.edit) {
                  bloc.add(AddDeckEvent.switchEditStatus());
                  setState(() {});
                } else {
                  Navigator.of(context).pop(bloc.buildDeckForSave());
                }
              },
            ),
            actions: <Widget>[
              state.goal != AddDeckGoal.look &&
                      !state.isSaving &&
                      !state.isLoading
                  ? IconButton(
                      icon: Icon(state.status == AddDeckStatus.look
                          ? Icons.edit
                          : Icons.check),
                      onPressed: () {
                        if (state.status == AddDeckStatus.edit) {
                          bloc.add(AddDeckEvent.saveChanges());
                        } else {
                          bloc.add(AddDeckEvent.switchEditStatus());
                        }

                        setState(() {
                          _showActions = tabController.index == 1 &&
                              state.status == AddDeckStatus.look;
                        });
                      },
                    )
                  : Container(),
              state.isSaving
                  ? Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 16),
                      child: CircularProgressIndicator())
                  : Container(),
              _showActions && state.loadingFailureOrSuccess.isNone()
                  ? IconButton(
                      icon: Icon(Icons.add, color: Colors.white),
                      onPressed: () async {
                        final cards =
                            await Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext ctx) => BlocProvider(
                                      create: (c) => CardEditorBloc(
                                          currentCardIndex:
                                              state.cardsList.length,
                                          sourceCards:
                                              List.from(bloc.state.cardsList)
                                                ..add(Entity.Card.basic())),
                                      child: CardEditorPage(
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
                            '${state.cardsList?.length != null && state.cardsList?.length != 0 ? state.cardsList?.length : bloc.deck.cardsCount ?? 0}')
                      ],
                    )),
              ],
              controller: tabController,
            ),
          ),
          body: WillPopScope(
            onWillPop: () async {
              if (state.goal != AddDeckGoal.look) {
                Navigator.of(context).pop(bloc.buildDeckForSave());
              }
              return false;
            },
            child: DefaultTabController(
              length: 2, // This is the number of tabs.
              child: TabBarView(controller: tabController, children: [
                _DeckPage(),
                _CardsPage(),
              ]),
            ),
          ),
        );
      },
    );
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
}

class _DeckPage extends StatefulWidget {
  _DeckPage({
    Key key,
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
    return BlocBuilder<AddDeckBloc, AddDeckState>(
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
                state.goal == AddDeckGoal.update
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
                  enabled:
                      state.status == AddDeckStatus.edit && !state.isSaving),
            ),
            Flexible(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 16.0,
                    bottom:
                        (state.isSaving || state.status == AddDeckStatus.look)
                            ? 120
                            : 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: MDRoundedButton(
              icon: Icon(state.isShared ? Icons.lock_open : Icons.lock),
              onPressed: state.status == AddDeckStatus.edit && !state.isSaving
                  ? () {
                      bloc.add(AddDeckEvent.changePrivacy());
                    }
                  : null,
              title: Text('PRIVACY'),
            ),
          ),
          state.status == AddDeckStatus.look
              ? Padding(
                  padding: const EdgeInsets.only(right: 64.0),
                  child: MDRoundedButton(
                    icon: Icon(CustomIcons.dumbbell),
                    onPressed: () {},
                    title: Text('TRAIN'),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 16.0, right: 64),
                  child: Column(
                    children: <Widget>[
                      Text('Quick train'),
                      Checkbox(
                          value: state.availableQuickTrain,
                          onChanged: !state.isSaving
                              ? (value) {
                                  bloc.add(
                                      AddDeckEvent.quickTrainStateChanged());
                                }
                              : null),
                    ],
                  ),
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
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              '$BASE_URL_DEV/mydeckapi/media/Media/${state.author.avatar}'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  Widget descriptionWidget(AddDeckState state) =>
      state.status == AddDeckStatus.edit && !state.isSaving
          ? TextFormField(
              key: _descriptionFieldKey,
              autovalidate: true,
              initialValue:
                  state.description.value.fold((l) => l.failedValue, (r) => r),
              textInputAction: TextInputAction.done,
              style: Theme.of(context).textTheme.bodyText1,
              onChanged: (input) =>
                  bloc.add(AddDeckEvent.descriptionChanged(input)),
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                  hintText: S.of(context).editor_description_enter,
                  hintMaxLines: 2,
                  alignLabelWithHint: true,
                  border: UnderlineInputBorder(),
                  labelText: S.of(context).editor_description,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                  hoverColor: Theme.of(context).accentColor,
                  labelStyle: Theme.of(context).textTheme.subtitle2),
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
                  style: Theme.of(context).textTheme.headline6,
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
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            );

  Widget titleWidget(AddDeckState state) =>
      state.status == AddDeckStatus.edit && !state.isSaving
          ? TextFormField(
              key: _titleFieldKey,
              autovalidate: true,
              initialValue:
                  state.title.value.fold((l) => l.failedValue, (r) => r),
              onChanged: (input) {
                bloc.add(AddDeckEvent.titleChanged(input));
              },
              style: Theme.of(context).textTheme.bodyText1,
              textInputAction: TextInputAction.done,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                hintText: S.of(context).editor_title_enter,
                labelText: S.of(context).editor_title + '*',
                labelStyle: Theme.of(context).textTheme.subtitle2,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 4, vertical: 8),
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
                  style: Theme.of(context).textTheme.headline6,
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
          state.status == AddDeckStatus.edit && !state.isSaving
              ? CategoryPicker(
                  onChanged: (value) {
                    bloc.add(AddDeckEvent.categoryChanged(value));
                  },
                  baseCategory: state.category,
                )
              : Text(state.category.categoryName),
        ],
      );
}

class _CardsPage extends StatefulWidget {
  _CardsPage({Key key}) : super(key: key);

  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<_CardsPage> {
  @override
  void initState() {
    super.initState();
  }

  AddDeckBloc get bloc => BlocProvider.of<AddDeckBloc>(context);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddDeckBloc, AddDeckState>(
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
        state.status == AddDeckStatus.edit
            ? RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                color: Theme.of(context).accentColor,
                onPressed: !state.isSaving
                    ? () async {
                        final cards =
                            await Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => BlocProvider(
                                      create: (context) => CardEditorBloc(
                                          currentCardIndex:
                                              state.cardsList.length,
                                          sourceCards:
                                              List.from(state.cardsList)
                                                ..add(Entity.Card.basic())),
                                      child: CardEditorPage(
                                        isCreating: true,
                                      ),
                                    )));
                        if (cards != null)
                          bloc.add(AddDeckEvent.updateCards(cards: cards));
                      }
                    : null,
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
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.8,
      children: List.generate(
        state.cardsList.length,
        (index) => InDeckCardView(
          key: ValueKey(state.cardsList[index].id),
          onTap: state.status == AddDeckStatus.edit && !state.isSaving
              ? () async {
                  final cards =
                      await Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => BlocProvider(
                                create: (context) => CardEditorBloc(
                                  sourceCards: List.from(state.cardsList),
                                  currentCardIndex: index,
                                ),
                                child: CardEditorPage(
                                    isCreating:
                                        state.status == AddDeckStatus.edit),
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
