import 'package:mydeck/blocs/train/train_bloc.dart';
import 'package:mydeck/utils/custom_icons_icons.dart';
import 'package:mydeck/screens/train/local_widgets/custom_stack_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class TrainingBody extends StatefulWidget {
  final TrainBloc trainBloc;

  TrainingBody({Key key, @required this.trainBloc}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
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
        // CustomStackList(
        //   cards: widget.stateData.currentDeck.cardsList,
        //   bloc: widget.trainBloc,
        // ),
        // LinearProgressIndicator(
        //   backgroundColor: Colors.black12,
        //   value: widget.stateData.currentCardIndex /
        //       widget.stateData.currentDeck.cardsList.length,
        // ),
      ],
    );
  }
}
