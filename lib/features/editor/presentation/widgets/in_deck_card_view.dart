import 'package:mydeck/features/my_deck/domain/entities/card.dart' as Entity;
import 'package:mydeck/features/my_deck/domain/entities/card_content.dart';
import 'package:flutter/material.dart';

class InDeckCardView extends StatefulWidget {
  final Entity.Card sourceCard;
  final Function() onTap;

  InDeckCardView({Key key, this.sourceCard, this.onTap}) : super(key: key);

  @override
  _InDeckCardViewState createState() => _InDeckCardViewState();
}

class _InDeckCardViewState extends State<InDeckCardView>
    with SingleTickerProviderStateMixin {
  AnimationController flipController;

  bool isQuestion = true;

  @override
  void initState() {
    flipController =
        AnimationController(duration: kThemeAnimationDuration, vsync: this)
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              isQuestion = !isQuestion;

              flipController.reverse().orCancel;
            }
          });
    super.initState();
  }

  @override
  void dispose() {
    flipController.dispose();
    super.dispose();
  }

  Widget createWidgetFromContent(CardContent content) {
    if (content is ImageContent) {
      return Image.file(
        content.image,
        fit: BoxFit.cover,
      );
    } else if (content is TextContent) {
      return Text(content.text, style: TextStyle(fontSize: 18),textAlign: TextAlign.center,);
    } else  {
      return Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.width / 1.6,
        child: Card(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: InkWell(
              onTap: widget.onTap,
              borderRadius: BorderRadius.circular(4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        isQuestion ? 'Question' : 'Answer',
                        style: TextStyle(color: Theme.of(context).textTheme.bodyText2.color.withOpacity(0.3), fontSize: 12),
                      ),
                    ),
                  ),
                  Spacer(),
                  isQuestion
                      ? createWidgetFromContent(widget.sourceCard.question)
                      : createWidgetFromContent(widget.sourceCard.answer),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
