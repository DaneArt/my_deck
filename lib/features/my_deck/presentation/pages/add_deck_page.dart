import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydeck/core/extensions/widget_extensions.dart';
import 'package:mydeck/core/meta/my_deck_routes.dart';
import 'package:mydeck/features/my_deck/data/models/category_model.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart' as Entity;
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/add_deck/add_deck_bloc.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/add_deck/category_picker.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/add_deck/in_deck_card_view.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/add_deck/pick_image_view.dart';

class AddDeckArguments {
  final bool isEditing;
  final Deck deck;

  AddDeckArguments({this.isEditing = true, @required this.deck});
}

class AddDeckPage extends StatelessWidget {
  final AddDeckArguments arguments;

  const AddDeckPage({Key key, @required this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AddDeckTabView(arguments: arguments);
  }
}

class AddDeckTabView extends StatefulWidget {
  final AddDeckArguments arguments;

  const AddDeckTabView({Key key, @required this.arguments}) : super(key: key);

  @override
  _AddDeckTabViewState createState() => _AddDeckTabViewState();
}

class _AddDeckTabViewState extends State<AddDeckTabView>
    with TickerProviderStateMixin<AddDeckTabView>,WidgetsBindingObserver {
  TabController controller;
  ScrollController scrollController;
  AnimationController _animationController;
  Animation _fabAnimation;

  @override
  void initState() {
    if (widget.arguments.deck != null) {
      BlocProvider.of<AddDeckBloc>(context)
          .add(AddDeckEvent.initWithDeck(widget.arguments.deck));
    }
    super.initState();
    _animationController =
        AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    _fabAnimation =
        Tween<double>(begin: 0, end: 1).animate(_animationController);

    controller = TabController(
      length: 2,
      vsync: this,
    );
    controller.addListener(() {
      FocusScope.of(context).unfocus();
      if (controller.index == 1) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });

    scrollController = ScrollController();
    scrollController.addListener(() {
      switch (scrollController.position.userScrollDirection) {
        case ScrollDirection.forward:
          _animationController.forward();
          break;
        case ScrollDirection.reverse:
          _animationController.reverse();
          break;
        case ScrollDirection.idle:
          break;
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    _animationController.dispose();
    super.dispose();
  }

  Widget fieldCheckItem({@required String text, @required bool isValid}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          isValid
              ? Icon(
                  Icons.check,
                  color: Colors.green,
                  size: 32,
                )
              : Icon(
                  Icons.clear,
                  color: Colors.red,
                  size: 32,
                ),
          Text(text,
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600))
        ],
      ),
    );
  }

  _showInvalidFieldsDialog(
      {@required BuildContext context, @required AddDeckState state}) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              title: Text("Can't save deck. Correct mistakes and try again.",
                  textAlign: TextAlign.center),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  fieldCheckItem(
                      text:
                          "Title doesn't contain  \\\^\$\.\!\? and \nlonger than 6 characters.",
                      isValid: state.title.value.isRight()),
                  fieldCheckItem(
                      text: "Deck has avatar.",
                      isValid: state.avatar.value.isRight()),
                  fieldCheckItem(
                      text: "Created at least 2 cards.",
                      isValid: state.cardslist.length >= 2),
                ],
              ),
              actions: <Widget>[
                FlatButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('OK'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        BlocProvider.of<AddDeckBloc>(context).add(AddDeckEvent.saveChanges());
        return false;
      },
      child: Scaffold(
        body: BlocListener<AddDeckBloc, AddDeckState>(
          listener: (context, state) {
            state.saveFailureOrSuccessOption.fold(
                () => null,
                (some) => some.fold((failure) {
                      failure.maybeMap(
                          fieldsInvalid: (f) => _showInvalidFieldsDialog(
                              context: context, state: state),
                          insertFailure: (f) {
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Error while saving.'),
                                action: SnackBarAction(
                                    label: 'Retry',
                                    onPressed: () =>
                                        BlocProvider.of<AddDeckBloc>(context)
                                            .add(AddDeckEvent.saveChanges())),
                              ),
                            );
                          },
                          updateFailure: (f) {
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Error while saving.'),
                                action: SnackBarAction(
                                    label: 'Retry',
                                    onPressed: () =>
                                        BlocProvider.of<AddDeckBloc>(context)
                                            .add(AddDeckEvent.saveChanges())),
                              ),
                            );
                          },
                          deleteFailure: (f) {
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Error while saving.'),
                                action: SnackBarAction(
                                    label: 'Retry',
                                    onPressed: () =>
                                        BlocProvider.of<AddDeckBloc>(context)
                                            .add(AddDeckEvent.deleteDeck())),
                              ),
                            );
                          },
                          orElse: () {
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Unhandled failure.'),
                                action: SnackBarAction(
                                    label: 'OK', onPressed: () {}),
                              ),
                            );
                          });
                    }, (success) => Navigator.of(context).pop()));
          },
          child: NestedScrollView(
            headerSliverBuilder: (context, value) => [
              SliverAppBar(
                title: Text("Edit deck"),
                snap: true,
                floating: true,
                pinned: true,
                leading: IconButton(
                  icon: Icon(
                      widget.arguments != null && widget.arguments.isEditing
                          ? Icons.clear
                          : Icons.arrow_back),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                actions: <Widget>[
                  widget.arguments != null &&
                          widget.arguments.deck != null &&
                          widget.arguments.isEditing
                      ? IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            BlocProvider.of<AddDeckBloc>(context)
                                .add(AddDeckEvent.deleteDeck());
                          },
                        )
                      : Spacer(),
                  widget.arguments != null && widget.arguments.isEditing
                      ? IconButton(
                          icon: Icon(Icons.check),
                          onPressed: () {
                            BlocProvider.of<AddDeckBloc>(context)
                                .add(AddDeckEvent.saveChanges());
                          },
                        )
                      : Spacer(),
                ],
                bottom: TabBar(
                  tabs: [
                    Tab(text: 'Deck'),
                    Tab(text: 'Cards'),
                  ],
                  controller: controller,
                ),
              ),
            ],
            body: Container(
              child: TabBarView(
                controller: controller,
                children: <Widget>[
                  _DeckPage(arguments: widget.arguments),
                  _CardsPage(
                    scrollController: scrollController,
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FadeTransition(
          opacity: _fabAnimation,
          child: ScaleTransition(
            scale: _fabAnimation,
            child: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () async {
                final newCard =
                    await context.navigator.pushNamed(MyDeckRoutes.addCard);
                if (newCard != null) {
                  context
                      .bloc<AddDeckBloc>()
                      .add(AddDeckEvent.cardAdded(newCard));
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _DeckPage extends StatefulWidget {
  final AddDeckArguments arguments;

  _DeckPage({Key key, @required this.arguments}) : super(key: key);

  @override
  _DeckPageState createState() => _DeckPageState();
}

class _DeckPageState extends State<_DeckPage> with WidgetsBindingObserver {
  bool get isEditing => widget.arguments.isEditing;

  final _formKey = GlobalKey<FormState>();
  final _titleFieldKey = GlobalKey<FormFieldState>();
  final _descriptionFieldKey = GlobalKey<FormFieldState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  static const _maxDescriptionCount = 70;
  static const _maxTitleCount = 30;
  int _currentDescriptionCount = 0;
  bool initialized;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);

    _currentDescriptionCount = widget.arguments.deck != null
        ? widget.arguments.deck.description.length
        : 0;
    initialized = false;
    _titleController.text =
        widget.arguments != null && widget.arguments.deck != null
            ? widget.arguments.deck.title
            : '';
    _descriptionController.text =
        widget.arguments != null && widget.arguments.deck != null
            ? widget.arguments.deck.description
            : '';

    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _titleController.dispose();
    _descriptionController.dispose();
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
    return Container(
      key: UniqueKey(),
      child: BlocBuilder<AddDeckBloc, AddDeckState>(builder: (context, state) {
        if (!initialized) {
          final titleText =
              state.title.value.fold((f) => f.failedValue, (v) => v);
          _titleController.text = titleText;

          _descriptionController.text =
              state.description.value.fold((f) => f.failedValue, (v) => v);
          Future.delayed(Duration(milliseconds: 300),(){
            setState(() {
              initialized = true;
            });
          });
        }
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: ImagePickerWidget(
                    onImagePicked: isEditing
                        ? (image) {
                            BlocProvider.of<AddDeckBloc>(context)
                                .add(AddDeckEvent.avatarChanged(image));
                          }
                        : null,
                    defaultImage: state.avatar,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Flexible(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        isEditing
                            ? TextFormField(
                                key: _titleFieldKey,
                                autovalidate: true,
                                controller: _titleController,
                                onChanged: (input) {
                                  BlocProvider.of<AddDeckBloc>(context)
                                      .add(AddDeckEvent.titleChanged(input));
                                },
                                textInputAction: TextInputAction.done,
                                textCapitalization:
                                    TextCapitalization.sentences,
                                decoration: InputDecoration(
                                  hintText: 'Enter title',
                                  labelText: 'Title*',
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 8),
                                ),
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(
                                      _maxTitleCount),
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Title:',
                                    style: Theme.of(context).textTheme.title,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4),
                                  ),
                                  Text(widget.arguments.deck != null
                                      ? widget.arguments.deck.title
                                      : ''),
                                ],
                              ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                        ),
                        TextFormField(
                          key: _descriptionFieldKey,
                          autovalidate: true,
                          controller: _descriptionController,
                          textInputAction: TextInputAction.done,
                          onChanged: (input) {
                            setState(() {
                              _currentDescriptionCount = input.length;
                            });
                            BlocProvider.of<AddDeckBloc>(context)
                                .add(AddDeckEvent.descriptionChanged(input));
                          },
                          textCapitalization: TextCapitalization.sentences,
                          decoration: InputDecoration(
                            hintText: 'Enter description(optional)',
                            hintMaxLines: 2,
                            labelText: 'Description',
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 4, vertical: 8),
                            hoverColor: Theme.of(context).accentColor,
                            counterText: !isEditing
                                ? ''
                                : '$_currentDescriptionCount/$_maxDescriptionCount',
                          ),
                          inputFormatters: [
                            new LengthLimitingTextInputFormatter(
                                _maxDescriptionCount),
                          ],
                          maxLines: null,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            isEditing
                ? Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Share with community?',
                          style: Theme.of(context).textTheme.body2,
                        ),
                        Switch(
                          value: state.isShared,
                          onChanged: (isChecked) {
                            context
                                .bloc<AddDeckBloc>()
                                .add(AddDeckEvent.privacyChanged(isChecked));
                          },
                        ),
                      ],
                    ),
                  )
                : Container(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Category'),
                  FlatButton(
                      child: Row(
                        children: <Widget>[
                          Text(state.category.categoryName),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                      onPressed: () async {
                        final CategoryModel category = await showDialog(
                            context: context,
                            builder: (context) => CategoryPicker(
                                  baseCategory: state.category,
                                ));
                        if (category != null)
                          context
                              .bloc<AddDeckBloc>()
                              .add(AddDeckEvent.categoryChanged(category));
                      }),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}

class _CardsPage extends StatefulWidget {
  final ScrollController scrollController;

  _CardsPage({Key key, this.scrollController}) : super(key: key);

  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<_CardsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddDeckBloc, AddDeckState>(
      builder: (context, state) => CustomScrollView(
        controller: widget.scrollController,
        slivers: <Widget>[
          state.cardslist.isNotEmpty
              ? SliverGrid.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  children: List.generate(
                    state.cardslist.length,
                    (index) => InDeckCardView(
                      onTap: () async {
                        final changedCard = await context.navigator.pushNamed(
                            MyDeckRoutes.addCard,
                            arguments: state.cardslist[index]);
                        if (changedCard != null) {
                          context
                              .bloc<AddDeckBloc>()
                              .add(AddDeckEvent.cardChanged(changedCard));
                        }
                      },
                      sourceCard: state.cardslist[index],
                    ),
                  ),
                )
              : SliverFillRemaining(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Oops, card collection is Empty.'),
                      RaisedButton(
                        color: Theme.of(context).accentColor,
                        onPressed: ()async{
                          final card = await context.navigator.pushNamed(MyDeckRoutes.addCard);
                          if(card != null)
                          context.bloc<AddDeckBloc>().add(AddDeckEvent.cardAdded(card));
                        },
                        child: Text("Let's create a new one!"),
                      ),
                    ],
                  ),
                )
        ],
      ),
    );
  }
}
