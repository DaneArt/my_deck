import 'package:mydeck/models/dtos/deck_dto.dart';
import 'package:mydeck/models/value_objects/user_model.dart';

class DeckDtoWithUserModel {
  final DeckDto deck;
  final UserModel user;

  DeckDtoWithUserModel(this.deck, this.user);
}
