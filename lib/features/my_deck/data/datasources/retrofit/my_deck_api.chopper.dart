// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_deck_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$MyDeckApiService extends MyDeckApiService {
  _$MyDeckApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = MyDeckApiService;

  @override
  Future<Response<dynamic>> getAllDecks() {
    final $url = 'http://nypifok-001-site1.gtempurl.com/mydeckapi/deck/findall';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getAllCards() {
    final $url = 'http://nypifok-001-site1.gtempurl.com/mydeckapi/card/findall';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getDeckById(String deckId) {
    final $url =
        'http://nypifok-001-site1.gtempurl.com/mydeckapi/deck/findbyid/$deckId';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getCardById(String cardId) {
    final $url =
        'http://nypifok-001-site1.gtempurl.com/mydeckapi/card/findbyid/$cardId';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> addCards(List<CardModel> cards) {
    final $url = 'http://nypifok-001-site1.gtempurl.com/mydeckapi/card/insert';
    final $body = cards;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> addDecks(List<DeckModel> decks) {
    final $url = 'http://nypifok-001-site1.gtempurl.com/mydeckapi/deck/insert';
    final $body = decks;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateCards(List<CardModel> cards) {
    final $url = 'http://nypifok-001-site1.gtempurl.com/mydeckapi/card/update';
    final $body = cards;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateDecks(List<DeckModel> decks) {
    final $url = 'http://nypifok-001-site1.gtempurl.com/mydeckapi/deck/update';
    final $body = decks;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> deleteCardById(String cardId) {
    final $url =
        'http://nypifok-001-site1.gtempurl.com/mydeckapi/card/deletebyid/$cardId';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> deleteDeckById(String deckId) {
    final $url =
        'http://nypifok-001-site1.gtempurl.com/mydeckapi/deck/deletebyid/$deckId';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
