import 'package:mydeck/features/my_deck/data/models/deck_dto.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';

class DeckDtoWithUserModel {
  final DeckDto deck;
  final UserModel user;

  DeckDtoWithUserModel(this.deck, this.user);
}
