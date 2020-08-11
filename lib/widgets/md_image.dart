import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:mydeck/cubits/md_image/md_image_cubit.dart';
import 'package:mydeck/models/entitites/md_file.dart';

class MDImage extends StatelessWidget {
  final Key key;
  final double width;
  final double height;
  final Widget placeholder;
  final Widget errorWidget;
  final Widget loadIndicator;
  final ImageFile sourceImage;
  MDImage(
      {Key key,
      double width,
      double height,
      this.placeholder,
      this.errorWidget,
      this.loadIndicator,
      @required ImageFile image})
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
      child: BlocBuilder<MDContentCubit, MDContentState>(
        builder: (context, state) => state.map(
            initial: (s) {
              Logger().d('Initializing file');
              context.bloc<MDContentCubit>().initFile(sourceImage);
              return placeholder ??
                  Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.blueGrey);
            },
            loading: (s) =>
                Center(child: loadIndicator ?? CircularProgressIndicator()),
            error: (s) => errorWidget ?? Icon(Icons.error),
            loaded: (s) => Image.file(
                  s.file,
                  key: Key('MDImage'),
                  fit: BoxFit.cover,
                )),
      ),
    );
  }
}
