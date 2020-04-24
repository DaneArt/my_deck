import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mydeck/core/extensions/widget_extensions.dart';
import 'package:mydeck/core/helpers/images_util.dart';
import 'package:mydeck/core/icons/custom_icons_icons.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart' as Entity;
import 'package:mydeck/features/my_deck/domain/entities/card_content.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/add_card/add_card_bloc.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/shared/card_content_widget.dart';

class CardEditor extends StatefulWidget {
  final Entity.Card card;

  const CardEditor({Key key, this.card}) : super(key: key);

  @override
  _CardEditorState createState() => _CardEditorState();
}

class _CardEditorState extends State<CardEditor> {
  bool initialized = false;

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
            ModalRoute.of(context).settings.arguments != null
                ? IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete, color: Colors.black),
                  )
                : Spacer(),
            IconButton(
              onPressed: () {
                context
                    .bloc<AddCardBloc>()
                    .add(AddCardEvent.saveChangesAndExit());
              },
              icon: Icon(Icons.check, color: Colors.black),
            ),
          ],
          leading: IconButton(
            onPressed: () {
              context.navigator.pop();
            },
            icon: Icon(Icons.clear, color: Colors.black),
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
        :await ImagesUtil.pickImageFromGallery();
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
                color: Colors.black,
              ),
              onPressed: () {
                _showImagePickerDialog();
              },
            ),
            IconButton(
              icon: Icon(
                Icons.text_fields,
                color: Colors.black,
              ),
              onPressed: () {
                context.bloc<AddCardBloc>().add(AddCardEvent.setTextContent());
              },
            ),
            IconButton(
              icon: Icon(
                Icons.brush,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
      );

  Widget _renderQuestion(BuildContext context, Entity.Card card) =>
      card.question.map(
          noContent: (s) => TextCardContextWidget(
                key: Key('CNoQue'),
                content: CardContent.textContent(text: ''),
                isEditing: true,
                onTextChanged: (input) {
                  context.bloc<AddCardBloc>().add(AddCardEvent.questionChanged(
                      newQuestion: CardContent.textContent(text: input)));
                },
              ),
          textContent: (s) => TextCardContextWidget(
                key: Key('CNoQue'),
                content: CardContent.textContent(text: s.model),
                isEditing: true,
                onTextChanged: (input) {
                  context.bloc<AddCardBloc>().add(AddCardEvent.questionChanged(
                      newQuestion: CardContent.textContent(text: input)));
                },
              ),
          imageContent: (s) => ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(4),
                    bottomLeft: Radius.circular(4)),
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.65,
                      minWidth: MediaQuery.of(context).size.width * 0.8,
                    ),
                    child: InkWell(
                        onTap: () {
                          _showImagePickerDialog();
                        },
                        child: Image.file(File(s.model)))),
              ));

  Widget _renderAnswer(BuildContext context, Entity.Card card) =>
      card.answer.map(
          noContent: (s) => TextCardContextWidget(
                key: Key('CNoAns'),
                content: CardContent.textContent(text: ''),
                isEditing: true,
                onTextChanged: (input) {
                  context.bloc<AddCardBloc>().add(AddCardEvent.answerChanged(
                      newAnswer: CardContent.textContent(text: input)));
                },
              ),
          textContent: (s) => TextCardContextWidget(
                key: Key('CTAns'),
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
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.65,
                      minWidth: MediaQuery.of(context).size.width * 0.8,
                    ),
                    child: InkWell(
                        onTap: () {
                          _showImagePickerDialog();
                        },
                        child: Image.file(File(s.model)))),
              ));

  Widget _renderCard(BuildContext context, AddCardState state) {
    if (!initialized) {
      final Entity.Card defaultCard = ModalRoute.of(context).settings.arguments;
      initialized = true;
      if (defaultCard != null) {
        context.bloc<AddCardBloc>().add(AddCardEvent.initWithCard(defaultCard));
        return state.isQuestion
            ? _renderQuestion(context, defaultCard)
            : _renderAnswer(context, defaultCard);
      }
    }

    return state.isQuestion
        ? _renderQuestion(context, state.card)
        : _renderAnswer(context, state.card);
  }

  Widget _cardWidget() =>
      BlocBuilder<AddCardBloc, AddCardState>(builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(state.isQuestion ? 'Question' : 'Answer'),
                      IconButton(
                        icon: Icon(
                          CustomIcons.drop_progress,
                          color: Colors.black,
                        ),
                        onPressed: () {
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
