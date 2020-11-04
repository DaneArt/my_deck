import 'package:flutter/material.dart';
import 'package:mydeck/models/entitites/deck.dart';
import 'package:mydeck/screens/library/local_widgets/deck_card_view.dart';
import 'package:mydeck/services/datasources/user_config.dart';
import 'package:mydeck/generated/l10n.dart';
import 'package:mydeck/utils/custom_icons_icons.dart';
import 'package:mydeck/utils/dependency_injection.dart';
import 'package:mydeck/widgets/login_message_widget.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
            UserConfig.currentUser == null
                ? "Profile page"
                : "${UserConfig.currentUser.username[0].toUpperCase()}${UserConfig.currentUser.username.substring(1)}${S.of(context).profile_title}",
            style: Theme.of(context).textTheme.headline6.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor)),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    if (UserConfig.currentUser == null) {
      return LoginMessageWidget();
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ProfilePageHat(screenSize: screenSize),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('${S.of(context).meta_decks}: 224',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.w500)),
          ),
          DecksListWidget(decks: [])
        ],
      );
    }
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
                    iconButton: IconButton(
                      icon: Icon(CustomIcons.dumbbell),
                      onPressed: () {},
                    ),
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
                child: Image.network(
                    '$BASE_URL_DEV/mydeckapi/Media/Media/${UserConfig.currentUser.avatar}',
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
                  '${S.of(context).profile_subsribers} 24',
                  textAlign: TextAlign.left,
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text('${S.of(context).profile_subscribtions} 24',
                    textAlign: TextAlign.left),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
