import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mockito/mockito.dart';
import 'package:mydeck/features/my_deck/data/datasources/my_deck_network_datasource.dart';
import 'package:mydeck/features/my_deck/data/models/card_model.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_service.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;

class MockDioAdapter extends Mock implements HttpClientAdapter {}

class MockUserService extends Mock implements UserService {}

class MockClient extends Mock implements http.Client {}

main() {
  Dio dio;
  MockDioAdapter mockDioAdapter;
  MockUserService mockUserService;
  MyDeckNetworkDataSource myDeckNetworkDataSource;

  setUp(() {
    dio = Dio();
    mockDioAdapter = MockDioAdapter();
    mockUserService = MockUserService();
    dio.httpClientAdapter = mockDioAdapter;
    myDeckNetworkDataSource = MyDeckNetworkDataSourceImpl(
      client: dio,
    );
  });

  test('Should return correct list of cards when request is successfull',
      () async {
    //arrange

    final List<CardModel> tCards = [Card.createDefault().toModel('as')];
    final responsePayload = jsonEncode(tCards.map((c) => c.toJson()).toList());
    final httpResponse = ResponseBody.fromString(responsePayload, 200);
    when(mockDioAdapter.fetch(any, any, any))
        .thenAnswer((_) async => httpResponse);
    //act
    final result = await myDeckNetworkDataSource.getAllCards();
    //assert
    expect(result, tCards);
  });
}
