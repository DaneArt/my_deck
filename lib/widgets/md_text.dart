import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:logger/logger.dart';

import 'package:mydeck/cubits/md_content/md_content_cubit.dart';
import 'package:mydeck/models/entitites/mde_file.dart';

class MDText extends StatefulWidget {
  final Key key;
  final double width;
  final double height;
  final MDTextFile sourceFile;
  MDText({Key key, double width, double height, @required MDTextFile text})
      : assert(text != null),
        sourceFile = text,
        this.width = width ?? 0,
        this.height = height ?? 0,
        this.key = key ?? ValueKey(text.uniqueId.getOrCrash),
        super(key: key);

  @override
  _MDTextState createState() => _MDTextState();
}

class _MDTextState extends State<MDText> {
  @override
  Widget build(BuildContext context) {
   
    return Container(
  
      width: widget.width,
      height: widget.height,
      child: BlocBuilder<MDContentCubit<String>, MDContentState<String>>(
        builder: (context, state) => state.map(
          initial: (s) {
            context.bloc<MDContentCubit<String>>().initFile(widget.sourceFile);
            return Container(
                width: widget.width, height: widget.height,);
          },
          loading: (s) => Center(child: CircularProgressIndicator()),
          error: (s) => Icon(Icons.error),
          loaded: (s) {
             Logger().d("Current text of ${widget.key}: ${s.content}");
             
             return Center(
            child: Text(
              s.content,
              key: ValueKey(s.content),
            ),
          );
          }
        ),
      ),
    );
  }
}
