part of '../card_editor.dart';

class _CardFractionPaginationBuilder extends SwiperPlugin {
  ///color ,if set null , will be Theme.of(context).scaffoldBackgroundColor
  final Color color;

  ///color when active,if set null , will be Theme.of(context).primaryColor
  final Color activeColor;

  ////font size
  final double fontSize;

  ///font size when active
  final double activeFontSize;

  final Key key;

  const _CardFractionPaginationBuilder(
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
      return Container(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 48.0, left: 8, right: 8, bottom: 8),
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
                "${config.itemCount}",
                style: TextStyle(color: color, fontSize: fontSize),
              )
            ],
          ),
        ),
      );
    } else {
      return Container(
        child: Row(
          key: key,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Text(
                "${config.activeIndex + 1}",
                style: TextStyle(color: activeColor, fontSize: activeFontSize),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Text(
                " / ${config.itemCount}",
                style: TextStyle(color: color, fontSize: fontSize),
              ),
            )
          ],
        ),
      );
    }
  }
}
