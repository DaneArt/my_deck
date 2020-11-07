
part of '../card_editor.dart';

class _CECard extends StatelessWidget {
  final int cardIndex;
  final CECardCubit cubit;
  final bool editable;
  final Function(MDECard updatedCard) onUpdate;

  const _CECard(
      {Key key,
      @required this.cardIndex,
      @required this.cubit,
      this.onUpdate,
      @required this.editable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MDNoScrollGlowBehaviour(),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
  
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
      BuildContext context, MDEFile content, double height, double width) {
    return Container(
      key: ValueKey(content.uniqueId.toString() + editable.toString()),
      width: width,
      height: height,
      child: content is MDImageFile
          ? GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) => MDImagePickerModalBottomSheet(
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
                child: BlocProvider<MDContentCubit<File>>(
                  create: (context) => MDContentCubit<File>(),
                  child: MDImage(
                    key: ValueKey(content.uniqueId.getOrCrash + " Image"),
                    image: content,
                    width: width,
                    editable: editable,
                    height: height,
                  ),
                ),
              ),
            )
          : BlocProvider<MDContentCubit<String>>(
            create: (context) => MDContentCubit<String>(),
            child: editable
              ? MDEditText(
                  key: ValueKey(content.uniqueId.getOrCrash + " EditText"),
                  initialFile: content,
                  height: height,
                  width: width,
                  onChanged: (value) {
                    cubit.updateText(value);
                  },
                )
              : MDText(
                  key: ValueKey(content.uniqueId.getOrCrash + " Text"),
                  text: content,
                ),
          ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(8))),
    );
  }
}
