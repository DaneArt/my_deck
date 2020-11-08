import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:mydeck/cubits/md_content/md_content_cubit.dart';
import 'package:mydeck/models/entitites/mde_file.dart';


class MDImage extends StatelessWidget {
  final Key key;
  final double width;
  final double height;
  final Widget placeholder;
  final Widget errorWidget;
  final Widget loadIndicator;
  final MDImageFile sourceImage;
  final bool editable;
  MDImage(
      {Key key,
      double width,
      double height,
      this.placeholder,
      this.errorWidget,
      this.loadIndicator,
      @required MDImageFile image,
      this.editable})
      : assert(image != null),
        sourceImage = image,
        this.width = width ?? 0,
        this.height = height ?? 0,
        this.key = key ?? Key(image.uniqueId.getOrCrash),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: BlocBuilder<MDContentCubit<File>, MDContentState<File>>(
        builder: (context, state) => state.map(
            initial: (s) {
              context.watch<MDContentCubit<File>>().initFile(sourceImage);
              return placeholder ??
                  Container(
                      width: double.infinity,
                      height: double.infinity,
                    );
            },
            loading: (s) =>
                Center(child: loadIndicator ?? CircularProgressIndicator()),
            error: (s) => errorWidget ?? Icon(Icons.error),
            loaded: (s) => Image.file(
                  s.content,
                  key: Key("MDImage"),
                  fit: BoxFit.cover,
                ),),
      ),
    );
  }
}
