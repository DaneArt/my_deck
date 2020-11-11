import 'package:mydeck/blocs/train/train_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydeck/models/entitites/mde_card.dart';
import 'package:mydeck/models/entitites/mde_file.dart';
import 'package:mydeck/utils/md_constants.dart';

import '../../../features/train/presentation/widgets/../../../../screens/train/local_widgets/dismissible_card_widget.dart';

class CustomStackList extends StatefulWidget {
  final List<MDECard> cards;
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

  List<MDECard> get _cards => widget.cards;
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
        // widget.bloc.add(ConfirmAnswer());
      } else if (guess == Guess.left) {
        // widget.bloc.add(DeclineAnswer());
      }

      setState(() {
        _currentIndex++;
        _cardOffsety = 5;
      });
    };
  }

  Widget createWidgetFromContent(MDEFile content, BuildContext context) =>
      Container();
  // content is ImageFile
  //     ? ImageCardContentWidget(
  //         imageFile: content,
  //         heigth: MediaQuery.of(context).size.height,
  //       )
  //     : TextCardWidget(
  //         content: content,
  //         isEditing: false,
  //       );

  Widget _backgroundCard(double cardHeight, double cardWidth) {
    return Container(
      child: _currentIndex < _cards.length - 1
          ? Transform.translate(
              offset: Offset(0, _cardOffsety),
              child: Card(
                color: Colors.white,
                elevation: _cardOffsety != 5 ? 4 : 2,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Constants.smallBorderRadius),
                  child: Container(
                    width: cardWidth,
                    height: cardHeight,
                    color: Colors.white,
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Question',
                            style: Theme.of(context).textTheme.headline6,
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
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
        // if (state is TrainInProgress) {
        //   _currentIndex = state.currentCardIndex;
        // }
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
                  borderRadius:const BorderRadius.all(Constants.smallBorderRadius),
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
