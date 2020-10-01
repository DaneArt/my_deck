import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mydeck/services/datasources/deck_network_datasource.dart';
import 'package:mydeck/services/repositories/deck_repository.dart';
import 'package:mydeck/utils/network_connection.dart';

class MockNetworkConnection extends Mock implements NetworkConnection {}

class MockDeckNetworkDatasource extends Mock implements DeckNetworkDataSource {}

void main() {
  DeckRepository deckRepository;
  MockNetworkConnection mockNetworkConnection;
  MockDeckNetworkDatasource mockDeckNetworkDatasource;
  setUp(() {
    mockNetworkConnection = MockNetworkConnection();
    mockDeckNetworkDatasource = MockDeckNetworkDatasource();
    deckRepository = DeckRepositoryImpl(
        networkConnection: mockNetworkConnection,
        networkDataSource: mockDeckNetworkDatasource);
  });

  test('Should return failure when no internet connection', () async {
    //arrange
    when(mockNetworkConnection.isConnected).thenAnswer((_) async => false);
    //act
    final result = deckRepository.addDeck(null);
    //assert
    expect((await result).isLeft(), true);
  });
}
