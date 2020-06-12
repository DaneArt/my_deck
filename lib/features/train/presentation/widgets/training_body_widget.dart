import 'package:mydeck/core/icons/custom_icons_icons.dart';
import 'package:mydeck/features/train/presentation/widgets/custom_stack_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/features/train/presentation/bloc/train/train_bloc.dart';

class TrainingBody extends StatefulWidget {
  final TrainInProgress stateData;
  final TrainBloc trainBloc;

  TrainingBody({Key key, @required this.stateData, @required this.trainBloc})
      : super(key: key);

  @override
  _TrainingBodyState createState() => _TrainingBodyState();
}

class _TrainingBodyState extends State<TrainingBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Level ${widget.stateData.currentCard.level}',
                style: Theme.of(context)
                    .textTheme
                    .title
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              IconButton(
                icon: Icon(CustomIcons.drop_progress,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black),
                onPressed: () {
                  widget.trainBloc.add(ReverseAnswer());
                },
              ),
            ],
          ),
        ),
        CustomStackList(
          cards: widget.stateData.currentDeck.cardsList,
          bloc: widget.trainBloc,
        ),
        LinearProgressIndicator(
          backgroundColor: Colors.black12,
          value: widget.stateData.currentCardIndex /
              widget.stateData.currentDeck.cardsList.length,
        ),
      ],
    );
  }
}