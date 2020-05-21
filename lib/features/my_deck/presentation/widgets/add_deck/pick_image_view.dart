import 'dart:io';

import 'package:mydeck/core/helpers/images_util.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/add_deck/deck_avatar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  final Function(File image) onImagePicked;
  final DeckAvatar defaultImage;
  final bool isEditing;
  ImagePickerWidget(
      {Key key, @required this.onImagePicked, @required this.defaultImage, this.isEditing})
      : super(key: key);

  @override
  _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  File _image;

  @override
  void initState() {
    _image = widget.defaultImage.value.fold((failure) => null, (file) => file);
    super.initState();
  }

  Future getImage(ImageSource source) async {
    final image = source == ImageSource.camera
        ? await ImagesUtil.pickImageFromCamera()
        : await ImagesUtil.pickImageFromGallery();
    if (image != null) {
      setState((){
        _image = image;
        widget.onImagePicked(_image);
      });

    }
  }

  Widget _imageWidget(BuildContext context) => InkWell(
        onTap: () {
          showModalBottomSheet(
              context: context,
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8))),
              builder: (context) => Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: FlatButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text('Pick from gallery'),
                                Icon(Icons.filter)
                              ],
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                              getImage(ImageSource.gallery);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: FlatButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text('Pick a photo'),
                                Icon(Icons.camera_alt)
                              ],
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                              getImage(ImageSource.camera);
                            },
                          ),
                        ),
                      ],
                    ),
                  ));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          child: _image == null
              ? Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    child: Center(
                      child: Text(
                        _image == null &&widget.isEditing ? 'Pick deck avatar' : 'No avatar',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.body2,
                      ),
                    ),
                  ),
                )
              : Image.file(
                  _image,
                  fit: BoxFit.cover,
                ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 16, right: 8, left: 8, bottom: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              height: screenSize.width / 2.2,
              width: screenSize.width,
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: _imageWidget(context),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
