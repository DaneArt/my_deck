import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:mydeck/cubits/md_content/md_content_cubit.dart';
import 'package:mydeck/models/entitites/mde_file.dart';
import 'package:mydeck/models/value_objects/deck_avatar.dart';
import 'package:mydeck/models/value_objects/unique_id.dart';
import 'md_image.dart';
import 'md_image_picker_modal_bottom_sheet.dart';

class MDImagePicker extends StatefulWidget {
  final Function(MDImageFile image) onImagePicked;
  final DeckAvatar defaultAvatar;
  final bool enabled;
  MDImagePicker({
    Key key,
    @required this.onImagePicked,
    @required this.defaultAvatar,
    @required this.enabled,
  }) : super(key: key);

  @override
  _MDImagePickerState createState() => _MDImagePickerState();
}

class _MDImagePickerState extends State<MDImagePicker> {
  @override
  void initState() {
    super.initState();
  }

  _pickImage(ImageSource source) async {
    final file = await ImagePicker()
        .getImage(source: source, maxHeight: 300 * 1.7, maxWidth: 300);
    if (file != null) {
      setState(() {
        widget.onImagePicked(
            MDImageFile(uniqueId: UniqueId(), file: File(file.path)));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        child: Container(
          height: screenSize.width / 2.5 * 1.4,
          width: screenSize.width / 2.5,
          child: InkWell(
            onTap: widget.enabled
                ? () {
                    showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) => MDImagePickerModalBottomSheet(
                        onPickImage: _pickImage,
                      ),
                    );
                  }
                : null,
            child: widget.defaultAvatar.value.fold(
              (failure) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    widget.enabled ? 'Tap to pick avatar' : 'No avatar',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              (value) => BlocProvider<MDContentCubit<File>>(
                create: (context) => MDContentCubit<File>(),
                child: MDImage(
                  image: value,
                  height: screenSize.width / 2.5 * 1.4,
                  width: screenSize.width / 2.5,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
