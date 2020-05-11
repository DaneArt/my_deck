import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:meta/meta.dart';

import 'package:mydeck/core/icons/custom_icons_icons.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/bloc.dart';

import 'package:mydeck/features/my_deck/presentation/widgets/shared/buttons.dart';

class EndOfTrainView extends StatefulWidget {
  final bool isEndOfDeck;
  final int decksCount;
  final int successfullTrainedCardsCount;
  final Deck deck;
  final TrainBloc trainBloc;

  EndOfTrainView({
    Key key,
    @required this.isEndOfDeck,
    this.decksCount = 0,
    this.successfullTrainedCardsCount = 0,
    this.deck,
    @required this.trainBloc,
  }) : super(key: key);

  @override
  _EndOfTrainViewState createState() => _EndOfTrainViewState();
}

class _EndOfTrainViewState extends State<EndOfTrainView> {
  TrainBloc get _trainingBloc => widget.trainBloc;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Congratulations!',
          style: Theme.of(context).textTheme.headline4,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("You've successfully learned ",
                style: Theme.of(context).textTheme.body2),
            Text(
              widget.successfullTrainedCardsCount.toString(),
              style: Theme.of(context)
                  .textTheme
                  .body2
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text(' cards', style: Theme.of(context).textTheme.body2),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8),
        ),
        Container(
          height: 300,
          width: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FittedBox(
              fit: BoxFit.cover,
              child: widget.deck != null? Image.file(widget.deck.icon): FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:'https://zdshi.ru/media/2019/11/29/1264597622/1544343072.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('in ', style: Theme.of(context).textTheme.body2),
            _buildDeckText(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16),
        ),
        widget.isEndOfDeck
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconRoundButton(
                    backgroundColor: Colors.orange,
                    icon: Icon(
                      CustomIcons.arrow_back,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    onTap: () {
                      _trainingBloc.add(StopTrain());
                    },
                  ),
                  IconRoundButton(
                    backgroundColor: Colors.orange,
                    icon: Icon(
                      CustomIcons.arrow_forward,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    onTap: () {
                      _trainingBloc.add(StartNextDeck());
                    },
                  ),
                ],
              )
            : Align(
                alignment: Alignment.center,
                child: IconRoundButton(
                  backgroundColor: Colors.orange,
                  icon: Icon(
                    CustomIcons.arrow_back,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  onTap: () {
                    _trainingBloc.add(StopTrain());
                  },
                ),
              ),
        BlocListener<TrainBloc, TrainState>(
            listener: (context, state) {
              if (state is TrainStopped) {
                Navigator.pop(context, state.trainedCards);
              }
            },
            child: Container())
      ],
    );
  }

  Widget _buildDeckText() {
    if (widget.deck != null) {
      return Text(
        widget.deck.title,
        style: Theme.of(context)
            .textTheme
            .body2
            .copyWith(fontWeight: FontWeight.bold),
      );
    } else {
      return Row(
        children: <Widget>[
          Text(
            widget.decksCount.toString(),
            style: Theme.of(context)
                .textTheme
                .body2
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Text('decks', style: Theme.of(context).textTheme.body2),
        ],
      );
    }
  }
}
