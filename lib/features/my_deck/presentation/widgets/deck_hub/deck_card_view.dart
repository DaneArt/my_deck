import 'dart:io';

import 'package:animations/animations.dart';
import 'package:mydeck/core/icons/custom_icons_icons.dart';
import 'package:mydeck/core/injection/dependency_injection.dart';
import 'package:mydeck/core/meta/my_deck_routes.dart';
import 'package:mydeck/features/my_deck/domain/entities/card_content.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/add_deck/add_deck_bloc.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/bloc.dart';
import 'package:mydeck/core/extensions/widget_extensions.dart';
import 'package:mydeck/features/my_deck/presentation/pages/add_deck_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/shared/triangle_clipper.dart';

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
    final size = MediaQuery.of(context).size;
    final cardHeight = size.height / 5;

    return Padding(
        key: widget.key,
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () async {
            final deckUpdate = await context.navigator.pushNamed(
                MyDeckRoutes.addDeck,
                arguments:
                    AddDeckArguments(deck: widget.deck, isEditing: true));
            if (deckUpdate != null) {
              if (deckUpdate is Deck) {
                context
                    .bloc<LibraryBloc>()
                    .add(LibraryEvent.updateDeck(deck: deckUpdate));
              } else if (deckUpdate) {
                context
                    .bloc<LibraryBloc>()
                    .add(LibraryEvent.deleteDeck(deck: deck));
              }
            }
          },
          child: Stack(
            children: <Widget>[
              Transform.scale(
                scale: 0.96,
                child: Card(
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
              //Category background
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.network(
                      'https://media.pri.org/s3fs-public/styles/story_main/public/story/images/math-1500720_1280%20cropped.jpg?itok=CHAvC2lu',
                      fit: BoxFit.cover),
                ),
              ),
              //Dark foreground
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black38,
                ),
              ),
              //Deck Avatar
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
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
                padding: const EdgeInsets.only(
                  left: 48,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(deck.title,
                            style: Theme.of(context)
                                .textTheme
                                .headline
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                        IconButton(
                          icon: Icon(Icons.star_border),
                          onPressed: () {
                            //TODO: implement deck subscription
                          },
                        ),
                      ],
                    ),
                    Transform.translate(
                      offset: Offset(0, -8),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Text('Category: ${deck.category.categoryName}',
                            style: Theme.of(context)
                                .textTheme
                                .body2
                                .copyWith(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, bottom: 8, right: 8),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(CustomIcons.subscribers_count),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('${deck.subscribersCount}',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text('${deck.cardsList.length}',
                                textAlign: TextAlign.right,
                                style: TextStyle(color: Colors.white)),
                          ),
                          Icon(CustomIcons.cards),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
/*

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
child: Container(
height: 150,
),
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
child: Container(
height: 150,
),
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
onTap: openContainer);*/
