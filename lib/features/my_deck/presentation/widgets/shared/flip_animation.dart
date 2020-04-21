import 'package:flutter/material.dart';

class FlipAnimation extends StatefulWidget {
  final AnimationController animationController;

  final Widget child;
  final double widgetWidth;

  FlipAnimation({
    Key key,
    this.animationController,
    this.child,
    this.widgetWidth,
  }) : super(key: key);

  @override
  _FlipAnimationState createState() => _FlipAnimationState();
}

class _FlipAnimationState extends State<FlipAnimation>
    with SingleTickerProviderStateMixin {
  Widget get child => widget.child;
  AnimationController get flipController => widget.animationController;

  Animation _flipAnimation;

  @override
  void initState() {
    super.initState();

    final Animation curve =
        CurvedAnimation(parent: flipController, curve: Curves.easeInCirc);
    _flipAnimation = Tween(begin: widget.widgetWidth, end: 0.0).animate(curve);
  }

  @override
  Widget build(BuildContext context) {
    return Container(width: _flipAnimation.value, child: child);
  }
}
