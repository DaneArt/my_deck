import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mydeck/cubits/ce_card/ce_card_cubit.dart';
import 'package:mydeck/cubits/ce_card/ce_card_state.dart';
import 'package:mydeck/cubits/md_image/md_image_cubit.dart';
import 'package:mydeck/generated/l10n.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/screens/deck_editor/local_widgets/md_edit_text.dart';
import 'package:mydeck/utils/custom_icons_icons.dart';
import 'package:mydeck/models/entitites/card.dart' as entity;
import 'package:mydeck/utils/dependency_injection.dart';
import 'package:mydeck/widgets/image_picker_modal_bottom_sheet.dart';
import 'package:mydeck/widgets/md_image.dart';
import 'package:mydeck/widgets/no_scroll_glow_behaviour.dart';

class CECard extends StatelessWidget {
  final int cardIndex;
  final CECardCubit cubit;
  final Function(entity.Card updatedCard) onUpdate;
  const CECard(
      {Key key, @required this.cardIndex, @required this.cubit, this.onUpdate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: NoScrollGlowBehaviour(),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: BlocBuilder<CECardCubit, CECardState>(
              cubit: cubit,
              builder: (context, state) {
                return Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
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
                              cubit.rotateCard();
                            },
                            icon: Icon(Icons.refresh,
                                color: Theme.of(context).iconTheme.color,
                                size: 32),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 2),
                      child: Divider(
                        color: Colors.grey,
                        height: 1,
                      ),
                    ),
                    state.isQuestion
                        ? _renderContent(
                            context,
                            state.card.question,
                            MediaQuery.of(context).size.width,
                            MediaQuery.of(context).size.height,
                          )
                        : _renderContent(
                            context,
                            state.card.answer,
                            MediaQuery.of(context).size.width,
                            MediaQuery.of(context).size.height,
                          )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _renderContent(
      BuildContext context, MDFile content, double height, double width) {
    return Container(
      key: ValueKey(content.uniqueId.getOrCrash),
      width: width,
      height: height,
      child: content is ImageFile
          ? GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) => ImagePickerModalBottomSheet(
                          onPickImage: (ImageSource imageSource) async {
                            final newImage = await ImagePicker()
                                .getImage(source: imageSource);
                            if (newImage != null) {
                              cubit.updateImage(File(newImage.path));
                            } else {
                              showToast("Image not selected");
                            }
                          },
                        ));
              },
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(8)),
                child: BlocProvider(
                  create: (context) => sl.get<MDContentCubit>(),
                  child: MDImage(
                    key: ValueKey(content.uniqueId),
                    image: content,
                    width: width,
                    height: height,
                  ),
                ),
              ),
            )
          : MDEditText(
              key: ValueKey(content.uniqueId),
              initialFile: content,
              height: height,
              width: width,
              onChanged: (value) {
                cubit.updateText(value);
              },
            ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(8))),
    );
  }
}
