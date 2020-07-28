import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mydeck/blocs/add_card/add_card_bloc.dart';
import 'package:mydeck/utils/widget_extensions.dart';
import 'package:mydeck/utils/images_util.dart';
import 'package:mydeck/screens/deck_editor/local_widgets/card_fraction_pagination_builder.dart';
import 'package:mydeck/models/entitites/card.dart' as Entity;
import 'package:mydeck/models/entitites/my_deck_file.dart';
import 'package:mydeck/widgets/card_content_widget.dart';
import 'package:mydeck/generated/l10n.dart';

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
                      BlocProvider.of<AddCardBloc>(context)
                          .add(AddCardEvent.deleteCard());
                    },
                    icon: Icon(Icons.delete,
                        color: Theme.of(context).accentIconTheme.color),
                  )
                : Container(),
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
              context.navigator.pop(state.sourceCards);
            }
          },
          child: _cardsWidget(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.bloc<AddCardBloc>().add(AddCardEvent.saveChangesAndExit());
          },
          child: Icon(
            Icons.check,
            color: Colors.white,
          ),
          elevation: 8.0,
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 8.0,
          child: _controls(),
          shape: CircularNotchedRectangle(),
          color: Colors.white,
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
                          Text(S.of(context).image_pick_gallery),
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
                          Text(S.of(context).image_pick_photo),
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
          mainAxisAlignment: MainAxisAlignment.start,
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
          ],
        ),
      );

  Widget _renderQuestion(BuildContext context, Entity.Card card) =>
      card.question is ImageFile
          ? ImageCardContentWidget(imageFile: card.question)
          : TextCardWidget(
              key: Key('CQue ${card.id}'),
              contentText: card.question.getFileOrCrash().readAsStringSync(),
              isEditing: true,
              onTextChanged: (input) {
                context.bloc<AddCardBloc>().add(
                      AddCardEvent.questionChanged(newQuestion: null),
                    );
              },
            );

  Widget _renderAnswer(BuildContext context, Entity.Card card) =>
      card.question is ImageFile
          ? ImageCardContentWidget(imageFile: card.answer)
          : TextCardWidget(
              key: Key('CAns ${card.id}'),
              contentText: card.answer.getFileOrCrash().readAsStringSync(),
              isEditing: true,
              onTextChanged: (input) {
                context.bloc<AddCardBloc>().add(
                      AddCardEvent.answerChanged(newAnswer: null),
                    );
              },
            );

  Widget _renderCard(BuildContext context, AddCardState state, int cardIndex) {
    return Card(
      key: ValueKey(cardIndex),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                    state.isQuestion
                        ? S.of(context).meta_question
                        : S.of(context).meta_answer,
                    style: Theme.of(context).textTheme.headline5),
                IconButton(
                  onPressed: () {
                    BlocProvider.of<AddCardBloc>(context)
                        .add(AddCardEvent.rotateCard());
                  },
                  icon: Icon(Icons.refresh,
                      color: Theme.of(context).accentIconTheme.color, size: 32),
                )
              ],
            ),
          ),
          state.isQuestion
              ? _renderQuestion(context, state.sourceCards[cardIndex])
              : _renderAnswer(context, state.sourceCards[cardIndex])
        ],
      ),
    );
  }

  Widget _cardsWidget() => BlocBuilder<AddCardBloc, AddCardState>(
      condition: (prev, next) => true,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: Swiper(
            key: UniqueKey(),
            //It fixes the 'ScrollController not attached to any scroll views. Dunno why))'
            loop: false,
            viewportFraction: 0.8,
            scale: 0.9,
            itemWidth: MediaQuery.of(context).size.width,
            itemHeight: MediaQuery.of(context).size.height,
            onIndexChanged: (newIndex) {
              Future.delayed(Duration(milliseconds: 300), () {
                BlocProvider.of<AddCardBloc>(context)
                    .add(AddCardEvent.changeIndex(newIndex: newIndex));
              });
            },
            pagination: SwiperPagination(
              builder: CardFractionPaginationBuilder(
                activeColor: Theme.of(context).accentColor,
                color: Theme.of(context).accentColor.withOpacity(0.5),
              ),
            ),
            index: state.currentCardIndex,
            itemCount: state.sourceCards.length + 1,
            itemBuilder: (context, index) => index == state.sourceCards.length
                ? Card(
                    key: ValueKey(state.sourceCards.length),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Theme.of(context).accentIconTheme.color,
                          size: 168,
                        ),
                      ),
                    ),
                  )
                : _renderCard(context, state, index),
          ),
        );
      });
}
