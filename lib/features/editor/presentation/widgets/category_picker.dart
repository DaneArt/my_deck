import 'package:flutter/material.dart';
import 'package:mydeck/features/my_deck/data/models/category_model.dart';

class CategoryPicker extends StatefulWidget {
  final CategoryModel baseCategory;
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

  CategoryModel pickedCategory;

  @override
  void initState() {
    super.initState();
    pickedCategory = widget.baseCategory ?? kDefaultCategories.last;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: [
        for (CategoryModel c in kDefaultCategories)
          DropdownMenuItem<CategoryModel>(
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
      onChanged: (CategoryModel value) {
        setState(() {
          pickedCategory = value;
        });
        widget.onChanged(value);
      },
    );
  }
}
