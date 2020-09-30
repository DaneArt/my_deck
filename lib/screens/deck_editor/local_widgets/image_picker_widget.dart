import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydeck/cubits/md_image/md_image_cubit.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/models/value_objects/deck_avatar.dart';
import 'package:mydeck/utils/dependency_injection.dart';
import 'package:mydeck/utils/images_util.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:mydeck/generated/l10n.dart';
import 'package:mydeck/widgets/image_picker_modal_bottom_sheet.dart';
import 'package:mydeck/widgets/md_image.dart';

class ImagePickerWidget extends StatefulWidget {
  final Function(ImageFile image) onImagePicked;
  final DeckAvatar defaultAvatar;
  final bool enabled;
  ImagePickerWidget({
    Key key,
    @required this.onImagePicked,
    @required this.defaultAvatar,
    @required this.enabled,
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
    final file = await ImagePicker()
        .getImage(source: source, maxHeight: 300 * 1.7, maxWidth: 300);
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
                      builder: (context) => ImagePickerModalBottomSheet(
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
              (value) => BlocProvider<MDContentCubit>(
                create: (context) => sl.get<MDContentCubit>(),
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
