import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydeck/core/extensions/widget_extensions.dart';
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
  bool initialized;

  @override
  void initState() {
    initialized = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (!initialized) {
      final Entity.Card defaultCard = ModalRoute.of(context).settings.arguments;
      if (defaultCard != null) {
        context.bloc<AddCardBloc>().add(AddCardEvent.initWithCard(defaultCard));
      }
      initialized = true;
    }

    return WillPopScope(
      onWillPop: ()async{
        context.bloc<AddCardBloc>().add(AddCardEvent.saveChangesAndExit());
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.check, color: Colors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.black),
            ),
          ],
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.clear, color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: BlocListener<AddCardBloc,AddCardState>(
          listener: (context,state){
            if(state.saveChangesAndExit){
              context.navigator.pop(state.card);
            }
          },
          child: Column(
            children: <Widget>[
              _cardWidget(),
              _controls(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _controls() => Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.photo),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.text_fields),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.brush),
            onPressed: () {},
          ),
        ],
      );

  Widget _cardWidget() => BlocBuilder<AddCardBloc, AddCardState>(
        builder: (context, state) => Card(
          child: Stack(
            children: <Widget>[
              state.isQuestion
                  ? state.card.question.map(
                      noContent: (s) => TextCardContextWidget(
                            content: CardContent.textContent(text: ''),
                            isEditing: true,
                            onTextChanged: (input) {
                              context.bloc<AddCardBloc>().add(
                                  AddCardEvent.questionChanged(
                                      newQuestion: CardContent.textContent(
                                          text: input)));
                            },
                          ),
                      textContent: (s) => TextCardContextWidget(
                            content: CardContent.textContent(text: s.model),
                            isEditing: true,
                            onTextChanged: (input) {
                              context.bloc<AddCardBloc>().add(
                                  AddCardEvent.questionChanged(
                                      newQuestion: CardContent.textContent(
                                          text: input)));
                            },
                          ),
                      imageContent: (s) => Image.file(File(s.model)))
                  : state.card.answer.map(
                      noContent: (s) => TextCardContextWidget(
                            content: CardContent.textContent(text: ''),
                            isEditing: true,
                            onTextChanged: (input) {
                              context.bloc<AddCardBloc>().add(
                                  AddCardEvent.questionChanged(
                                      newQuestion: CardContent.textContent(
                                          text: input)));
                            },
                          ),
                      textContent: (s) => TextCardContextWidget(
                            content: CardContent.textContent(text: s.model),
                            isEditing: true,
                            onTextChanged: (input) {
                              context.bloc<AddCardBloc>().add(
                                  AddCardEvent.questionChanged(
                                      newQuestion: CardContent.textContent(
                                          text: input)));
                            },
                          ),
                      imageContent: (s) => Image.file(File(s.model)))
            ],
          ),
        ),
      );
}
