import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mydeck/blocs/add_deck/add_deck_bloc.dart';
import 'package:mydeck/blocs/card_editor/card_editor_bloc.dart';
import 'package:mydeck/cubits/ce_card/ce_card_cubit.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/utils/images_util.dart';
import 'package:mydeck/screens/deck_editor/local_widgets/card_fraction_pagination_builder.dart';
import 'package:mydeck/models/entitites/card.dart';

import 'package:mydeck/widgets/image_picker_modal_bottom_sheet.dart';

import 'local_widgets/ce_card.dart';

class CardEditorPage extends StatefulWidget {
  final AddDeckGoal goal;

  const CardEditorPage({Key key, this.goal}) : super(key: key);

  @override
  _CardEditorPageState createState() => _CardEditorPageState();
}

class _CardEditorPageState extends State<CardEditorPage> {
  var status = AddDeckStatus.look;

  @override
  void initState() {
    if (widget.goal == AddDeckGoal.create) {
      status = AddDeckStatus.edit;
    } else {
      status = AddDeckStatus.look;
    }
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
          actions: widget.goal != AddDeckGoal.look
              ? <Widget>[
                  widget.goal != AddDeckGoal.look &&
                          status == AddDeckStatus.edit
                      ? IconButton(
                          onPressed: () {
                            BlocProvider.of<CardEditorBloc>(context)
                                .add(CardEditorEvent.deleteCard());
                          },
                          icon: Icon(Icons.delete,
                              color: Theme.of(context).iconTheme.color),
                        )
                      : Container(),
                  widget.goal != AddDeckGoal.look &&
                          status == AddDeckStatus.edit
                      ? IconButton(
                          onPressed: () {
                            BlocProvider.of<CardEditorBloc>(context)
                                .add(CardEditorEvent.addCard());
                          },
                          icon: Icon(Icons.add,
                              color: Theme.of(context).iconTheme.color),
                        )
                      : Container(),
                  widget.goal != AddDeckGoal.look &&
                          status == AddDeckStatus.edit
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              status = AddDeckStatus.look;
                            });
                          },
                          icon: Icon(Icons.check,
                              color: Theme.of(context).iconTheme.color),
                        )
                      : IconButton(
                          onPressed: () {
                            context
                                .bloc<CardEditorBloc>()
                                .add(CardEditorEvent.backupCubits());
                            setState(() {
                              status = AddDeckStatus.edit;
                            });
                          },
                          icon: Icon(Icons.edit,
                              color: Theme.of(context).iconTheme.color),
                        ),
                ]
              : null,
          leading: IconButton(
            onPressed: () {
              if (status == AddDeckStatus.edit) {
                setState(() {
                  status = AddDeckStatus.look;
                });
                context.bloc<CardEditorBloc>().add(CardEditorEvent.undoEdits());
              } else {
                context
                    .bloc<CardEditorBloc>()
                    .add(CardEditorEvent.saveChangesAndExit());
              }
            },
            icon: Icon(
                status == AddDeckStatus.edit ? Icons.clear : Icons.arrow_back,
                color: Theme.of(context).iconTheme.color),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: BlocListener<CardEditorBloc, CardEditorState>(
          listener: (context, state) {
            if (state.saveChangesAndExit) {
              Navigator.of(context)
                  .pop(state.cardCubits.map((c) => c.state.card).toList());
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
      context.bloc<CardEditorBloc>().add(CardEditorEvent.setContent(
          ImageFile(uniqueId: UniqueId(), file: image)));
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
                context.bloc<CardEditorBloc>().add(CardEditorEvent.setContent(
                    TextFile(uniqueId: UniqueId(), text: "")));
              },
            ),
          ],
        ),
      );

  Widget _cardsWidget() => BlocBuilder<CardEditorBloc, CardEditorState>(
      buildWhen: (previous, current) => current.rebuild,
      builder: (context, state) {
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
          itemCount: state.cardCubits.length,
          itemBuilder: (context, index) => CECard(
            key: ValueKey(index),
            cardIndex: index,
            cubit: state.cardCubits[index],
          ),
        );
      });
}
