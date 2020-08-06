import 'dart:io';

import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/models/value_objects/deck_avatar.dart';
import 'package:mydeck/utils/images_util.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mydeck/generated/l10n.dart';
import 'package:mydeck/widgets/md_image.dart';

class ImagePickerWidget extends StatefulWidget {
  final Function(ImageFile image) onImagePicked;
  final DeckAvatar defaultAvatar;
  ImagePickerWidget({
    Key key,
    @required this.onImagePicked,
    @required this.defaultAvatar,
  }) : super(key: key);

  @override
  _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  @override
  void initState() {
    super.initState();
  }

  _pickImage(ImageSource source) async {
    final file = await ImagePicker().getImage(source: source);
    if (file != null) {
      setState(() {
        widget.onImagePicked(
            ImageFile(uniqueId: UniqueId(), file: File(file.path)));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Card(
      key: Key('ImagePickerWidget'),
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        child: Container(
          height: screenSize.height / 4,
          width: screenSize.height / 4 / 1.4,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) => Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      MaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                            _pickImage(ImageSource.gallery);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.image),
                              SizedBox(
                                width: 32,
                              ),
                              Text('Gallery'),
                            ],
                          )),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                          _pickImage(ImageSource.camera);
                        },
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
                    ],
                  ),
                ),
              );
            },
            child: widget.defaultAvatar.value.fold(
              (failure) => Center(
                child: Text('Tap to pick avatar'),
              ),
              (value) => MDImage(
                image: value,
                height: screenSize.height / 4,
                width: screenSize.height / 4 / 1.4,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
