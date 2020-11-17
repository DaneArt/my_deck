import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:mydeck/models/entitites/mde_deck.dart';

class FeaturedDeckListSmall extends StatefulWidget {
  final List<MDEDeck> decks;
  final int initialPage;

  const FeaturedDeckListSmall({Key key, this.decks, this.initialPage = 0})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _FeaturedDeckListSmallState();
}

class _FeaturedDeckListSmallState extends State<FeaturedDeckListSmall> {
  SwiperController _swiperController;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _swiperController = SwiperController();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _swiperController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Swiper(
          pagination: SwiperPagination(
              margin: const EdgeInsets.only(bottom: 16),
              builder: DotSwiperPaginationBuilder(
                  activeColor: Theme.of(context).accentColor,
                  color: Theme.of(context).textTheme.subtitle1.color)),
          viewportFraction: 0.85,
          scale: 0.9,
          scrollDirection: Axis.horizontal,
          itemCount: widget.decks.length,
          itemBuilder: (context, index) => Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: size.height,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topRight:
                            Radius.elliptical(size.width, size.height * 0.9)),
                    child: Container(
                      color: Colors.pink,
                      height: size.height,
                      width: size.width / 2.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
