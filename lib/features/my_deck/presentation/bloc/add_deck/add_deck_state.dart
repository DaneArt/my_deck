part of "add_deck_bloc.dart";

@freezed
abstract class AddDeckState with _$AddDeckState {
  const factory AddDeckState({
    @required DeckTitle title,
    @required DeckDescription description,
    @required DeckAvatar avatar,
    @required bool isShared,
    @required CategoryModel category,
    @required UserModel author,
    @required List<Card> cardslist,
    @required Option<Either<StorageFailure, Unit>> saveFailureOrSuccessOption,
  }) = _AddDeckState;

  factory AddDeckState.initial() => AddDeckState(
      avatar: DeckAvatar(null),
      cardslist: <Card>[],
      category: CategoryModel('No category'),
      description: DeckDescription(''),
      isShared: false,
      title: DeckTitle(''),
      saveFailureOrSuccessOption: none(),
      author: UserService().currentUser.copyWith(
        username: 'you'
      ));
}
