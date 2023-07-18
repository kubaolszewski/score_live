// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_fixture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Fixture _$FixtureFromJson(Map<String, dynamic> json) {
  return _Fixture.fromJson(json);
}

/// @nodoc
mixin _$Fixture {
  int? get id => throw _privateConstructorUsedError;
  String? get referee => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  int? get timestamp => throw _privateConstructorUsedError;
  Periods? get periods => throw _privateConstructorUsedError;
  Venue? get venue => throw _privateConstructorUsedError;
  Status? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FixtureCopyWith<Fixture> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixtureCopyWith<$Res> {
  factory $FixtureCopyWith(Fixture value, $Res Function(Fixture) then) =
      _$FixtureCopyWithImpl<$Res, Fixture>;
  @useResult
  $Res call(
      {int? id,
      String? referee,
      String? timezone,
      String? date,
      int? timestamp,
      Periods? periods,
      Venue? venue,
      Status? status});

  $PeriodsCopyWith<$Res>? get periods;
  $VenueCopyWith<$Res>? get venue;
  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$FixtureCopyWithImpl<$Res, $Val extends Fixture>
    implements $FixtureCopyWith<$Res> {
  _$FixtureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? referee = freezed,
    Object? timezone = freezed,
    Object? date = freezed,
    Object? timestamp = freezed,
    Object? periods = freezed,
    Object? venue = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      referee: freezed == referee
          ? _value.referee
          : referee // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      periods: freezed == periods
          ? _value.periods
          : periods // ignore: cast_nullable_to_non_nullable
              as Periods?,
      venue: freezed == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as Venue?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodsCopyWith<$Res>? get periods {
    if (_value.periods == null) {
      return null;
    }

    return $PeriodsCopyWith<$Res>(_value.periods!, (value) {
      return _then(_value.copyWith(periods: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VenueCopyWith<$Res>? get venue {
    if (_value.venue == null) {
      return null;
    }

    return $VenueCopyWith<$Res>(_value.venue!, (value) {
      return _then(_value.copyWith(venue: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FixtureCopyWith<$Res> implements $FixtureCopyWith<$Res> {
  factory _$$_FixtureCopyWith(
          _$_Fixture value, $Res Function(_$_Fixture) then) =
      __$$_FixtureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? referee,
      String? timezone,
      String? date,
      int? timestamp,
      Periods? periods,
      Venue? venue,
      Status? status});

  @override
  $PeriodsCopyWith<$Res>? get periods;
  @override
  $VenueCopyWith<$Res>? get venue;
  @override
  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_FixtureCopyWithImpl<$Res>
    extends _$FixtureCopyWithImpl<$Res, _$_Fixture>
    implements _$$_FixtureCopyWith<$Res> {
  __$$_FixtureCopyWithImpl(_$_Fixture _value, $Res Function(_$_Fixture) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? referee = freezed,
    Object? timezone = freezed,
    Object? date = freezed,
    Object? timestamp = freezed,
    Object? periods = freezed,
    Object? venue = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_Fixture(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      referee: freezed == referee
          ? _value.referee
          : referee // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      periods: freezed == periods
          ? _value.periods
          : periods // ignore: cast_nullable_to_non_nullable
              as Periods?,
      venue: freezed == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as Venue?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Fixture implements _Fixture {
  const _$_Fixture(
      {this.id,
      this.referee,
      this.timezone,
      this.date,
      this.timestamp,
      this.periods,
      this.venue,
      this.status});

  factory _$_Fixture.fromJson(Map<String, dynamic> json) =>
      _$$_FixtureFromJson(json);

  @override
  final int? id;
  @override
  final String? referee;
  @override
  final String? timezone;
  @override
  final String? date;
  @override
  final int? timestamp;
  @override
  final Periods? periods;
  @override
  final Venue? venue;
  @override
  final Status? status;

  @override
  String toString() {
    return 'Fixture(id: $id, referee: $referee, timezone: $timezone, date: $date, timestamp: $timestamp, periods: $periods, venue: $venue, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fixture &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.referee, referee) || other.referee == referee) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.periods, periods) || other.periods == periods) &&
            (identical(other.venue, venue) || other.venue == venue) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, referee, timezone, date,
      timestamp, periods, venue, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FixtureCopyWith<_$_Fixture> get copyWith =>
      __$$_FixtureCopyWithImpl<_$_Fixture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FixtureToJson(
      this,
    );
  }
}

abstract class _Fixture implements Fixture {
  const factory _Fixture(
      {final int? id,
      final String? referee,
      final String? timezone,
      final String? date,
      final int? timestamp,
      final Periods? periods,
      final Venue? venue,
      final Status? status}) = _$_Fixture;

  factory _Fixture.fromJson(Map<String, dynamic> json) = _$_Fixture.fromJson;

  @override
  int? get id;
  @override
  String? get referee;
  @override
  String? get timezone;
  @override
  String? get date;
  @override
  int? get timestamp;
  @override
  Periods? get periods;
  @override
  Venue? get venue;
  @override
  Status? get status;
  @override
  @JsonKey(ignore: true)
  _$$_FixtureCopyWith<_$_Fixture> get copyWith =>
      throw _privateConstructorUsedError;
}
