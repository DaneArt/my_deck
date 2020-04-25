import 'dart:io';
import 'dart:math';

import 'package:mydeck/features/my_deck/data/models/card_model.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:path_provider/path_provider.dart';

import 'bother_wrapper.dart';

abstract class EntitiesSeparator {
  Future<Both<CardModel, List<Both<String, File>>>> separateMediaContentOfCard(
      CardModel card);

  Future<Both<Deck, Both<String, File>>> separateMediaContentOfDeck(Deck deck);

  Future<Both<List<CardModel>, List<Both<String, File>>>>
      separateMediaContentOfCards(List<CardModel> cards);

  Future<Both<List<Deck>, List<Both<String, File>>>>
      separateMediaContentOfDecks(List<Deck> decks);
}

class EntitiesSeparatorImpl implements EntitiesSeparator {
  Future<Directory> get _mediaDir async {
    final Directory mediaDir =
        Directory("${(await getApplicationDocumentsDirectory()).path}/media/");

    if (!(mediaDir).existsSync()) {
      await mediaDir.create();
    }

    return mediaDir;
  }

  @override
  Future<Both<CardModel, List<Both<String, File>>>> separateMediaContentOfCard(
      CardModel card) async {
    final path = "${(await _mediaDir).path}${card.parentDeckId}";
    CardModel newCard = card;

    final List<Both<String, File>> files = [];
    final answerFile = File(card.answer);
    final questionFile = File(card.question);

    if (answerFile.existsSync()) {
      final newPath =
          "$path/CA_${card.cardId}.${card.answer.split('.').last}";
      files.add(
        Both(left: newPath, right: answerFile),
      );
      newCard = newCard.copyWith(answer: newPath);
    }
    if (questionFile.existsSync()) {
      final newPath =
          "$path/${card.parentDeckId}/CQ_${card.cardId}.${card.question.split('.').last}";
      files.add(
        Both(left: newPath, right: questionFile),
      );
      newCard = newCard.copyWith(question: newPath);
    }

    return Both(left: newCard, right: files);
  }

  @override
  Future<Both<List<CardModel>, List<Both<String, File>>>>
      separateMediaContentOfCards(List<CardModel> cards) async {
    final List<CardModel> newCards = [];
    final List<Both<String, File>> files = [];
    for (CardModel card in cards) {
      final both = await separateMediaContentOfCard(card);
      newCards.add(both.left);
      files.addAll(both.right);
    }
    return Both(left: newCards, right: files);
  }

  @override
  Future<Both<Deck, Both<String, File>>> separateMediaContentOfDeck(
      Deck deck) async {
    final path = "${(await _mediaDir).path}${deck.deckId}";
    final Deck newDeck = deck;

    final File avatarFile = deck.icon;

    final String newPath =
        "$path/DA_${deck.deckId}.${avatarFile.path.split('.').last}";
    final fileBoth = Both(
      left: newPath,
      right: avatarFile,
    );

    return Both(
      right: fileBoth,
      left: newDeck.copyWith(icon: File(newPath)),
    );
  }

  @override
  Future<Both<List<Deck>, List<Both<String, File>>>>
      separateMediaContentOfDecks(List<Deck> decks) async {
    final files = [];
    final newDecks = [];
    for (Deck deck in decks) {
      final both = await separateMediaContentOfDeck(deck);
      files.add(both.right);
      newDecks.add(both.left);
    }
    return Both(
      right: files,
      left: newDecks,
    );
  }
}
