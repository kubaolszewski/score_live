import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_goals.freezed.dart';
part 'live_goals.g.dart';

@freezed
class Goals with _$Goals {
  const factory Goals({
    int? home,
    int? away,
  }) = _Goals;

  factory Goals.fromJson(Map<String, dynamic> json) => _$GoalsFromJson(json);
}