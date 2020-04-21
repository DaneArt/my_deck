import 'dart:io';

import 'package:animations/animations.dart';
import 'package:mydeck/core/icons/custom_icons_icons.dart';
import 'package:mydeck/core/injection/dependency_injection.dart';
import 'package:mydeck/features/my_deck/domain/entities/card_content.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/add_deck/add_deck_bloc.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/bloc.dart';
import 'package:mydeck/features/my_deck/presentation/pages/add_deck_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeckCard extends StatefulWidget {
  final Deck deck;

  const DeckCard(this.deck, {Key key}) : super(key: key);

  @override
  _DeckCardState createState() => _DeckCardState();
}

class _DeckCardState extends State<DeckCard> {
  Widget getImageFile() =>
      Image.file(File(widget.deck.icon.path), fit: BoxFit.cover);

  Deck get deck => widget.deck;

  @override
  Widget build(BuildContext context) {
    return Card(
      key: widget.key,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      margin: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
      elevation: 4,
      child: OpenContainer(
        transitionType: ContainerTransitionType.fade,
        transitionDuration: kThemeAnimationDuration,
        openBuilder: (BuildContext _, VoidCallback openContainer) {
          return BlocProvider(
            create: (context) => sl.get<AddDeckBloc>(),
            child: AddDeckPage(
              arguments: AddDeckArguments(deck: widget.deck, isEditing: true),
            ),
          );
        },
        tappable: false,
        closedShape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        closedElevation: 4.0,
        closedBuilder: (BuildContext _, VoidCallback openContainer) {
          return InkWell(
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Transform.translate(
                      offset: Offset(0, 5),
                      child: Transform.scale(
                        scale: 1.04,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          elevation: 4,
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Transform.translate(
                      offset: Offset(0, 2),
                      child: Transform.scale(
                        scale: 1.04,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          elevation: 4,
                        ),
                      ),
                    ),
                  ),
                  Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: widget.deck.icon.path.isEmpty
                            ? Container(
                                color: Theme.of(context).accentColor,
                              )
                            : Image.file(deck.icon, fit: BoxFit.cover),
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Colors.black.withAlpha(120),
                              Colors.black.withAlpha(10),
                              Colors.black45
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          deck.title,
                          style: Theme.of(context)
                              .textTheme
                              .title
                              .copyWith(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        deck.title.isEmpty ||
                                deck.icon.path.isEmpty ||
                                deck.cardsList.any((c) =>
                                    c.question is NoContent ||
                                    c.answer is NoContent) ||
                                deck.cardsList.isEmpty
                            ? ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  color: Theme.of(context).primaryColor,
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                      'Draft',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context).textTheme.body1,
                                    ),
                                  ),
                                ),
                              )
                            : Container(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  widget.deck.cardsList.length.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(
                                    CustomIcons.cards,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  widget.deck.subscribersCount.toString(),
                                  style: TextStyle(color: Colors.white),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Icon(
                                      CustomIcons.subscribers_count,
                                      color: Colors.white,
                                      size: 18,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              onTap: openContainer);
        },
      ),
    );
  }
}
