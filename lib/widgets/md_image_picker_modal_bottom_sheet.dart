import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MDImagePickerModalBottomSheet extends StatelessWidget {
  final Function(ImageSource imageSource) onPickImage;
  const MDImagePickerModalBottomSheet({
    Key key,
    @required this.onPickImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          MaterialButton(
              onPressed: () {
                Navigator.pop(context);
                onPickImage(ImageSource.gallery);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.image),
                    SizedBox(
                      width: 32,
                    ),
                    Text('Gallery'),
                  ],
                ),
              )),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              onPickImage(ImageSource.camera);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.photo_camera),
                  SizedBox(
                    width: 32,
                  ),
                  Text('Photo'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
