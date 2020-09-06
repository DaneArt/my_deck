import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mydeck/blocs/card_editor/card_editor_bloc.dart';
import 'package:mydeck/utils/images_util.dart';
import 'package:mydeck/screens/deck_editor/local_widgets/card_fraction_pagination_builder.dart';
import 'package:mydeck/models/entitites/card.dart' as Entity;
import 'package:mydeck/models/entitites/md_file.dart';

import 'package:mydeck/generated/l10n.dart';
import 'package:mydeck/widgets/image_picker_modal_bottom_sheet.dart';
import 'package:mydeck/widgets/md_image.dart';
import 'package:mydeck/widgets/md_text.dart';

import 'local_widgets/md_edit_text.dart';

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
  Widget build(context) {
    return WillPopScope(
      onWillPop: () async {
        context
            .bloc<CardEditorBloc>()
            .add(CardEditorEvent.saveChangesAndExit());
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: <Widget>[
            widget.isCreating
                ? IconButton(
                    onPressed: () {
                      BlocProvider.of<CardEditorBloc>(context)
                          .add(CardEditorEvent.deleteCard());
                    },
                    icon: Icon(Icons.delete,
                        color: Theme.of(context).iconTheme.color),
                  )
                : Container(),
          ],
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.clear, color: Theme.of(context).iconTheme.color),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: BlocListener<CardEditorBloc, CardEditorState>(
          listener: (context, state) {
            if (state.saveChangesAndExit) {
              Navigator.of(context).pop(state.sourceCards);
            }
          },
          child: _cardsWidget(),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 8,
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
          .bloc<CardEditorBloc>()
          .add(CardEditorEvent.setImageContent(image: image));
    }
  }

  Widget _controls() => Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.photo,
                color: Theme.of(context).iconTheme.color,
              ),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8))),
                    builder: (context) => ImagePickerModalBottomSheet(
                          onPickImage: _getImage,
                        ));
              },
            ),
            IconButton(
              icon: Icon(
                Icons.text_fields,
                color: Theme.of(context).iconTheme.color,
              ),
              onPressed: () {
                context
                    .bloc<CardEditorBloc>()
                    .add(CardEditorEvent.setTextContent());
              },
            ),
          ],
        ),
      );

  Widget _renderQuestion(Entity.Card card) => card.question is ImageFile
      ? MDImage(
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 0.9,
          image: card.question)
      : MDEditText(
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 0.9,
          initialFile: card.question);

  Widget _renderAnswer(Entity.Card card) => card.answer is ImageFile
      ? MDImage(
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 0.9,
          image: card.answer)
      : MDEditText(
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 0.9,
          initialFile: card.answer);

  Widget _renderCard(CardEditorState state, int cardIndex) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      margin: const EdgeInsets.only(bottom: 56.0),
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
                    BlocProvider.of<CardEditorBloc>(context)
                        .add(CardEditorEvent.rotateCard());
                  },
                  icon: Icon(Icons.refresh,
                      color: Theme.of(context).iconTheme.color, size: 32),
                )
              ],
            ),
          ),
          state.isQuestion
              ? _renderQuestion(state.sourceCards[cardIndex])
              : _renderAnswer(state.sourceCards[cardIndex])
        ],
      ),
    );
  }

  Widget _cardsWidget() =>
      BlocBuilder<CardEditorBloc, CardEditorState>(builder: (context, state) {
        return Swiper(
          key: UniqueKey(),
          //It fixes the 'ScrollController not attached to any scroll views. Dunno why))'
          loop: false,
          viewportFraction: 0.8,
          scale: 0.9,
          itemWidth: MediaQuery.of(context).size.width,
          itemHeight: MediaQuery.of(context).size.height,
          onIndexChanged: (newIndex) {
            BlocProvider.of<CardEditorBloc>(context)
                .add(CardEditorEvent.changeIndex(newIndex: newIndex));
          },
          pagination: SwiperPagination(
            builder: CardFractionPaginationBuilder(
              activeColor: Colors.blueGrey,
              color: Colors.blueGrey.withOpacity(0.5),
            ),
          ),
          index: state.currentCardIndex,
          itemCount: state.sourceCards.length + 1,
          itemBuilder: (context, index) => index == state.sourceCards.length
              ? Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                  margin: const EdgeInsets.only(bottom: 56.0),
                  elevation: 8,
                  key: ValueKey(state.sourceCards.length),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Theme.of(context).iconTheme.color,
                        size: 168,
                      ),
                    ),
                  ),
                )
              : _renderCard(state, index),
        );
      });
}
