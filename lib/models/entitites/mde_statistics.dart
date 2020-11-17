import 'package:freezed_annotation/freezed_annotation.dart';


part 'mde_statistics.freezed.dart';

@freezed
abstract class MDEStatistics implements _$MDEStatistics {
  const MDEStatistics._();

  const factory MDEStatistics({@required int xp}) = _MDEStatistics;
}
