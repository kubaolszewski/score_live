// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'season.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Season _$SeasonFromJson(Map<String, dynamic> json) {
  return _Season.fromJson(json);
}

/// @nodoc
mixin _$Season {
  int? get year => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;
  bool? get current => throw _privateConstructorUsedError;
  Coverage? get coverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeasonCopyWith<Season> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonCopyWith<$Res> {
  factory $SeasonCopyWith(Season value, $Res Function(Season) then) =
      _$SeasonCopyWithImpl<$Res, Season>;
  @useResult
  $Res call(
      {int? year,
      DateTime? start,
      DateTime? end,
      bool? current,
      Coverage? coverage});

  $CoverageCopyWith<$Res>? get coverage;
}

/// @nodoc
class _$SeasonCopyWithImpl<$Res, $Val extends Season>
    implements $SeasonCopyWith<$Res> {
  _$SeasonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? current = freezed,
    Object? coverage = freezed,
  }) {
    return _then(_value.copyWith(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as bool?,
      coverage: freezed == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as Coverage?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoverageCopyWith<$Res>? get coverage {
    if (_value.coverage == null) {
      return null;
    }

    return $CoverageCopyWith<$Res>(_value.coverage!, (value) {
      return _then(_value.copyWith(coverage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SeasonCopyWith<$Res> implements $SeasonCopyWith<$Res> {
  factory _$$_SeasonCopyWith(_$_Season value, $Res Function(_$_Season) then) =
      __$$_SeasonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? year,
      DateTime? start,
      DateTime? end,
      bool? current,
      Coverage? coverage});

  @override
  $CoverageCopyWith<$Res>? get coverage;
}

/// @nodoc
class __$$_SeasonCopyWithImpl<$Res>
    extends _$SeasonCopyWithImpl<$Res, _$_Season>
    implements _$$_SeasonCopyWith<$Res> {
  __$$_SeasonCopyWithImpl(_$_Season _value, $Res Function(_$_Season) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? current = freezed,
    Object? coverage = freezed,
  }) {
    return _then(_$_Season(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as bool?,
      coverage: freezed == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as Coverage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Season implements _Season {
  const _$_Season(
      {this.year, this.start, this.end, this.current, this.coverage});

  factory _$_Season.fromJson(Map<String, dynamic> json) =>
      _$$_SeasonFromJson(json);

  @override
  final int? year;
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  final bool? current;
  @override
  final Coverage? coverage;

  @override
  String toString() {
    return 'Season(year: $year, start: $start, end: $end, current: $current, coverage: $coverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Season &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.coverage, coverage) ||
                other.coverage == coverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, year, start, end, current, coverage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeasonCopyWith<_$_Season> get copyWith =>
      __$$_SeasonCopyWithImpl<_$_Season>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeasonToJson(
      this,
    );
  }
}

abstract class _Season implements Season {
  const factory _Season(
      {final int? year,
      final DateTime? start,
      final DateTime? end,
      final bool? current,
      final Coverage? coverage}) = _$_Season;

  factory _Season.fromJson(Map<String, dynamic> json) = _$_Season.fromJson;

  @override
  int? get year;
  @override
  DateTime? get start;
  @override
  DateTime? get end;
  @override
  bool? get current;
  @override
  Coverage? get coverage;
  @override
  @JsonKey(ignore: true)
  _$$_SeasonCopyWith<_$_Season> get copyWith =>
      throw _privateConstructorUsedError;
}
