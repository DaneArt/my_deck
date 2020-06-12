import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mydeck/core/extensions/widget_extensions.dart';
import 'package:mydeck/core/helpers/images_util.dart';
import 'package:mydeck/core/icons/custom_icons_icons.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart' as Entity;
import 'package:mydeck/features/my_deck/domain/entities/card_content.dart';
import 'package:mydeck/features/editor/presentation/bloc/add_card/add_card_bloc.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/shared/card_content_widget.dart';

class CardEditor extends StatefulWidget {
  final bool isCreating;
  const CardEditor({Key key, this.isCreating}) : super(key: key);

  @override
  _CardEditorState createState() => _CardEditorState();
}

class _CardEditorState extends State<CardEditor> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.bloc<AddCardBloc>().add(AddCardEvent.saveChangesAndExit());
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: <Widget>[
            widget.isCreating
                ? IconButton(
                    onPressed: () {
                      context.navigator.pop(true);
                    },
                    icon: Icon(Icons.delete,
                        color: Theme.of(context).accentIconTheme.color),
                  )
                : Container(),
            IconButton(
              onPressed: () {
                context
                    .bloc<AddCardBloc>()
                    .add(AddCardEvent.saveChangesAndExit());
              },
              icon: Icon(Icons.check,
                  color: Theme.of(context).accentIconTheme.color),
            ),
          ],
          leading: IconButton(
            onPressed: () {
              context.navigator.pop();
            },
            icon: Icon(Icons.clear,
                color: Theme.of(context).accentIconTheme.color),
          ),  
          backgroundColor: Colors.transparent,
        ),
        body: BlocListener<AddCardBloc, AddCardState>(
          listener: (context, state) {
            if (state.saveChangesAndExit) {
              context.navigator.pop(state.card);
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _cardWidget(),
              _controls(),
            ],
          ),
        ),
      ),
    );
  }

  _getImage(ImageSource source) async {
    final image = source == ImageSource.camera
        ? await ImagesUtil.pickImageFromCamera()
        : await ImagesUtil.pickImageFromGallery();
    if (image != null) {
      context
          .bloc<AddCardBloc>()
          .add(AddCardEvent.setImageContent(image: image));
    }
  }

  _showImagePickerDialog() {
    showModalBottomSheet(
        context: context,
        elevation: 4,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8))),
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
                        _getImage(ImageSource.gallery);
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
                        _getImage(ImageSource.camera);
                      },
                    ),
                  ),
                ],
              ),
            ));
  }

  Widget _controls() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.photo,
                color: Theme.of(context).accentIconTheme.color,
              ),
              onPressed: () {
                _showImagePickerDialog();
              },
            ),
            IconButton(
              icon: Icon(
                Icons.text_fields,
                color: Theme.of(context).accentIconTheme.color,
              ),
              onPressed: () {
                context.bloc<AddCardBloc>().add(AddCardEvent.setTextContent());
              },
            ),
//            IconButton(
//              icon: Icon(
//                Icons.brush,
//                color: Theme.of(context).accentIconTheme.color,
//              ),
//              onPressed: () {},
//            ),
          ],
        ),
      );

  Widget _renderQuestion(BuildContext context, Entity.Card card) =>
      card.question.map(
        noContent: (s) => TextCardWidget(
          key: Key('CQue'),
          content: CardContent.textContent(text: ''),
          isEditing: true,
          onTextChanged: (input) {
            context.bloc<AddCardBloc>().add(AddCardEvent.questionChanged(
                newQuestion: CardContent.textContent(text: input)));
          },
        ),
        textContent: (s) => TextCardWidget(
          key: Key('CQue'),
          content: CardContent.textContent(text: s.model),
          isEditing: true,
          onTextChanged: (input) {
            context.bloc<AddCardBloc>().add(AddCardEvent.questionChanged(
                newQuestion: CardContent.textContent(text: input)));
          },
        ),
        imageContent: (s) => ImageCardContentWidget(imageFile: s.image),
      );

  Widget _renderAnswer(BuildContext context, Entity.Card card) =>
      card.answer.map(
        noContent: (s) => TextCardWidget(
          key: Key('CAns'),
          content: CardContent.textContent(text: ''),
          isEditing: true,
          onTextChanged: (input) {
            context.bloc<AddCardBloc>().add(AddCardEvent.answerChanged(
                newAnswer: CardContent.textContent(text: input)));
          },
        ),
        textContent: (s) => TextCardWidget(
          key: Key('CAns'),
          content: s,
          isEditing: true,
          onTextChanged: (input) {
            context.bloc<AddCardBloc>().add(AddCardEvent.answerChanged(
                newAnswer: CardContent.textContent(text: input)));
          },
        ),
        imageContent: (s) => ClipRRect(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(4),
                bottomLeft: Radius.circular(4)),
            child: InkWell(
                onTap: () {
                  _showImagePickerDialog();
                },
                child: Image.file(
                  File(s.model),
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.65,
                  width: MediaQuery.of(context).size.width,
                ))),
      );

  Widget _renderCard(BuildContext context, AddCardState state) {
    return state.isQuestion
        ? _renderQuestion(context, state.card)
        : _renderAnswer(context, state.card);
  }

  Widget _cardWidget() =>
      BlocBuilder<AddCardBloc, AddCardState>(builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 8,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(state.isQuestion ? 'Question' : 'Answer',
                            style: Theme.of(context).textTheme.headline5),
                      ),
                      IconButton(
                        icon: Icon(
                          CustomIcons.drop_progress,
                          color: Theme.of(context).accentIconTheme.color,
                        ),
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          context
                              .bloc<AddCardBloc>()
                              .add(AddCardEvent.rotateCard());
                        },
                      ),
                    ],
                  ),
                ),
                _renderCard(context, state),
              ],
            ),
          ),
        );
      });
}
