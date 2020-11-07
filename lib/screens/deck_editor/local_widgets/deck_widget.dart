
part of '../add_deck_page.dart';

class _DeckWidget extends StatefulWidget {
  final AddDeckBloc _addDeckBloc;
  const _DeckWidget({Key key,@required AddDeckBloc addDeckBloc}) : _addDeckBloc = addDeckBloc, super(key: key);

  @override
  __DeckWidgetState createState() => __DeckWidgetState();
}

class __DeckWidgetState extends State<_DeckWidget> with WidgetsBindingObserver {
  final _titleFieldKey = GlobalKey<FormFieldState>();
  final _descriptionFieldKey = GlobalKey<FormFieldState>();
  
  AddDeckBloc get bloc => widget._addDeckBloc;

  static const _maxDescriptionCount = 70;
  static const _maxTitleCount = 30;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      FocusScope.of(context).unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddDeckBloc, AddDeckState>(
      builder: (context, state) {
        if (state.isLoading) {
          return MDLoadingIndicator();
        } else {
          return state.loadingFailureOrSuccess.fold(
            () => deckWidget(state),
            (result) => result.fold(
              (failure) => MDErrorButton(onPressed: _initDeckFromOnline ),
              (success) => deckWidget(state),
            ),
          );
        }
      },
    );
  }



  //** BEGINING OF WIDGET BUILDING FUNCTIONS

  Widget deckWidget(AddDeckState state) => Container(
        constraints:
            BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 8.0
                ),
                deckOverviewWidget(state),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      buttonsWidget(state),
                      SizedBox(
                        height: 24,
                      ),
                      categoryWidget(state),
                      authorWidget(state),
                    ],
                  ),
                ),
                state.goal == AddDeckGoal.update
                    ? MDDeleteButton(onPressed: _deleteDeck,)
                    : null,
              ],
            ),
          ),
        ),
      );

  Widget deckOverviewWidget(AddDeckState state) => ConstrainedBox(
        constraints:
            BoxConstraints(maxHeight: MediaQuery.of(context).size.height / 3),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 2 - 32,
                child: MDImagePicker(
                    key: Key(state.avatar.value.fold(
                        (l) => l.failedValue.uniqueId.getOrCrash,
                        (r) => r.uniqueId.getOrCrash)),
                    defaultAvatar: state.avatar,
                    onImagePicked: (MDImageFile image) {
                      bloc.add(AddDeckEvent.avatarChanged(image));
                    },
                    enabled:
                        state.status == AddDeckStatus.edit && !state.isPending),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      titleWidget(state),
                      SizedBox(
                        height: 16,
                      ),
                      descriptionWidget(state)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget buttonsWidget(AddDeckState state) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                left: state.status == AddDeckStatus.edit && !state.isPending
                    ? 16.0
                    : 32.0),
            child: state.status == AddDeckStatus.edit && !state.isPending
                ? MDRoundedButton(
                    icon: Icon(state.isShared ? Icons.lock_open : Icons.lock),
                    onPressed:
                        state.status == AddDeckStatus.edit && !state.isPending
                            ? () {
                                bloc.add(AddDeckEvent.changePrivacy());
                              }
                            : null,
                    title: Text('PRIVACY'),
                  )
                : null
          ),
          state.status == AddDeckStatus.look
              ? Padding(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: MDRoundedButton(
                    icon: Icon(CustomIcons.dumbbell),
                    onPressed: () {},
                    title: Text('TRAIN'),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 16.0, right: 32.0),
                  child: Column(
                    children: <Widget>[
                      Text('Quick train'),
                      Checkbox(
                          value: state.availableQuickTrain,
                          onChanged: !state.isPending
                              ? (value) {
                                  bloc.add(
                                      AddDeckEvent.quickTrainStateChanged());
                                }
                              : null),
                    ],
                  ),
                ),
        ],
      );

  Widget authorWidget(AddDeckState state) => Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Author', style: Theme.of(context).textTheme.headline5),
            Row(
              children: <Widget>[
                Text(state.author.username.getOrCrash),
                SizedBox(
                  width: 8,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              '$BASE_URL_DEV/mydeckapi/media/media/${state.author.avatar.uniqueId.getOrCrash}'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  Widget descriptionWidget(AddDeckState state) =>
      state.status == AddDeckStatus.edit && !state.isPending
          ? TextFormField(
              key: _descriptionFieldKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              initialValue:
                  state.description.value.fold((l) => l.failedValue, (r) => r),
              textInputAction: TextInputAction.done,
              style: Theme.of(context).textTheme.bodyText1,
              onChanged: (input) =>
                  bloc.add(AddDeckEvent.descriptionChanged(input)),
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                  hintText: S.of(context).editor_description_enter,
                  hintMaxLines: 2,
                  alignLabelWithHint: true,
                  border: UnderlineInputBorder(),
                  labelText: S.of(context).editor_description,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                  hoverColor: Theme.of(context).accentColor,
                  labelStyle: Theme.of(context).textTheme.subtitle2),
              inputFormatters: [
                new LengthLimitingTextInputFormatter(_maxDescriptionCount),
              ],
              maxLines: 3,
              maxLength: _maxDescriptionCount,
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${S.of(context).editor_description}:',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                ),
                Text(
                  state.description.value.fold(
                      (l) => l.failedValue.isNotEmpty
                          ? l.failedValue
                          : S.of(context).editor_no_description,
                      (r) => r.isNotEmpty ? r : "No description"),
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            );

  Widget titleWidget(AddDeckState state) =>
      state.status == AddDeckStatus.edit && !state.isPending
          ? TextFormField(
              key: _titleFieldKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              initialValue:
                  state.title.value.fold((l) => l.failedValue, (r) => r),
              onChanged: (input) {
                bloc.add(AddDeckEvent.titleChanged(input));
              },
              style: Theme.of(context).textTheme.bodyText1,
              textInputAction: TextInputAction.done,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                hintText: S.of(context).editor_title_enter,
                labelText: S.of(context).editor_title + '*',
                labelStyle: Theme.of(context).textTheme.subtitle2,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 4, vertical: 8),
              ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(_maxTitleCount),
              ],
              maxLines: null,
              maxLength: _maxTitleCount,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${S.of(context).editor_title}:',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                ),
                Text(
                  state.title.value.fold(
                      (l) => l.failedValue.isNotEmpty
                          ? l.failedValue
                          : S.of(context).editor_no_title,
                      (r) => r),
                  style: Theme.of(context).textTheme.subtitle1,
                  maxLines: null,
                  softWrap: false,
                ),
              ],
            );

  Widget categoryWidget(AddDeckState state) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            S.of(context).editor_category,
            style: Theme.of(context).textTheme.headline5,
          ),
          state.status == AddDeckStatus.edit && !state.isPending
              ? _CategoryPicker(
                  onChanged: (value) {
                    bloc.add(AddDeckEvent.categoryChanged(value));
                  },
                  baseCategory: state.category,
                )
              : Text(state.category.categoryName),
        ],
      );

  //END OF WIDGET BUILDING FUNCTIONS

  //BEGIN OF LOGIC FUNCTIONS
  _initDeckFromOnline() => bloc.add(AddDeckEvent.initFromOnline());
  _deleteDeck() => bloc.add(AddDeckEvent.deleteDeck());
}