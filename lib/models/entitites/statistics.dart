import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/models/entitites/unique_id.dart';

part 'statistics.freezed.dart';

@freezed
abstract class Statistics implements _$Statistics {
  const Statistics._();

  const factory Statistics({@required int xp}) = _Statistics;
}
