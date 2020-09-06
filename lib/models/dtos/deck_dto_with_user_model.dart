import 'package:mydeck/models/dtos/deck_dto.dart';
import 'package:mydeck/models/dtos/user_dto.dart';

class DeckDtoWithUserModel {
  final DeckDto deck;
  final UserDto user;

  DeckDtoWithUserModel(this.deck, this.user);
}
