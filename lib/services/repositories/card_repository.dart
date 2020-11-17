import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/dtos/card_dto.dart';
import 'package:mydeck/models/entitites/mde_card.dart';
import 'package:mydeck/services/datasources/card_network_datasource.dart';
import 'package:mydeck/utils/network_connection.dart';

abstract class CardRepository {
  Future<Either<StorageFailure, List<MDECard>>> addCards(List<MDECard> cards);
  Future<Either<StorageFailure, List<MDECard>>> deleteCards(List<MDECard> cards);
  Future<Either<StorageFailure, List<MDECard>>> updateCards(List<MDECard> cards);
}

class CardRepositoryImpl implements CardRepository {
  final CardNetworkDataSource cardNetworkDataSource;
  final NetworkConnection networkConnection;

  CardRepositoryImpl(this.cardNetworkDataSource, this.networkConnection);

  @override
  Future<Either<StorageFailure, List<MDECard>>> addCards(List<MDECard> cards) async {
    try {
      if (await networkConnection.isConnected) {
        await cardNetworkDataSource
            .addCards(cards.map((e) => CardDto.fromDomain(e)).toList());
        return right(cards);
      } else {
        return left(StorageFailure.networkFailure());
      }
    } on NetworkException {
      return left(StorageFailure.insertFailure(failureObject: cards));
    }
  }

  @override
  Future<Either<StorageFailure, List<MDECard>>> deleteCards(
      List<MDECard> cards) async {
    try {
      if (await networkConnection.isConnected) {
        await cardNetworkDataSource
            .deleteCards(cards.map((e) => CardDto.fromDomain(e)).toList());
        return right(cards);
      } else {
        return left(StorageFailure.networkFailure());
      }
    } on NetworkException {
      return left(StorageFailure.insertFailure(failureObject: cards));
    }
  }

  @override
  Future<Either<StorageFailure, List<MDECard>>> updateCards(
      List<MDECard> cards) async {
    try {
      if (await networkConnection.isConnected) {
        await cardNetworkDataSource
            .updateCards(cards.map((e) => CardDto.fromDomain(e)).toList());
        return right(cards);
      } else {
        return left(StorageFailure.networkFailure());
      }
    } on NetworkException {
      return left(StorageFailure.insertFailure(failureObject: cards));
    }
  }
}
