import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/models/entitites/statistics.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/services/datasources/user_config.dart';

part 'statistics_dto.freezed.dart';
part 'statistics_dto.g.dart';

@freezed
abstract class StatisticsDto implements _$StatisticsDto {
  const StatisticsDto._();

  const factory StatisticsDto({
    @required String userId,
    @required String cardId,
    @required int xp,
  }) = _StatisticsDto;

  factory StatisticsDto.fromDomain(
          {@required Statistics domain, @required UniqueId cardId}) =>
          domain != null?
      StatisticsDto(
          userId: UserConfig.currentUser.userId,
          cardId: cardId.getOrCrash,
          xp: domain.xp):null;

  Statistics toDomain() => Statistics(xp: this.xp);

  factory StatisticsDto.fromJson(Map<String, dynamic> json) =>
      _$StatisticsDtoFromJson(json);
}
