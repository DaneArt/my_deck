import 'dart:io';

import 'package:animations/animations.dart';
import 'package:mydeck/core/icons/custom_icons_icons.dart';
import 'package:mydeck/core/injection/dependency_injection.dart';
import 'package:mydeck/core/meta/my_deck_routes.dart';
import 'package:mydeck/features/my_deck/domain/entities/card_content.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/domain/usecases/add_deck_usecase.dart';
import 'package:mydeck/features/my_deck/domain/usecases/delete_deck_usecase.dart';
import 'package:mydeck/features/my_deck/domain/usecases/save_deck_changes_usecase.dart';
import 'package:mydeck/features/my_deck/domain/usecases/upload_online_deck.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/add_deck/add_deck_bloc.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/bloc.dart';
import 'package:mydeck/core/extensions/widget_extensions.dart';
import 'package:mydeck/features/my_deck/presentation/pages/add_deck_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/shared/triangle_clipper.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_service.dart';

class DeckCard extends StatefulWidget {
  final Deck deck;
  final bool isEditing;
  final Function() onDelete;
  final Function(Deck, Deck) onUpdate;

  const DeckCard(
      {Key key,
      @required this.deck,
      @required this.isEditing,
      @required this.onDelete,
      @required this.onUpdate})
      : super(key: key);

  @override
  _DeckCardState createState() => _DeckCardState();
}

class _DeckCardState extends State<DeckCard> {
  Widget getImageFile() =>
      Image.file(File(widget.deck.icon.path), fit: BoxFit.cover);

  Deck get deck => widget.deck;

  bool get _isDraft =>
      (deck is DeckLibrary) &&
      (deck.title.length < 6 ||
          !deck.icon.existsSync() ||
          (deck as DeckLibrary)
              .cardsList
              .any((c) => c.answer is NoContent || c.question is NoContent));

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cardHeight = size.height / 5;

    return Padding(
        key: widget.key,
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () async {
            final deckUpdate = await context.navigator.push(MaterialPageRoute(
                builder: (context) => BlocProvider(
                      create: (context) => AddDeckBloc(
                          uploadOnlineDeckUsecase:
                              sl.get<UploadOnlineDeckUsecase>(),
                          addDeckUseCase: sl.get<AddDeckUseCase>(),
                          deck: deck is DeckLibrary
                              ? (deck as DeckLibrary).copyWith(
                                  cardsList: List.from(
                                      (deck as DeckLibrary).cardsList))
                              : deck,
                          deleteDeckUsecase: sl.get<DeleteDeckUseCase>(),
                          saveDeckChangesUsecase:
                              sl.get<SaveDeckChangesUsecase>(),
                          goal: deck is DeckOnline
                              ? AddDeckGoal.lookup
                              : AddDeckGoal.edit),
                      child: AddDeckPage(
                        goal: deck is DeckOnline
                            ? AddDeckGoal.lookup
                            : AddDeckGoal.edit,
                      ),
                    )));

            if (deckUpdate != null) {
              if (deckUpdate is Deck) {
                widget.onUpdate(deck, deckUpdate);
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
          child: Stack(
            children: <Widget>[
              //Deck Avatar
              ClipRRect(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),topLeft: Radius.circular(8)),
                child: ClipPath(
                  clipper: TriangleClipper(),
                  child: Container(
                    height: double.infinity,
                    width: cardHeight * 2 / 3,
                    child: Image.file(deck.icon, fit: BoxFit.cover),
                  ),
                ),
              ),
              //Top row
              Padding(
                padding:  EdgeInsets.only(
                  left: deck.icon.existsSync() ? 32:8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(deck.title.isNotEmpty? deck.title:'No title',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(fontWeight: FontWeight.bold).copyWith(color:Colors.black)),
                        IconButton(
                          icon: _isDraft
                              ? Icon(
                                  Icons.warning,
                                  color: Colors.yellow,
                                )
                              : Icon(deck.author.userId ==
                                      UserService.currentUser.userId
                                  ? deck.isPrivate
                                      ? Icons.lock
                                      : Icons.lock_open
                                  : Icons.star_border, color: Colors.black38,),
                          onPressed: () {
                            //TODO: implement deck subscription
                          },
                        ),
                      ],
                    ),
                    Transform.translate(
                      offset: Offset(0, -8),
                      child:  Padding(
                        padding:  EdgeInsets.only(left:deck.icon.existsSync()? 8.0:0),
                        child: Text('Category: ${deck.category.categoryName}',
                              style: Theme.of(context).textTheme.bodyText2.copyWith(color:Colors.black) ),
                      ),
                      ),

                  ],
                ),
              ),
              //Bottom row
              Padding(
                padding:  EdgeInsets.only(left: deck.icon.existsSync()? cardHeight*0.75:8, bottom: 8, right: 8),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(CustomIcons.subscribers_count,color: Colors.black,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                                '${deck is DeckOnline ? (deck as DeckOnline).subscribersCount : (deck as DeckLibrary).subscribers.length}',
                              style: TextStyle(color: Colors.black),
                                ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                                '${deck is DeckOnline ? (deck as DeckOnline).cardsCount : (deck as DeckLibrary).cardsList.length}',
                                textAlign: TextAlign.right,
                              style: TextStyle(color: Colors.black),
                                ),
                          ),
                          Icon(CustomIcons.cards,color: Colors.black,),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
