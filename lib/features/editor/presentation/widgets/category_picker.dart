import 'package:mydeck/features/my_deck/data/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:mydeck/core/extensions/widget_extensions.dart';

class CategoryPicker extends StatefulWidget {
  final CategoryModel baseCategory;

  const CategoryPicker({Key key, this.baseCategory}) : super(key: key);

  @override
  _CategoryPickerState createState() => _CategoryPickerState();
}

class _CategoryPickerState extends State<CategoryPicker> {
  final List<Color> colors = [
    Colors.redAccent,
    Colors.orangeAccent,
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
    return WillPopScope(
      onWillPop: () async {
        context.navigator.pop(pickedCategory);
        return false;
      },
      child: StatefulBuilder(
        builder: (context, setState) => Container(
          child: AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            title: Text('Pick a category'),
            content: Container(
              height: 280,
              width: 300,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) => Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(kDefaultCategories[index].categoryName),
                      ),
                      Radio(
                        activeColor: colors[index],
                        onChanged: (CategoryModel value) {
                          setState(() {
                            if (value == pickedCategory) {
                              pickedCategory = kDefaultCategories.last;
                            } else {
                              pickedCategory = value;
                            }
                          });
                        },
                        groupValue: pickedCategory,
                        value: kDefaultCategories[index],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('CANCEL'),
                onPressed: () => context.navigator.pop(),
              ),
              FlatButton(
                child: Text('OK'),
                onPressed: () => context.navigator.pop(pickedCategory),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
