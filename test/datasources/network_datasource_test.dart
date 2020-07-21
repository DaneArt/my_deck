import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mockito/mockito.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/services/datasources/deck_network_datasource.dart';
import 'package:mydeck/services/datasources/user_config.dart';
import 'package:mydeck/services/datasources/user_network_datasource.dart';
import 'package:mydeck/utils/value_validators.dart';
import 'package:mydeck/main.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;

import '../fixtures/fixture.dart';

class MockDioAdapter extends Mock implements HttpClientAdapter {}

class MockUserConfig extends Mock implements UserConfig {}

class MockUserDataSource extends Mock implements UserNetworkDataSource {}

class MockValidateToken extends Mock implements AccessTokenValidator {}

void main() {
  Dio dio;
  MockDioAdapter mockDioAdapter;
  MockUserDataSource mockUsStringerDataSource;
  MockUserConfig mockUserConfig;
  MockValidateToken mockValidateToken;
  DeckNetworkDataSource myDeckNetworkDataSource;

  setUp(() {
    dio = Dio();
    mockDioAdapter = MockDioAdapter();
    dio.httpClientAdapter = mockDioAdapter;
    myDeckNetworkDataSource = DeckNetworkDataSourceImpl(
      client: dio,
    );
  });

  group('Get requests ', () {
    group('getAllDecksOfCurrentUser()', () {
      final tDeckWithCards = jsonDecode(fixture('deck_model.json'));
      tDeckWithCards['cards'] = [jsonDecode(fixture('card_model.json'))];

      final responsePayload = jsonEncode([tDeckWithCards]);
      final httpResponse = ResponseBody.fromString(responsePayload, 200);

      test(
          'Should return mapped decks when result code is 200 and token is valid',
          () async {
        //arrange
        when(mockDioAdapter.fetch(any, any, any))
            .thenAnswer((_) async => httpResponse);
        //act
        final result = await myDeckNetworkDataSource.getAllDecksOfCurrentUser();
        //assert
        expect(result[0], tDeckModel);
      });

      test('Should return [] when request throws DioError with status code 404',
          () async {
        //arrange
        when(mockDioAdapter.fetch(any, any, any)).thenThrow(DioError(
            type: DioErrorType.RESPONSE, response: Response(statusCode: 404)));
        //act
        final result = await myDeckNetworkDataSource.getAllDecksOfCurrentUser();
        //assert
        expect(result, []);
      });

      test(
          'Should throw NetworkException() when request contains unexpected status code',
          () async {
        //arrange
        when(mockDioAdapter.fetch(any, any, any)).thenThrow(DioError(
            type: DioErrorType.RESPONSE, response: Response(statusCode: 500)));
        //act
        final call = myDeckNetworkDataSource.getAllDecksOfCurrentUser;
        //assert
        expect(call, throwsA(TypeMatcher<NetworkException>()));
      });
    });
  });
}
