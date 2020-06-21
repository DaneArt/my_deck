import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardFractionPaginationBuilder extends SwiperPlugin {
  ///color ,if set null , will be Theme.of(context).scaffoldBackgroundColor
  final Color color;

  ///color when active,if set null , will be Theme.of(context).primaryColor
  final Color activeColor;

  ////font size
  final double fontSize;

  ///font size when active
  final double activeFontSize;

  final Key key;

  const CardFractionPaginationBuilder(
      {this.color,
      this.fontSize: 20.0,
      this.key,
      this.activeColor,
      this.activeFontSize: 35.0});

  @override
  Widget build(BuildContext context, SwiperPluginConfig config) {
    ThemeData themeData = Theme.of(context);
    Color activeColor = this.activeColor ?? themeData.primaryColor;
    Color color = this.color ?? themeData.scaffoldBackgroundColor;

    if (Axis.vertical == config.scrollDirection) {
      return  Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: Colors.black87
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Column(
            key: key,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Text(
                "${config.activeIndex + 1}",
                style: TextStyle(color: activeColor, fontSize: activeFontSize),
              ),
              new Text(
                "/",
                style: TextStyle(color: color, fontSize: fontSize),
              ),
              new Text(
                "${config.itemCount - 1}",
                style: TextStyle(color: color, fontSize: fontSize),
              )
            ],
          ),
        ),
      );
    } else {
      return  Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.black87
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            key: key,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Text(
                "${config.activeIndex + 1}",
                style: TextStyle(color: activeColor, fontSize: activeFontSize),
              ),
              new Text(
                " / ${config.itemCount - 1}",
                style: TextStyle(color: color, fontSize: fontSize),
              )
            ],
          ),
        ),
      );
    }
  }
}
