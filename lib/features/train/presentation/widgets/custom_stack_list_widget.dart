import 'package:mydeck/features/my_deck/domain/entities/card.dart' as Entity;
import 'package:mydeck/features/my_deck/domain/entities/card_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/shared/card_content_widget.dart';
import 'package:mydeck/features/train/presentation/bloc/train/train_bloc.dart';

import 'dismissible_card_widget.dart';

class CustomStackList extends StatefulWidget {
  final List<Entity.Card> cards;
  final TrainBloc bloc;

  CustomStackList({
    Key key,
    this.cards,
    this.bloc,
  }) : super(key: key);

  @override
  _CustomStackListState createState() => _CustomStackListState();
}

class _CustomStackListState extends State<CustomStackList>
    with SingleTickerProviderStateMixin {
  _CustomStackListState();

  int _currentIndex = 0;
  double _cardOffsety = 5;

  List<Entity.Card> get _cards => widget.cards;
  Function(Guess) onGuessCallback;
  Function(Guess) onDismissCallback;

  @override
  void initState() {
    super.initState();

    onGuessCallback = (guess) {
      setState(() {
        if (guess == Guess.center) {
          _cardOffsety = 5;
        } else {
          _cardOffsety = 0;
        }
      });
    };

    onDismissCallback = (guess) {
      if (guess == Guess.right) {
        widget.bloc.add(ConfirmAnswer());
      } else if (guess == Guess.left) {
        widget.bloc.add(DeclineAnswer());
      }

      setState(() {
        _currentIndex++;
        _cardOffsety = 5;
      });
    };
  }

  Widget createWidgetFromContent(CardContent content, BuildContext context) =>
      content.map(
        noContent: (noContent) => Text(''),
        textContent: (textContent) => TextCardWidget(
          content: textContent,
          isEditing: false,
        ),
        imageContent: (imageContent) => ImageCardContentWidget(
          imageFile: imageContent.image,
          heigth: MediaQuery.of(context).size.height,
        ),
      );

  Widget _backgroundCard(double cardHeight, double cardWidth) {
    return Container(
      child: _currentIndex < _cards.length - 1
          ? Transform.translate(
              offset: Offset(0, _cardOffsety),
              child: Card(
                color: Colors.white,
                elevation: _cardOffsety != 5 ? 4 : 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    width: cardWidth,
                    height: cardHeight,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Question',
                            style: Theme.of(context).textTheme.headline6,
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Center(
                          child: createWidgetFromContent(
                              _cards[_currentIndex + 1].question, context),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          : Container(
              color: Colors.transparent,
              width: cardWidth,
              height: cardHeight,
              child: Center(
                child: Text('No items',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.black)),
              ),
            ),
    );
  }

  Widget _foregroundCard(double cardHeight, double cardWidth) {
    return Container(
      child: _currentIndex < _cards.length
          ? DismissibleCard(
              onGuess: onGuessCallback,
              onDismiss: onDismissCallback,
              card: _cards[_currentIndex],
              screenSize: MediaQuery.of(context).size,
            )
          : Container(
              width: cardWidth,
              height: cardHeight,
              color: Colors.transparent,
              child: Center(
                child: Text('No items',
                    style: Theme.of(context).textTheme.bodyText2),
              ),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print("Card offsety: $_cardOffsety");
    final cardWidth = MediaQuery.of(context).size.width * 0.9;
    final cardHeight = MediaQuery.of(context).size.height * 0.75;
    return Center(
        child: BlocListener<TrainBloc, TrainState>(
      listener: (context, state) {
        if (state is TrainInProgress) {
          _currentIndex = state.currentCardIndex;
        }
      },
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Transform.translate(
            offset: Offset(0, 5),
            child: Card(
              color: Colors.white,
              elevation: _cardOffsety != 5 && _currentIndex < _cards.length - 1
                  ? 2
                  : 0,
              child: Container(
                width: cardWidth,
                height: cardHeight,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: _currentIndex < _cards.length - 2
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'Question',
                                style: Theme.of(context).textTheme.headline6,
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Center(
                              child: createWidgetFromContent(
                                  _cards[_currentIndex + 2].question, context),
                            ),
                          ],
                        )
                      : Container(
                          width: cardWidth,
                          height: cardHeight,
                          color: Colors.transparent,
                        ),
                ),
              ),
            ),
          ),
          _backgroundCard(cardHeight, cardWidth),
          _foregroundCard(cardHeight, cardWidth)
        ],
      ),
    ));
  }
}
