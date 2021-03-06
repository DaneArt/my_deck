import 'dart:math';

import 'package:mydeck/blocs/train/train_bloc.dart';
import 'package:mydeck/models/entitites/card.dart' as Entity;
import 'package:mydeck/models/entitites/md_file.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum Guess { left, center, right }

class DismissibleCard extends StatefulWidget {
  final Function(Guess) onGuess;
  final Function(Guess) onDismiss;
  final Entity.Card card;
  final Size screenSize;

  DismissibleCard(
      {Key key,
      @required this.onGuess,
      @required this.onDismiss,
      @required this.card,
      @required this.screenSize})
      : super(key: key);

  @override
  _DismissibleCardState createState() => _DismissibleCardState();
}

class _DismissibleCardState extends State<DismissibleCard>
    with TickerProviderStateMixin {
  Size get screenSize => widget.screenSize;

  double _angle = 0.0;
  double _presetRotationAngle = 1.0; //needs to extra rotate card on tap
  double _contentOpacity = 1.0;
  double _trueAnswerOpacity = 0;
  double _falseAnswerOpacity = 0;
  bool _isAnswer = false;

  Guess _userGuess = Guess.center;
  Offset _startOffset = Offset(0.0, 0.0);
  Offset _swipeOffset = Offset(0.0, 0.0);

  AnimationController _dismissController;
  AnimationController _flipController;
  Animation _flipAnimation;
  Animation _horizontalDismissAnimation;
  Animation _verticalDismissAnimation;

  @override
  void initState() {
    _flipController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this)
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _presetRotationAngle = 0.0;
            }
            if (status == AnimationStatus.completed ||
                status == AnimationStatus.dismissed) {
              _isAnswer = !_isAnswer;
              _contentOpacity = 1.0;
            }
          });

    _flipAnimation = Tween(begin: 0.0, end: 1.0).animate(_flipController);

    super.initState();
  }

  @override
  void dispose() {
    _flipController.dispose();
    super.dispose();
  }

  _calculateAngle(DragUpdateDetails updateDetails) {
    final double kMaxAngle = pi / 24.0;

    final swipeAngle = _startOffset.dy < screenSize.height / 2.0
        ? atan((updateDetails.globalPosition.dx - _startOffset.dx) /
            updateDetails.globalPosition.dy)
        : -atan((updateDetails.globalPosition.dx - _startOffset.dx) /
            updateDetails.globalPosition.dy);
    if (swipeAngle.abs() < kMaxAngle) {
      _angle = swipeAngle;
    } else {
      if (swipeAngle < 0.0) {
        _angle = -kMaxAngle;
      } else {
        _angle = kMaxAngle;
      }
    }
  }

  _calculateSwipeOffset(DragUpdateDetails updateDetails) {
    final dx = updateDetails.globalPosition.dx - _startOffset.dx;
    final dy = updateDetails.globalPosition.dy - _startOffset.dy;
    _swipeOffset = Offset(dx, dy);
  }

  _defineTheGuess(DragUpdateDetails updateDetails) {
    if (updateDetails.globalPosition.dx - _startOffset.dx >=
        screenSize.width * 0.2) {
      _userGuess = Guess.right;
      _trueAnswerOpacity = 1;
      _falseAnswerOpacity = 0;
    } else if (updateDetails.globalPosition.dx - _startOffset.dx <=
        -screenSize.width * 0.2) {
      _userGuess = Guess.left;
      _trueAnswerOpacity = 0;
      _falseAnswerOpacity = 1;
    } else {
      _userGuess = Guess.center;
      _trueAnswerOpacity = 0;
      _falseAnswerOpacity = 0;
    }
  }

  _onFlipCard() {
    setState(() {
      _contentOpacity = 0;
      _presetRotationAngle = 1.0;
    });

    if (_flipController.status == AnimationStatus.completed) {
      _flipController.reverse();
    } else {
      _flipController.forward();
    }
  }

  _dropParameters() {
    _angle = 0;
    _swipeOffset = Offset(0, 0);
    _startOffset = Offset(0, 0);
    _trueAnswerOpacity = 0;
    _falseAnswerOpacity = 0;
  }

  _animateDismiss() {
    _dismissController =
        AnimationController(duration: Duration(milliseconds: 150), vsync: this)
          ..addListener(() {
            setState(() {
              _swipeOffset = Offset(_horizontalDismissAnimation.value,
                  _verticalDismissAnimation.value);
            });
            print('onAnimation: Offset(${_swipeOffset.dx},${_swipeOffset.dy})');
          })
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              print('dismissAnimation: completed');
              widget.onDismiss(_userGuess);

              setState(() {
                _isAnswer = false;
                _dropParameters();
              });
            }
          });

    double dx = _swipeOffset.dx >= 0
        ? (screenSize.width / 1.6)
        : -(screenSize.width / 1.6);
    double dy = _swipeOffset.dy * 3;

    _horizontalDismissAnimation =
        Tween(begin: _swipeOffset.dx, end: _swipeOffset.dx + dx)
            .animate(_dismissController);
    _verticalDismissAnimation =
        Tween(begin: _swipeOffset.dy, end: _swipeOffset.dy + dy)
            .animate(_dismissController);

    _dismissController.forward();
  }

  Widget createWidgetFromContent(MDFile content, BuildContext context) =>
      Container();
  //content is ImageFile
  //    ? ImageCardContentWidget(
  //        imageFile: content,
  //        heigth: MediaQuery.of(context).size.height,
  //      )
  //    : TextCardWidget(
  //        content: content,
  //        isEditing: false,
  //      );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BlocListener<TrainBloc, TrainState>(
          listener: (context, state) {
            // if (state is TrainInProgress) {
            //   _dropParameters();
            // }
          },
          child: GestureDetector(
            onHorizontalDragStart: (startDetails) {
              _startOffset = startDetails.globalPosition;
            },
            onHorizontalDragUpdate: (updateDetails) {
              setState(() {
                //calculate rotation angle
                _calculateAngle(updateDetails);
                //calculate swipeoffset
                _calculateSwipeOffset(updateDetails);
                //define the guess
                _defineTheGuess(updateDetails);
              });
              widget.onGuess(_userGuess);
              print('onUpdate: Angle: $_angle');
              print(
                  'onUpdate: Offset: (${_swipeOffset.dx},${_swipeOffset.dy})');
              print('onUpdate: Guess: $_userGuess');
            },
            onHorizontalDragEnd: (details) {
              if (_userGuess != Guess.center) {
                print('onEnd: onDismiss');
                _animateDismiss();
              } else {
                setState(() {
                  print('onEnd: onDrop');
                  _dropParameters();
                });
              }
            },
            child: Transform(
              alignment: FractionalOffset.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(pi * _flipAnimation.value * _presetRotationAngle),
              child: Transform.rotate(
                angle: _angle,
                child: Transform.translate(
                  offset: _swipeOffset,
                  child: Card(
                    color: Colors.white,
                    elevation: 4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4.0),
                      child: Container(
                        width: screenSize.width * 0.9,
                        height: screenSize.height * 0.75,
                        child: InkWell(
                          onTap: _onFlipCard,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.center,
                                child: AnimatedOpacity(
                                  curve: Curves.easeInQuart,
                                  duration: Duration(milliseconds: 0),
                                  opacity: _contentOpacity,
                                  child: _isAnswer
                                      ? createWidgetFromContent(
                                          widget.card.answer, context)
                                      : createWidgetFromContent(
                                          widget.card.question, context),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    AnimatedOpacity(
                                      curve: Curves.easeInQuart,
                                      opacity: _contentOpacity,
                                      duration:
                                          const Duration(milliseconds: 100),
                                      child: Text(
                                        _isAnswer ? 'Answer' : 'Question',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: AnimatedOpacity(
                                  duration: kThemeAnimationDuration,
                                  opacity: _trueAnswerOpacity,
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.green,
                                    size: screenSize.width * 0.8,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: AnimatedOpacity(
                                  duration: kThemeAnimationDuration,
                                  opacity: _falseAnswerOpacity,
                                  child: Icon(
                                    Icons.clear,
                                    color: Colors.red,
                                    size: screenSize.width * 0.8,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
