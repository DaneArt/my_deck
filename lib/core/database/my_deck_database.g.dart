// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_deck_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorMyDeckDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$MyDeckDatabaseBuilder databaseBuilder(String name) =>
      _$MyDeckDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$MyDeckDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$MyDeckDatabaseBuilder(null);
}

class _$MyDeckDatabaseBuilder {
  _$MyDeckDatabaseBuilder(this.name);

  final String name;

  final List<Migration> _migrations = [];

  Callback _callback;

  /// Adds migrations to the builder.
  _$MyDeckDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$MyDeckDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<MyDeckDatabase> build() async {
    final path = name != null
        ? join(await sqflite.getDatabasesPath(), name)
        : ':memory:';
    final database = _$MyDeckDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$MyDeckDatabase extends MyDeckDatabase {
  _$MyDeckDatabase([StreamController<String> listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  CardDao _cardDaoInstance;

  DeckDao _deckDaoInstance;

  CategoryDao _categoryDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback callback]) async {
    return sqflite.openDatabase(
      path,
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `DeckModel` (`deck_id` TEXT, `title` TEXT NOT NULL, `icon` TEXT NOT NULL, `description` TEXT NOT NULL, `subscribers_count` INTEGER NOT NULL, `category_name` TEXT NOT NULL, `is_private` INTEGER NOT NULL, `author` TEXT NOT NULL, FOREIGN KEY (`category_name`) REFERENCES `CategoryModel` (`category_name`) ON UPDATE NO ACTION ON DELETE NO ACTION, PRIMARY KEY (`deck_id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `CardModel` (`card_id` TEXT, `answer` TEXT NOT NULL, `question` TEXT NOT NULL, `wins` INTEGER NOT NULL, `trains` INTEGER NOT NULL, `lvl` INTEGER NOT NULL, `last_train` TEXT NOT NULL, `parent_deck_id` TEXT NOT NULL, FOREIGN KEY (`parent_deck_id`) REFERENCES `DeckModel` (`deck_id`) ON UPDATE NO ACTION ON DELETE NO ACTION, PRIMARY KEY (`card_id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `CategoryModel` (`category_name` TEXT, PRIMARY KEY (`category_name`))');

        await callback?.onCreate?.call(database, version);
      },
    );
  }

  @override
  CardDao get cardDao {
    return _cardDaoInstance ??= _$CardDao(database, changeListener);
  }

  @override
  DeckDao get deckDao {
    return _deckDaoInstance ??= _$DeckDao(database, changeListener);
  }

  @override
  CategoryDao get categoryDao {
    return _categoryDaoInstance ??= _$CategoryDao(database, changeListener);
  }
}

class _$CardDao extends CardDao {
  _$CardDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _cardModelInsertionAdapter = InsertionAdapter(
            database,
            'CardModel',
            (CardModel item) => <String, dynamic>{
                  'card_id': item.cardId,
                  'answer': item.answer,
                  'question': item.question,
                  'wins': item.wins,
                  'trains': item.trains,
                  'lvl': item.lvl,
                  'last_train': item.lastTrain,
                  'parent_deck_id': item.parentDeckId
                },
            changeListener),
        _cardModelUpdateAdapter = UpdateAdapter(
            database,
            'CardModel',
            ['card_id'],
            (CardModel item) => <String, dynamic>{
                  'card_id': item.cardId,
                  'answer': item.answer,
                  'question': item.question,
                  'wins': item.wins,
                  'trains': item.trains,
                  'lvl': item.lvl,
                  'last_train': item.lastTrain,
                  'parent_deck_id': item.parentDeckId
                },
            changeListener),
        _cardModelDeletionAdapter = DeletionAdapter(
            database,
            'CardModel',
            ['card_id'],
            (CardModel item) => <String, dynamic>{
                  'card_id': item.cardId,
                  'answer': item.answer,
                  'question': item.question,
                  'wins': item.wins,
                  'trains': item.trains,
                  'lvl': item.lvl,
                  'last_train': item.lastTrain,
                  'parent_deck_id': item.parentDeckId
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  static final _cardModelMapper = (Map<String, dynamic> row) => CardModel(
      row['card_id'] as String,
      row['answer'] as String,
      row['question'] as String,
      row['wins'] as int,
      row['trains'] as int,
      row['lvl'] as int,
      row['last_train'] as String,
      row['parent_deck_id'] as String);

  final InsertionAdapter<CardModel> _cardModelInsertionAdapter;

  final UpdateAdapter<CardModel> _cardModelUpdateAdapter;

  final DeletionAdapter<CardModel> _cardModelDeletionAdapter;

  @override
  Future<List<CardModel>> findAllCards() async {
    return _queryAdapter.queryList('SELECT * FROM CardModel',
        mapper: _cardModelMapper);
  }

  @override
  Stream<List<CardModel>> findAllCardsAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM CardModel',
        tableName: 'CardModel', mapper: _cardModelMapper);
  }

  @override
  Future<CardModel> findCardById(String id) async {
    return _queryAdapter.query('SELECT * FROM CardModel WHERE cardId = ?',
        arguments: <dynamic>[id], mapper: _cardModelMapper);
  }

  @override
  Future<List<CardModel>> findCardsForDeck(String deckId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM CardModel WHERE parentDeckId = ?',
        arguments: <dynamic>[deckId],
        mapper: _cardModelMapper);
  }

  @override
  Future<List<int>> insertCards(List<CardModel> cards) {
    return _cardModelInsertionAdapter.insertListAndReturnIds(
        cards, sqflite.ConflictAlgorithm.abort);
  }

  @override
  Future<int> insertCard(CardModel card) {
    return _cardModelInsertionAdapter.insertAndReturnId(
        card, sqflite.ConflictAlgorithm.abort);
  }

  @override
  Future<int> updateCard(CardModel card) {
    return _cardModelUpdateAdapter.updateAndReturnChangedRows(
        card, sqflite.ConflictAlgorithm.abort);
  }

  @override
  Future<int> updateCards(List<CardModel> cards) {
    return _cardModelUpdateAdapter.updateListAndReturnChangedRows(
        cards, sqflite.ConflictAlgorithm.abort);
  }

  @override
  Future<int> deleteCard(CardModel card) {
    return _cardModelDeletionAdapter.deleteAndReturnChangedRows(card);
  }

  @override
  Future<int> deleteCards(List<CardModel> cards) {
    return _cardModelDeletionAdapter.deleteListAndReturnChangedRows(cards);
  }
}

class _$DeckDao extends DeckDao {
  _$DeckDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _deckModelInsertionAdapter = InsertionAdapter(
            database,
            'DeckModel',
            (DeckModel item) => <String, dynamic>{
                  'deck_id': item.deckId,
                  'title': item.title,
                  'icon': item.icon,
                  'description': item.description,
                  'subscribers_count': item.subscribersCount,
                  'category_name': item.categoryName,
                  'is_private': item.isPrivate ? 1 : 0,
                  'author': item.author
                },
            changeListener),
        _deckModelUpdateAdapter = UpdateAdapter(
            database,
            'DeckModel',
            ['deck_id'],
            (DeckModel item) => <String, dynamic>{
                  'deck_id': item.deckId,
                  'title': item.title,
                  'icon': item.icon,
                  'description': item.description,
                  'subscribers_count': item.subscribersCount,
                  'category_name': item.categoryName,
                  'is_private': item.isPrivate ? 1 : 0,
                  'author': item.author
                },
            changeListener),
        _deckModelDeletionAdapter = DeletionAdapter(
            database,
            'DeckModel',
            ['deck_id'],
            (DeckModel item) => <String, dynamic>{
                  'deck_id': item.deckId,
                  'title': item.title,
                  'icon': item.icon,
                  'description': item.description,
                  'subscribers_count': item.subscribersCount,
                  'category_name': item.categoryName,
                  'is_private': item.isPrivate ? 1 : 0,
                  'author': item.author
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  static final _deckModelMapper = (Map<String, dynamic> row) => DeckModel(
      row['deck_id'] as String,
      row['title'] as String,
      row['icon'] as String,
      row['description'] as String,
      row['category_name'] as String,
      (row['is_private'] as int) != 0,
      row['author'] as String);

  final InsertionAdapter<DeckModel> _deckModelInsertionAdapter;

  final UpdateAdapter<DeckModel> _deckModelUpdateAdapter;

  final DeletionAdapter<DeckModel> _deckModelDeletionAdapter;

  @override
  Future<List<DeckModel>> findAllDecks() async {
    return _queryAdapter.queryList('SELECT * FROM DeckModel',
        mapper: _deckModelMapper);
  }

  @override
  Stream<List<DeckModel>> findAllDecksAsStream() {
    return _queryAdapter.queryListStream('SELECT * FROM DeckModel',
        tableName: 'DeckModel', mapper: _deckModelMapper);
  }

  @override
  Future<DeckModel> findDeckById(String id) async {
    return _queryAdapter.query('SELECT * FROM DeckModel WHERE deck_id = ?',
        arguments: <dynamic>[id], mapper: _deckModelMapper);
  }

  @override
  Future<List<int>> insertDecks(List<DeckModel> decks) {
    return _deckModelInsertionAdapter.insertListAndReturnIds(
        decks, sqflite.ConflictAlgorithm.abort);
  }

  @override
  Future<int> insertDeck(DeckModel deck) {
    return _deckModelInsertionAdapter.insertAndReturnId(
        deck, sqflite.ConflictAlgorithm.abort);
  }

  @override
  Future<int> updateDeck(DeckModel deck) {
    return _deckModelUpdateAdapter.updateAndReturnChangedRows(
        deck, sqflite.ConflictAlgorithm.abort);
  }

  @override
  Future<int> updateDecks(List<DeckModel> decks) {
    return _deckModelUpdateAdapter.updateListAndReturnChangedRows(
        decks, sqflite.ConflictAlgorithm.abort);
  }

  @override
  Future<int> deleteDeck(DeckModel deck) {
    return _deckModelDeletionAdapter.deleteAndReturnChangedRows(deck);
  }

  @override
  Future<int> deleteDecks(List<DeckModel> decks) {
    return _deckModelDeletionAdapter.deleteListAndReturnChangedRows(decks);
  }
}

class _$CategoryDao extends CategoryDao {
  _$CategoryDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _categoryModelInsertionAdapter = InsertionAdapter(
            database,
            'CategoryModel',
            (CategoryModel item) =>
                <String, dynamic>{'category_name': item.categoryName});

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  static final _categoryModelMapper = (Map<String, dynamic> row) =>
      CategoryModel(row['category_name'] as String);

  final InsertionAdapter<CategoryModel> _categoryModelInsertionAdapter;

  @override
  Future<List<CategoryModel>> findAllCategories() async {
    return _queryAdapter.queryList('SELECT * FROM CategoryModel',
        mapper: _categoryModelMapper);
  }

  @override
  Future<CategoryModel> findCategoryByName(String name) async {
    return _queryAdapter.query(
        'SELECT * FROM CategoryModel WHERE categoryName = ?',
        arguments: <dynamic>[name],
        mapper: _categoryModelMapper);
  }

  @override
  Future<List<int>> insertCategories(List<CategoryModel> decks) {
    return _categoryModelInsertionAdapter.insertListAndReturnIds(
        decks, sqflite.ConflictAlgorithm.abort);
  }

  @override
  Future<int> insertCategory(CategoryModel deck) {
    return _categoryModelInsertionAdapter.insertAndReturnId(
        deck, sqflite.ConflictAlgorithm.abort);
  }
}
