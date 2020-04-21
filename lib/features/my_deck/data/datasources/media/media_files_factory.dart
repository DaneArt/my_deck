import 'dart:io';

abstract class FileNameFactory {
  final File file;

  FileNameFactory(this.file);

  String create();
}

class DeckAvatarFactory extends FileNameFactory {
  final String deckId;

  DeckAvatarFactory(File file, this.deckId) : super(file);

  @override
  String create() {
    return 'DA_$deckId.${file.path.split('.').last}';
  }
}

class CardAnswerFactory extends FileNameFactory {
  final String cardId;

  CardAnswerFactory(File file, this.cardId) : super(file);

  @override
  String create() {
    return 'CA_$cardId.${file.path.split('.').last}';
  }
}

class CardQuestionFactory extends FileNameFactory {
  final String cardId;

  CardQuestionFactory(File file, this.cardId) : super(file);

  @override
  String create() {
    return 'CQ_$cardId.${file.path.split('.').last}';
  }
}
