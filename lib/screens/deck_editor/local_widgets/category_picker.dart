import 'package:flutter/material.dart';
import 'package:mydeck/models/dtos/deck_category.dart';

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
  DeckCategory pickedCategory;

  @override
  void initState() {
    super.initState();
    pickedCategory = widget.baseCategory ?? kDefaultCategories.last;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      underline: Container(),
      items: [
        for (DeckCategory c in kDefaultCategories)
          DropdownMenuItem<DeckCategory>(
            value: c,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(c.categoryName,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 20)),
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
