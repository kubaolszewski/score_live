// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fixtures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Fixtures _$FixturesFromJson(Map<String, dynamic> json) {
  return _Fixtures.fromJson(json);
}

/// @nodoc
mixin _$Fixtures {
  bool? get events => throw _privateConstructorUsedError;
  bool? get lineups => throw _privateConstructorUsedError;
  bool? get statisticsFixtures => throw _privateConstructorUsedError;
  bool? get statisticsPlayers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FixturesCopyWith<Fixtures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixturesCopyWith<$Res> {
  factory $FixturesCopyWith(Fixtures value, $Res Function(Fixtures) then) =
      _$FixturesCopyWithImpl<$Res, Fixtures>;
  @useResult
  $Res call(
      {bool? events,
      bool? lineups,
      bool? statisticsFixtures,
      bool? statisticsPlayers});
}

/// @nodoc
class _$FixturesCopyWithImpl<$Res, $Val extends Fixtures>
    implements $FixturesCopyWith<$Res> {
  _$FixturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = freezed,
    Object? lineups = freezed,
    Object? statisticsFixtures = freezed,
    Object? statisticsPlayers = freezed,
  }) {
    return _then(_value.copyWith(
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as bool?,
      lineups: freezed == lineups
          ? _value.lineups
          : lineups // ignore: cast_nullable_to_non_nullable
              as bool?,
      statisticsFixtures: freezed == statisticsFixtures
          ? _value.statisticsFixtures
          : statisticsFixtures // ignore: cast_nullable_to_non_nullable
              as bool?,
      statisticsPlayers: freezed == statisticsPlayers
          ? _value.statisticsPlayers
          : statisticsPlayers // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FixturesCopyWith<$Res> implements $FixturesCopyWith<$Res> {
  factory _$$_FixturesCopyWith(
          _$_Fixtures value, $Res Function(_$_Fixtures) then) =
      __$$_FixturesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? events,
      bool? lineups,
      bool? statisticsFixtures,
      bool? statisticsPlayers});
}

/// @nodoc
class __$$_FixturesCopyWithImpl<$Res>
    extends _$FixturesCopyWithImpl<$Res, _$_Fixtures>
    implements _$$_FixturesCopyWith<$Res> {
  __$$_FixturesCopyWithImpl(
      _$_Fixtures _value, $Res Function(_$_Fixtures) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = freezed,
    Object? lineups = freezed,
    Object? statisticsFixtures = freezed,
    Object? statisticsPlayers = freezed,
  }) {
    return _then(_$_Fixtures(
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as bool?,
      lineups: freezed == lineups
          ? _value.lineups
          : lineups // ignore: cast_nullable_to_non_nullable
              as bool?,
      statisticsFixtures: freezed == statisticsFixtures
          ? _value.statisticsFixtures
          : statisticsFixtures // ignore: cast_nullable_to_non_nullable
              as bool?,
      statisticsPlayers: freezed == statisticsPlayers
          ? _value.statisticsPlayers
          : statisticsPlayers // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Fixtures implements _Fixtures {
  const _$_Fixtures(
      {this.events,
      this.lineups,
      this.statisticsFixtures,
      this.statisticsPlayers});

  factory _$_Fixtures.fromJson(Map<String, dynamic> json) =>
      _$$_FixturesFromJson(json);

  @override
  final bool? events;
  @override
  final bool? lineups;
  @override
  final bool? statisticsFixtures;
  @override
  final bool? statisticsPlayers;

  @override
  String toString() {
    return 'Fixtures(events: $events, lineups: $lineups, statisticsFixtures: $statisticsFixtures, statisticsPlayers: $statisticsPlayers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fixtures &&
            (identical(other.events, events) || other.events == events) &&
            (identical(other.lineups, lineups) || other.lineups == lineups) &&
            (identical(other.statisticsFixtures, statisticsFixtures) ||
                other.statisticsFixtures == statisticsFixtures) &&
            (identical(other.statisticsPlayers, statisticsPlayers) ||
                other.statisticsPlayers == statisticsPlayers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, events, lineups, statisticsFixtures, statisticsPlayers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FixturesCopyWith<_$_Fixtures> get copyWith =>
      __$$_FixturesCopyWithImpl<_$_Fixtures>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FixturesToJson(
      this,
    );
  }
}

abstract class _Fixtures implements Fixtures {
  const factory _Fixtures(
      {final bool? events,
      final bool? lineups,
      final bool? statisticsFixtures,
      final bool? statisticsPlayers}) = _$_Fixtures;

  factory _Fixtures.fromJson(Map<String, dynamic> json) = _$_Fixtures.fromJson;

  @override
  bool? get events;
  @override
  bool? get lineups;
  @override
  bool? get statisticsFixtures;
  @override
  bool? get statisticsPlayers;
  @override
  @JsonKey(ignore: true)
  _$$_FixturesCopyWith<_$_Fixtures> get copyWith =>
      throw _privateConstructorUsedError;
}
