import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mydeck/services/datasources/deck_network_datasource.dart';

class MockDio extends Mock implements Dio {}

void main() {
  DeckNetworkDataSource deckNetworkDataSource;
  MockDio mockDio;
  setUp(() {
    mockDio = MockDio();
  });
}
