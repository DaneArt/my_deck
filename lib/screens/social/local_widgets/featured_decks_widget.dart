import 'package:mydeck/models/entitites/deck.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FeaturedDeckList extends StatefulWidget {
  final List<Deck> decks;
  final int initialPage;

  const FeaturedDeckList({Key key, this.decks, this.initialPage = 0})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _FeaturedDeckList();
}

class _FeaturedDeckList extends State<FeaturedDeckList> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        PageView.builder(
          controller: _pageController,
          itemCount: widget.decks.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: size.width,
                        height: size.height,
                        color: Colors.lightBlue,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.elliptical(
                                size.width, size.height * 2)),
                        child: Container(
                          color: Colors.pink,
                          height: size.height,
                          width: size.width / 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SmoothPageIndicator(
              controller: _pageController, // PageController
              count: widget.decks.length,
              effect: ScrollingDotsEffect(
                    activeDotScale: 1,
                    dotHeight: 12,
                    dotWidth: 12,
                    activeDotColor: Theme.of(context).primaryColor,
                    dotColor: Colors.white.withOpacity(0.95)

              )
            ),
          ),
        ),
      ],
    );
  }
}
