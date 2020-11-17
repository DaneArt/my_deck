part of '../add_deck_page.dart';

class _InDeckCardWidget extends StatelessWidget {
  final MDECard sourceCard;
  final Function() onTap;

  _InDeckCardWidget({Key key, this.sourceCard, this.onTap}) : super(key: key);

  Widget _createWidgetFromContent(MDEFile content, BuildContext context) {
    if (content is MDImageFile) {
      return BlocProvider<MDContentCubit<File>>(
        create: (context) => MDContentCubit<File>(),
        child: MDImage(
          image: content,
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.width / 1.6 - 54,
        ),
      );
    } else if (content is MDTextFile) {
      return BlocProvider<MDContentCubit<String>>(
        create: (context) => MDContentCubit<String>(),
        child: MDText(
          text: content,
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.width / 1.6 - 64,
        ),
      );
    } else {
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
            borderRadius:const BorderRadius.all(Constants.smallBorderRadius),
            child: InkWell(
              onTap: onTap,
              borderRadius: const BorderRadius.all(Constants.smallBorderRadius),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        S.of(context).meta_question,
                        style: TextStyle(
                            color: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .color
                                .withOpacity(0.3),
                            fontSize: 12),
                      ),
                    ),
                  ),
                  Spacer(),
                  _createWidgetFromContent(sourceCard.question, context),
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
