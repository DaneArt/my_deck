import 'package:chopper/chopper.dart';
import 'package:mydeck/features/my_deck/data/models/card_model.dart';
import 'package:mydeck/features/my_deck/data/models/deck_model.dart';


part 'my_deck_api.chopper.dart';

@ChopperApi(baseUrl: "http://nypifok-001-site1.gtempurl.com/mydeckapi")
abstract class MyDeckApiService extends ChopperService {
  static MyDeckApiService create([ChopperClient client]) =>
      _$MyDeckApiService(client);

  @Get(path: '/deck/findall')
  Future<Response> getAllDecks();

  @Get(path: '/card/findall')
  Future<Response> getAllCards();

  @Get(path: '/deck/findbyid/{deckId}')
  Future<Response> getDeckById(@Path() String deckId);

  @Get(path: '/card/findbyid/{cardId}')
  Future<Response> getCardById(@Path() String cardId);

  @Post(path: '/card/insert')
  Future<Response> addCards(@Body() List<CardModel> cards);

  @Post(path: '/deck/insert')
  Future<Response> addDecks(@Body() List<DeckModel> decks);

  @Put(path: '/card/update')
  Future<Response> updateCards(@Body() List<CardModel> cards);

  @Put(path: '/deck/update')
  Future<Response> updateDecks(@Body() List<DeckModel> decks);

  @Delete(path: '/card/deletebyid/{cardId}')
  Future<Response> deleteCardById(@Path() String cardId);

  @Delete(path: '/deck/deletebyid/{deckId}')
  Future<Response> deleteDeckById(@Path() String deckId);
}
