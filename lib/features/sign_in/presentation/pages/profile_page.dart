import 'package:flutter/material.dart';
import 'package:mydeck/core/injection/dependency_injection.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/presentation/widgets/deck_hub/deck_card_view.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_config.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
            "${UserConfig.currentUser.username[0].toUpperCase()}${UserConfig.currentUser.username.substring(1)}'s profile",
            style: Theme.of(context).textTheme.headline6.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ProfilePageHat(screenSize: screenSize),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Decks: 224',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.w500)),
          ),
          DecksListWidget(decks: [])
        ],
      ),
    );
  }
}

class DecksListWidget extends StatefulWidget {
  final List<Deck> decks;

  const DecksListWidget({
    Key key,
    @required this.decks,
  }) : super(key: key);

  @override
  _DecksListWidgetState createState() => _DecksListWidgetState();
}

class _DecksListWidgetState extends State<DecksListWidget> {
  final ScrollController _controller = ScrollController();

  List<Deck> get decks => widget.decks;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _controller,
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => DeckCard(
                    deck: decks[index],
                    key: ValueKey(decks[index].deckId),
                    isEditing: false,
                  ),
              childCount: decks.length),
        ),
      ],
    );
  }
}

class ProfilePageHat extends StatelessWidget {
  const ProfilePageHat({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            elevation: 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              height: screenSize.height / 4,
              width: screenSize.width / 2.5,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                child: Image.network(UserConfig.currentUser.avatarPath,
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Subsribers: 24',
                  textAlign: TextAlign.left,
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text('Subscribtions: 24', textAlign: TextAlign.left),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
