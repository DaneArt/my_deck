import 'package:dio/dio.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/models/dtos/card_dto.dart';

abstract class CardNetworkDataSource {
  Future<void> deleteCards(List<CardDto> cards);
  Future<void> addCards(List<CardDto> cards);
  Future<void> updateCards(List<CardDto> cards);
}

class CardNetworkDataSourceImpl implements CardNetworkDataSource {
  final Dio dio;

  CardNetworkDataSourceImpl(this.dio);

  @override
  Future<void> addCards(List<CardDto> cards) async {
    try {
      return dio.post('/card/insert',
          data: cards.map((e) => e.toJson()).toList);
    } on DioError catch (_) {
      throw NetworkException();
    } catch (_) {
      throw NetworkException();
    }
  }

  @override
  Future<void> deleteCards(List<CardDto> cards) {
    try {
      return dio.delete('/card/delete',
          data: cards.map((e) => e.toJson()).toList);
    } on DioError catch (_) {
      throw NetworkException();
    } catch (_) {
      throw NetworkException();
    }
  }

  @override
  Future<void> updateCards(List<CardDto> cards) {
    try {
      return dio.put('/card/update', data: cards.map((e) => e.toJson()).toList);
    } on DioError catch (_) {
      throw NetworkException();
    } catch (_) {
      throw NetworkException();
    }
  }
}
