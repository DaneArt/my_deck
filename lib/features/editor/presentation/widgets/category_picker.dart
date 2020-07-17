import 'package:flutter/material.dart';
import 'package:mydeck/features/my_deck/data/models/deck_category.dart';

class CategoryPicker extends StatefulWidget {
  final DeckCategory baseCategory;
  final ValueChanged<dynamic> onChanged;

  const CategoryPicker(
      {Key key, @required this.baseCategory, @required this.onChanged})
      : super(key: key);

  @override
  _CategoryPickerState createState() => _CategoryPickerState();
}

class _CategoryPickerState extends State<CategoryPicker> {
  final List<Color> colors = [
    Colors.redAccent,
    Colors.orangeAccent,
    Colors.yellowAccent,
    Colors.greenAccent,
    Colors.lightBlueAccent,
    Colors.blueAccent,
    Colors.purpleAccent,
  ];

  DeckCategory pickedCategory;

  @override
  void initState() {
    super.initState();
    pickedCategory = widget.baseCategory ?? kDefaultCategories.last;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: [
        for (DeckCategory c in kDefaultCategories)
          DropdownMenuItem<DeckCategory>(
            value: c,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(c.categoryName,
                    style: TextStyle(
                        color: colors[kDefaultCategories.indexOf(c)])),
              ),
            ),
          ),
      ],
      value: pickedCategory,
      onChanged: (DeckCategory value) {
        setState(() {
          pickedCategory = value;
        });
        widget.onChanged(value);
      },
    );
  }
}
