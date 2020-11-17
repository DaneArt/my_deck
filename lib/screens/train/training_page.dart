import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mydeck/blocs/train/train_bloc.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<TrainBloc, TrainState>(
          builder: (context, state) {
            // if (state is TrainInProgress) {
            //   return Text(
            //     state.currentDeck.title.toString(),
            //     style: Theme.of(context)
            //         .textTheme
            //         .headline6
            //         .copyWith(color: Colors.white),
            //   );
            // }
            return (Text(''));
          },
        ),
      ),
      body: _TrainingPageBody(),
    );
  }
}

class _TrainingPageBody extends StatefulWidget {
  final bool isSaveProgress;

  _TrainingPageBody({
    Key key,
    this.isSaveProgress,
  }) : super(key: key);

  @override
  _TrainingPageBodyState createState() =>
      _TrainingPageBodyState(isSaveProgress);
}

class _TrainingPageBodyState extends State<_TrainingPageBody> {
  final bool isSaveProgress;
  TrainBloc _trainBloc;

  _TrainingPageBodyState(this.isSaveProgress);

  @override
  void dispose() {
    if (isSaveProgress) {
      _trainBloc.add(StopTrain());
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _trainBloc = BlocProvider.of<TrainBloc>(context);
    return Container(
      child: BlocBuilder<TrainBloc, TrainState>(
        builder: (context, state) {
          return _buildUi(context, state);
        },
      ),
    );
  }

  Widget _buildUi(BuildContext context, TrainState state) {
    // if (state is TrainInProgress) {
    //   return TrainingBody(
    //     stateData: state,
    //     trainBloc: _trainBloc,
    //   );
    // } else if (state is EndTrainOfDeck) {
    //   return EndOfTrainView(
    //     isEndOfDeck: true,
    //     deck: state.deck,
    //     successfullTrainedCardsCount: state.successfullTrainedCardsCount,
    //     trainBloc: _trainBloc,
    //   );
    // } else if (state is TrainEnded) {
    //   return EndOfTrainView(
    //     isEndOfDeck: false,
    //     successfullTrainedCardsCount: state.successfullTrainedCardsCount,
    //     decksCount: state.decksCount,
    //     trainBloc: _trainBloc,
    //   );
    // } else if (state is InitialTrainState) {
    //   final List<Deck> decksToTrain = ModalRoute.of(context).settings.arguments;
    //   BlocProvider.of<TrainBloc>(context).add(LoadTrainableDecks(decksToTrain));
    //   return Container();
    // }
  }
}
