import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_home_team.freezed.dart';
part 'live_home_team.g.dart';

@freezed
class Home with _$Home {
  const factory Home({
    int? id,
    String? name,
    String? logo,
    bool? winner,
  }) = _Home;

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
}
