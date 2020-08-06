import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mydeck/blocs/add_deck/add_deck_bloc.dart';
import 'package:mydeck/utils/custom_icons_icons.dart';
import 'package:mydeck/utils/dependency_injection.dart';
import 'package:mydeck/screens/deck_editor/add_deck_page.dart';
import 'package:mydeck/models/entitites/deck.dart';
import 'package:mydeck/services/usecases/add_deck_usecase.dart';
import 'package:mydeck/services/usecases/delete_deck_usecase.dart';
import 'package:mydeck/services/usecases/save_deck_changes_usecase.dart';
import 'package:mydeck/services/usecases/upload_online_deck.dart';

class SmallDeckCard extends StatelessWidget {
  final Deck deck;

  const SmallDeckCard({Key key, this.deck}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => BlocProvider(
                    create: (context) => AddDeckBloc(
                      deck: deck,
                      uploadOnlineDeckUsecase:
                          sl.get<UploadOnlineDeckUsecase>(),
                    ),
                    child: AddDeckPage(
                      goal: AddDeckGoal.lookup,
                    ),
                  )));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          child: Container(
            width: screenSize.height / 4.5,
            height: screenSize.height / 4.5,
            child: Stack(
              children: <Widget>[
                Image.file(
                    deck.avatar.value.fold(
                        (failure) => failure.failedValue.getFileOrCrash(),
                        (file) => file.getFileOrCrash()),
                    width: screenSize.height / 4.5,
                    height: screenSize.height / 4.5,
                    fit: BoxFit.cover),
                Container(
                  color: Colors.black38,
                  width: screenSize.height / 4.5,
                  height: screenSize.height / 4.5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(deck.cardsCount.toString(),
                                style: TextStyle(color: Colors.white)),
                          ),
                          Icon(
                            CustomIcons.cards,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                    Text(
                        deck.title.value.fold(
                            (failure) => failure.failedValue, (title) => title),
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.white)),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(deck.subscribersCount.toString(),
                                style: TextStyle(color: Colors.white)),
                          ),
                          Icon(
                            Icons.person,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
