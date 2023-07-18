// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_periods.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Periods _$PeriodsFromJson(Map<String, dynamic> json) {
  return _Periods.fromJson(json);
}

/// @nodoc
mixin _$Periods {
  int? get first => throw _privateConstructorUsedError;
  int? get second => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeriodsCopyWith<Periods> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodsCopyWith<$Res> {
  factory $PeriodsCopyWith(Periods value, $Res Function(Periods) then) =
      _$PeriodsCopyWithImpl<$Res, Periods>;
  @useResult
  $Res call({int? first, int? second});
}

/// @nodoc
class _$PeriodsCopyWithImpl<$Res, $Val extends Periods>
    implements $PeriodsCopyWith<$Res> {
  _$PeriodsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? second = freezed,
  }) {
    return _then(_value.copyWith(
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int?,
      second: freezed == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PeriodsCopyWith<$Res> implements $PeriodsCopyWith<$Res> {
  factory _$$_PeriodsCopyWith(
          _$_Periods value, $Res Function(_$_Periods) then) =
      __$$_PeriodsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? first, int? second});
}

/// @nodoc
class __$$_PeriodsCopyWithImpl<$Res>
    extends _$PeriodsCopyWithImpl<$Res, _$_Periods>
    implements _$$_PeriodsCopyWith<$Res> {
  __$$_PeriodsCopyWithImpl(_$_Periods _value, $Res Function(_$_Periods) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? second = freezed,
  }) {
    return _then(_$_Periods(
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int?,
      second: freezed == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Periods implements _Periods {
  const _$_Periods({this.first, this.second});

  factory _$_Periods.fromJson(Map<String, dynamic> json) =>
      _$$_PeriodsFromJson(json);

  @override
  final int? first;
  @override
  final int? second;

  @override
  String toString() {
    return 'Periods(first: $first, second: $second)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Periods &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.second, second) || other.second == second));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first, second);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PeriodsCopyWith<_$_Periods> get copyWith =>
      __$$_PeriodsCopyWithImpl<_$_Periods>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeriodsToJson(
      this,
    );
  }
}

abstract class _Periods implements Periods {
  const factory _Periods({final int? first, final int? second}) = _$_Periods;

  factory _Periods.fromJson(Map<String, dynamic> json) = _$_Periods.fromJson;

  @override
  int? get first;
  @override
  int? get second;
  @override
  @JsonKey(ignore: true)
  _$$_PeriodsCopyWith<_$_Periods> get copyWith =>
      throw _privateConstructorUsedError;
}
