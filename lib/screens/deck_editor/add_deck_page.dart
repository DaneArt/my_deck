import 'dart:io';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

import 'package:mydeck/blocs/add_deck/add_deck_bloc.dart';
import 'package:mydeck/blocs/card_editor/card_editor_bloc.dart';
import 'package:mydeck/cubits/md_content/md_content_cubit.dart';
import 'package:mydeck/models/dtos/deck_category.dart';
import 'package:mydeck/models/entitites/mde_card.dart';
import 'package:mydeck/models/entitites/mde_file.dart';
import 'package:mydeck/utils/custom_icons_icons.dart';
import 'package:mydeck/screens/card_editor/card_editor.dart';
import 'package:mydeck/utils/dependency_injection.dart';
import 'package:mydeck/generated/l10n.dart';
import 'package:mydeck/utils/md_constants.dart';
import 'package:mydeck/widgets/md_buttons.dart';
import 'package:mydeck/widgets/md_image.dart';
import 'package:mydeck/widgets/md_image_picker.dart';
import 'package:mydeck/widgets/md_loading_indicator.dart';
import 'package:mydeck/widgets/md_text.dart';

part './local_widgets/deck_widget.dart';
part './local_widgets/cards_grid_widget.dart';
part './local_widgets/privacy_widget.dart';
part './local_widgets/add_card_flat_button.dart';
part './local_widgets/category_picker.dart';
part './local_widgets/title_field_widget.dart';
part './local_widgets/description_field.dart';
part './local_widgets/in_deck_card_widget.dart';


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

  AddDeckBloc get  _bloc => context.read<AddDeckBloc>();

  bool get _showActions =>
      tabController.index == 1 &&
      _bloc.state.status == AddDeckStatus.edit &&
      !_bloc.state.isPending &&
      !_bloc.state.isLoading;

  

  @override
  void initState() {
    super.initState();

  

    tabController = TabController(
      length: 2,
      vsync: this,
    );
    tabController.addListener(() {
      FocusScope.of(context).unfocus();
      setState(() {});
    });
    if (_bloc.state.goal != AddDeckGoal.create &&
        _bloc.state.loadingFailureOrSuccess.isNone()) {
      _bloc.add(AddDeckEvent.initFromOnline());
    }
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
                (failure) => showToast(failure.message),
                (success) => showToast(
                    "Deck ${state.goal == AddDeckGoal.create ? "saved" : state.goal == AddDeckGoal.update ? "changed" : ""}")));
        state.deleteFailureOrSuccess.fold(
            () => null,
            (some) =>
                some.fold((failure) => showToast(failure.message), (success) {
                  showToast('Deck deleted');
                  Navigator.of(context).pop();
                }));
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: !state.isPending
                ? IconButton(
                    icon: Icon(
                        state.status == AddDeckStatus.edit
                            ? Icons.clear
                            : Icons.arrow_back,
                        color: Colors.white),
                    onPressed: () {
                      if (state.goal == AddDeckGoal.create) {
                        Navigator.of(context).pop();
                      } else if (state.status == AddDeckStatus.edit) {
                        _bloc.add(AddDeckEvent.undoEdits());
                      } else {
                        Navigator.of(context).pop(_bloc.buildDeckForSave());
                      }
                    },
                  )
                : null,
            actions: <Widget>[
              _showActions &&
                      state.loadingFailureOrSuccess.fold(
                          () => true, (a) => a.fold((l) => false, (r) => true))
                  ? _buildAddCardIcon(state)
                  : Container(),
              state.goal != AddDeckGoal.look &&
                      !state.isPending &&
                      !state.isLoading
                  ? IconButton(
                      icon: Icon(state.status == AddDeckStatus.look
                          ? Icons.edit
                          : Icons.check),
                      onPressed: () {
                        if (state.status == AddDeckStatus.edit) {
                          _bloc.add(AddDeckEvent.saveChanges());
                        } else {
                          _bloc.add(AddDeckEvent.switchEditStatus());
                        }
                      },
                    )
                  : Container(),
              state.isPending
                  ? Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 16),
                      child: CircularProgressIndicator())
                  : Container(),
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
                            '${state.cardsList?.length != null && state.cardsList?.length != 0 ? state.cardsList?.length : state.freezedDeck.cardsCount ?? 0}')
                      ],
                    )),
              ],
              controller: tabController,
            ),
          ),
          body: WillPopScope(
            onWillPop: () async {
              if (state.goal != AddDeckGoal.look) {
                Navigator.of(context).pop(_bloc.buildDeckForSave());
              }
              return false;
            },
            child: DefaultTabController(
              length: 2, // This is the number of tabs.
              child: TabBarView(controller: tabController, children: [
                _DeckWidget(addDeckBloc: _bloc,),
                _CardsPage(),
              ]),
            ),
          ),
        );
      },
    );
  }

  Widget _buildAddCardIcon(AddDeckState state) {
    return IconButton(
      icon: Icon(Icons.add, color: Colors.white),
      onPressed: () async {
        final cardsEditorResult =
            await Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext ctx) => BlocProvider(
                      create: (c) => CardEditorBloc(
                          currentCardIndex: state.cardsList.length,
                          sourceCards: List.from(_bloc.state.cardsList)
                            ..add(MDECard.basic()),
                          status: state.status,
                          goal: state.goal),
                      child: CardEditor(),
                    )));

        if (cardsEditorResult != null)
          _bloc.add(AddDeckEvent.updateCards(cards: cardsEditorResult));
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

class _CardsPage extends StatefulWidget {
  _CardsPage({Key key}) : super(key: key);

  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<_CardsPage> {

  

  AddDeckBloc get _bloc => context.read<AddDeckBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddDeckBloc, AddDeckState>(
      builder: (context, state) {
        if (state.isLoading) {
          return MDLoadingIndicator();
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
                              _bloc.add(AddDeckEvent.initFromOnline());
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
                onPressed: !state.isPending
                    ? () async {
                        final cards =
                            await Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => BlocProvider(
                                      create: (context) => CardEditorBloc(
                                          currentCardIndex:
                                              state.cardsList.length,
                                          sourceCards:
                                              List.from(state.cardsList)
                                                ..add(MDECard.basic()),
                                          status: state.status,
                                          goal: state.goal),
                                      child: CardEditor(),
                                    )));
                        if (cards != null)
                          _bloc.add(AddDeckEvent.updateCards(cards: cards));
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
        (index) => _InDeckCardWidget(
 key:ObjectKey(state.cardsList[index].question),
          onTap: !state.isPending? () async {
            final cardsEditorResult =
                await Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => BlocProvider(
                          create: (context) => CardEditorBloc(
                            sourceCards: List.from(state.cardsList),
                            currentCardIndex: index,
                            status: state.status,
                            goal: state.goal,
                          ),
                          child: CardEditor(),
                        )));

       
            if (cardsEditorResult != null) {
              _bloc.add(AddDeckEvent.updateCards(cards: cardsEditorResult));
            }
          }:null,
          sourceCard: state.cardsList[index],
        ),
      ),
    );
  }
}
