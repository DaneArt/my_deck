import 'package:mydeck/features/my_deck/domain/entities/card.dart'
    as Entity;
import 'package:mydeck/features/my_deck/domain/entities/card_content.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  double _trueAnswerOpacity = 0;
  double _falseAnswerOpacity = 0;

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
          _trueAnswerOpacity = 0;
          _falseAnswerOpacity = 0;
        } else {
          _cardOffsety = 0;
          if (guess == Guess.right) {
            _trueAnswerOpacity = 1;
            _falseAnswerOpacity = 0;
          } else {
            _trueAnswerOpacity = 0;
            _falseAnswerOpacity = 1;
          }
        }
      });
    };

    onDismissCallback = (guess) {
      _trueAnswerOpacity = 0;
      _falseAnswerOpacity = 0;
      if (guess == Guess.right) {
        widget.bloc.add(ConfirmAnswer());
      } else if (guess == Guess.left) {
        widget.bloc.add(DeclineAnswer());
      }

      setState(() {
        _currentIndex++;
      });
    };
  }

  Widget createWidgetFromContent(CardContent content) => content.map(
      noContent: (noContent) => Text(''),
      textContent: (textContent) => Text(textContent.text,
          style: TextStyle(color: Colors.black, fontSize: 18)),
      imageContent: (imageContent) => Image.file(
            imageContent.image,
            fit: BoxFit.contain,
          ));

  @override
  Widget build(BuildContext context) {
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
              elevation: _cardOffsety != 5 ? 2 : 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.75,
                  color: _currentIndex < _cards.length - 2
                      ? Colors.white
                      : Color.fromRGBO(0, 0, 0, 0),
                ),
              ),
            ),
          ),
          Container(
            child: _currentIndex < _cards.length - 1
                ? Transform.translate(
                    offset: Offset(0, _cardOffsety),
                    child: Card(
                      elevation: _cardOffsety != 5 ? 4 : 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.75,
                          color: Colors.white,
                          child: Center(
                            child: createWidgetFromContent(
                                _cards[_currentIndex + 1].question),
                          ),
                        ),
                      ),
                    ),
                  )
                : Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.75,
                    child: Center(
                      child: Text('No items',
                          style: Theme.of(context).textTheme.title),
                    ),
                  ),
          ),
          Container(
            child: _currentIndex < _cards.length
                ? DismissibleCard(
                    onGuess: onGuessCallback,
                    onDismiss: onDismissCallback,
                    card: _cards[_currentIndex],
                    screenSize: MediaQuery.of(context).size,
                  )
                : Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.75,
                    child: Center(
                      child: Text('No items',
                          style: Theme.of(context).textTheme.title),
                    ),
                  ),
          ),
        ],
      ),
    ));
  }
}
