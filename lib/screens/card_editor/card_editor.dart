import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';

import 'package:mydeck/blocs/add_deck/add_deck_bloc.dart';
import 'package:mydeck/blocs/card_editor/card_editor_bloc.dart';
import 'package:mydeck/cubits/ce_card/ce_card_cubit.dart';
import 'package:mydeck/cubits/ce_card/ce_card_state.dart';
import 'package:mydeck/cubits/md_content/md_content_cubit.dart';
import 'package:mydeck/generated/l10n.dart';
import 'package:mydeck/models/entitites/mde_card.dart';
import 'package:mydeck/models/entitites/mde_file.dart';
import 'package:mydeck/models/value_objects/unique_id.dart';
import 'package:mydeck/utils/images_util.dart';
import 'package:mydeck/utils/md_constants.dart';
import 'package:mydeck/widgets/md_edit_text.dart';
import 'package:mydeck/widgets/md_image.dart';
import 'package:mydeck/widgets/md_image_picker_modal_bottom_sheet.dart';
import 'package:mydeck/widgets/md_no_scroll_glow_behaviour.dart';
import 'package:mydeck/widgets/md_text.dart';

part './local_widgets/ce_card.dart';
part './local_widgets/card_fraction_pagination_builder.dart';

class CardEditor extends StatefulWidget {
  CardEditor({Key key}) : super(key: key);

  @override
  _CardEditorState createState() => _CardEditorState();
}

class _CardEditorState extends State<CardEditor> {
  final _scaffoldKey = GlobalKey();

  CardEditorBloc get _bloc =>
      _scaffoldKey.currentContext.read<CardEditorBloc>();

  @override
  Widget build(context) {
    return BlocConsumer<CardEditorBloc, CardEditorState>(
      listener: (context, state) {
        if (state.saveChangesAndExit) {
          Navigator.of(_scaffoldKey.currentContext)
              .pop(state.cardCubits.map((c) => c.state.card).toList());
        }
      },
      builder: (context, state) {
        Logger().d("Rebuild whole list");
        return WillPopScope(
          onWillPop: () async {
            _bloc.add(CardEditorEvent.saveChangesAndExit());
            return false;
          },
          child: Scaffold(
            key: _scaffoldKey,
            appBar: _buildAppBar(state),
            body: _buildCardsList(state),
            bottomNavigationBar: BottomAppBar(
              elevation: 8,
              child:
                  state.status == AddDeckStatus.edit ? _buildControls() : null,
              shape: CircularNotchedRectangle(),
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }

  AppBar _buildAppBar(CardEditorState state) => AppBar(
        elevation: 0,
        actions: _buildAppBarActions(state),
        leading: IconButton(
          onPressed: () {
            if (state.status == AddDeckStatus.edit) {
              _bloc.add(CardEditorEvent.changeStatus());
              _bloc.add(CardEditorEvent.undoEdits());
            } else {
              _bloc.add(CardEditorEvent.saveChangesAndExit());
            }
          },
          icon: Icon(
              state.status == AddDeckStatus.edit
                  ? Icons.clear
                  : Icons.arrow_back,
              color: Theme.of(context).iconTheme.color),
        ),
        backgroundColor: Colors.transparent,
      );

  _getImage(ImageSource source, BuildContext context) async {
    final image = source == ImageSource.camera
        ? await ImagesUtil.pickImageFromCamera()
        : await ImagesUtil.pickImageFromGallery();
    if (image != null) {
      BlocProvider.of<CardEditorBloc>(_scaffoldKey.currentContext).add(
          CardEditorEvent.setContent(
              MDImageFile(uniqueId: UniqueId(), file: File(image.path))));
    }
  }

  Widget _buildControls() => Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildImageContentButton(),
            _buildTextContentButton(),
          ],
        ),
      );

  Widget _buildTextContentButton() => IconButton(
        icon: Icon(
          Icons.text_fields,
          color: Theme.of(context).iconTheme.color,
        ),
        onPressed: () {
          _bloc.add(CardEditorEvent.setContent(
              MDTextFile(uniqueId: UniqueId(), text: "")));
        },
      );

  Widget _buildImageContentButton() => IconButton(
        icon: Icon(
          Icons.photo,
          color: Theme.of(context).iconTheme.color,
        ),
        onPressed: () {
          showModalBottomSheet(
              context: _scaffoldKey.currentContext,
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8))),
              builder: (context) => MDImagePickerModalBottomSheet(
                    onPickImage: (imageSource) =>
                        _getImage(imageSource, _scaffoldKey.currentContext),
                  ));
        },
      );

  Widget _buildCardsList(CardEditorState state) => Swiper(
        key: ValueKey("Swiper: ${state.cardCubits.length}"),
        loop: false,
        viewportFraction: 0.8,
        scale: 0.9,
        itemWidth: MediaQuery.of(context).size.width,
        itemHeight: MediaQuery.of(context).size.height,
        onIndexChanged: (newIndex) {
          _bloc.add(CardEditorEvent.changeIndex(newIndex: newIndex));
        },
        pagination: SwiperPagination(
          builder: _CardFractionPaginationBuilder(
            activeColor: Colors.blueGrey,
            color: Colors.blueGrey.withOpacity(0.5),
          ),
        ),
        index: state.currentCardIndex,
        itemCount: state.cardCubits.length,
        itemBuilder: (context, index) => Center(
          child: _CECard(
            key: ValueKey(index),
            cardIndex: index,
            cubit: state.cardCubits[index],
            editable: state.status == AddDeckStatus.edit,
          ),
        ),
      );

  List<Widget> _buildAppBarActions(CardEditorState state) =>
      state.goal != AddDeckGoal.look
          ? <Widget>[
              _buildDeleteIconButton(state),
              _buildAddIconButton(state),
              _buildEditStateButton(state),
            ]
          : null;

  Widget _buildDeleteIconButton(CardEditorState state) =>
      state.goal != AddDeckGoal.look && state.status == AddDeckStatus.edit
          ? IconButton(
              onPressed: () {
                _bloc.add(CardEditorEvent.deleteCard());
              },
              icon:
                  Icon(Icons.delete, color: Theme.of(context).iconTheme.color),
            )
          : Container();

  Widget _buildAddIconButton(CardEditorState state) =>
      state.goal != AddDeckGoal.look && state.status == AddDeckStatus.edit
          ? IconButton(
              onPressed: () {
                _bloc.add(CardEditorEvent.addCard());
              },
              icon: Icon(Icons.add, color: Theme.of(context).iconTheme.color),
            )
          : Container();

  Widget _buildEditStateButton(CardEditorState state) =>
      state.goal != AddDeckGoal.look && state.status == AddDeckStatus.edit
          ? IconButton(
              onPressed: () {
                _bloc.add(CardEditorEvent.changeStatus());
              },
              icon: Icon(Icons.check, color: Theme.of(context).iconTheme.color),
            )
          : IconButton(
              onPressed: () {
                _bloc.add(CardEditorEvent.backupCubits());
                _bloc.add(CardEditorEvent.changeStatus());
              },
              icon: Icon(Icons.edit, color: Theme.of(context).iconTheme.color),
            );
}
