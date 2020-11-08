import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydeck/blocs/add_deck/add_deck_bloc.dart';
import 'package:mydeck/cubits/md_content/md_content_cubit.dart';
import 'package:mydeck/models/entitites/mde_deck.dart';

import 'package:mydeck/theme/my_deck_theme.dart';
import 'package:mydeck/utils/widget_extensions.dart';
import 'package:mydeck/utils/custom_icons_icons.dart';
import 'package:mydeck/utils/dependency_injection.dart';
import 'package:mydeck/services/usecases/add_deck_usecase.dart';
import 'package:mydeck/services/usecases/delete_deck_usecase.dart';
import 'package:mydeck/services/usecases/save_deck_changes_usecase.dart';
import 'package:mydeck/screens/deck_editor/add_deck_page.dart';
import 'package:mydeck/widgets/md_image.dart';

import 'package:mydeck/services/usecases/upload_online_deck.dart';

class DeckCard extends StatefulWidget {
  final MDEDeck deck;
  final bool isEditing;
  final Function() onDelete;
  final Function(MDEDeck, MDEDeck) onUpdate;
  final IconButton iconButton;

  const DeckCard(
      {Key key,
      @required this.deck,
      @required this.isEditing,
      this.onDelete,
      this.onUpdate,
      @required IconButton iconButton})
      : assert(iconButton != null),
        this.iconButton = iconButton,
        super(key: key);

  @override
  _DeckCardState createState() => _DeckCardState();
}

class _DeckCardState extends State<DeckCard> {
  MDEDeck get deck => widget.deck;

  bool get _isDraft =>
      (deck is MDEDeck) && (!deck.title.isValid || !deck.avatar.isValid);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cardHeight =
        MediaQuery.of(context).orientation == Orientation.landscape
            ? size.height / 2
            : size.height / 5;

    return Padding(
        key: widget.key,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: InkWell(
          onTap: () async {
            final deckUpdate = await context.navigator.push(
              MaterialPageRoute(
                builder: (ctx) => BlocProvider<AddDeckBloc>(
                  create: (BuildContext context) => AddDeckBloc(
                      deck: deck,
                      uploadOnlineDeckUsecase:
                          sl.get<UploadOnlineDeckUsecase>(),
                      goal: AddDeckGoal.update,
                      status: AddDeckStatus.look,
                      addDeckUseCase: sl.get<AddDeckUseCase>(),
                      saveDeckChangesUsecase: sl.get<SaveDeckChangesUsecase>(),
                      deleteDeckUseCase: sl.get<DeleteDeckUseCase>()),
                  child: AddDeckPage(),
                ),
              ),
            );

            if (deckUpdate != null) {
              if (deckUpdate is MDEDeck) {
              //  widget.onUpdate(deck, deckUpdate);
              } else if (deckUpdate) {
                widget.onDelete();
              }
            }
          },
          child: Stack(
            children: <Widget>[
              Transform.scale(
                scale: 0.96,
                child: Card(
                  color: Colors.white,
                  elevation: 4,
                  child: Container(
                    height: cardHeight + 8,
                  ),
                ),
              ),
              _mainCardWidget(cardHeight),
            ],
          ),
        ));
  }

  Widget _mainCardWidget(double cardHeight) => Card(
        color: Colors.white,
        key: widget.key,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Container(
          height: cardHeight,
          width: double.infinity,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _imageWidget(cardHeight),
              _deckInfo(),
            ],
          ),
        ),
      );

  _imageWidget(double cardHeight) => ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
        child: BlocProvider<MDContentCubit<File>>(
          lazy:false,
          create: (context) => MDContentCubit<File>(),
          child: MDImage(
            image: deck.avatar.getOrCrash,
            height: cardHeight,
            width: cardHeight / 1.69,
          ),
        ),
      );

  _deckInfo() => Expanded(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //TopRow
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            deck.title.value
                                .fold((l) => l.failedValue, (r) => r),
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(fontWeight: FontWeight.bold),
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                            softWrap: false,
                          ),
                          Text(
                            deck.category.categoryName,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  widget.iconButton
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          CustomIcons.cards,
                          color: MyDeckTheme.of(context)
                              .textTheme
                              .subtitle1
                              .color
                              .withAlpha(96),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 2.0, left: 4.0),
                          child: Text(
                            deck.cardsCount.toString() ??
                                deck.cardsList.length.toString() ??
                                0,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          color: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .color
                              .withAlpha(96),
                        ),
                        Text(
                          deck.subscribersCount?.toString() ??
                              deck.subscribers?.length.toString() ??
                              0,
                          style: Theme.of(context).textTheme.subtitle1,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
