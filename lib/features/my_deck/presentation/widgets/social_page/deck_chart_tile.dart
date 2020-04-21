import 'package:flutter/material.dart';

class DeckChartTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Math', style: Theme.of(context).textTheme.title),
            InkWell(
              onTap: () {},
              child: Text(
                'More...',
                style: Theme.of(context)
                    .textTheme
                    .body2
                    .copyWith(color: Colors.blue),
              ),
            ),
          ],
        ),
        Container(
          width: screenSize.width,
          height: screenSize.height / 5.5,
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    child: Container(
                      width: screenSize.height / 6,
                      height: screenSize.height / 6,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
