import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mydeck/models/dtos/deck_category.dart';
import 'package:mydeck/models/entitites/card.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/models/entitites/user.dart';
import 'package:mydeck/models/value_objects/deck_avatar.dart';
import 'package:mydeck/models/value_objects/deck_description.dart';
import 'package:mydeck/models/value_objects/deck_title.dart';
import 'package:mydeck/models/value_objects/email_address.dart';
import 'package:mydeck/models/value_objects/username.dart';
import 'package:mydeck/models/dtos/deck_dto.dart';
import 'package:mydeck/models/entitites/deck.dart';

main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final Deck tDeck = Deck(
      author: User(
          avatar: ImageFile(uniqueId: UniqueId(), file: File("")),
          email: EmailAddress(" "),
          subscribers: [],
          subscribes: [],
          userId: UniqueId(),
          username: Username(" sd")),
      availableQuickTrain: true,
      avatar: DeckAvatar(ImageFile(uniqueId: UniqueId(), file: File(""))),
      category: DeckCategory(categoryName: "IT"),
      deckId: UniqueId(),
      description: DeckDescription(" "),
      isPrivate: false,
      title: DeckTitle(" "),
      cardsList: [Card.basic()]);

  test('Deck to Dto test', () async {
    final deckDto = await DeckDto.fromDomain(tDeck);
    print(deckDto);
  });
}
