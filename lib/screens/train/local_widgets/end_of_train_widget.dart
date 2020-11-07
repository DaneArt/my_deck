import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/models/entitites/mde_deck.dart';

import 'package:mydeck/utils/custom_icons_icons.dart';
import 'package:mydeck/blocs/train/train_bloc.dart';
import 'package:mydeck/widgets/md_buttons.dart';

class EndOfTrainView extends StatefulWidget {
  final bool isEndOfDeck;
  final int decksCount;
  final int successfullTrainedCardsCount;
  final MDEDeck deck;
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
                style: Theme.of(context).textTheme.bodyText2),
            Text(
              widget.successfullTrainedCardsCount.toString(),
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text(' cards', style: Theme.of(context).textTheme.bodyText2),
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
            child: FittedBox(fit: BoxFit.cover, child: Container()),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('in ', style: Theme.of(context).textTheme.bodyText2),
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
                  MDIconRoundButton(
                    backgroundColor: Colors.orange,
                    icon: Icon(
                      CustomIcons.arrow_back,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    onTap: () {
                      _trainingBloc.add(StopTrain());
                    },
                  ),
                  MDIconRoundButton(
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
                child: MDIconRoundButton(
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
              // if (state is TrainStopped) {
              //   Navigator.pop(context, state.trainedCards);
              // }
            },
            child: Container())
      ],
    );
  }

  Widget _buildDeckText() {
    if (widget.deck != null) {
      return Text(
        widget.deck.title.value
            .fold((failure) => failure.failedValue, (value) => value),
        style: Theme.of(context)
            .textTheme
            .bodyText2
            .copyWith(fontWeight: FontWeight.bold),
      );
    } else {
      return Row(
        children: <Widget>[
          Text(
            widget.decksCount.toString(),
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Text('decks', style: Theme.of(context).textTheme.bodyText2),
        ],
      );
    }
  }
}
