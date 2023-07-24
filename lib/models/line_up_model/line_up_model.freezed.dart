// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'line_up_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LineUpModel _$LineUpModelFromJson(Map<String, dynamic> json) {
  return _LineUpModel.fromJson(json);
}

/// @nodoc
mixin _$LineUpModel {
  Team? get team => throw _privateConstructorUsedError;
  String? get formation => throw _privateConstructorUsedError;
  List<StartXi>? get startXi => throw _privateConstructorUsedError;
  List<Substitute>? get substitutes => throw _privateConstructorUsedError;
  Coach? get coach => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LineUpModelCopyWith<LineUpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineUpModelCopyWith<$Res> {
  factory $LineUpModelCopyWith(
          LineUpModel value, $Res Function(LineUpModel) then) =
      _$LineUpModelCopyWithImpl<$Res, LineUpModel>;
  @useResult
  $Res call(
      {Team? team,
      String? formation,
      List<StartXi>? startXi,
      List<Substitute>? substitutes,
      Coach? coach});

  $TeamCopyWith<$Res>? get team;
  $CoachCopyWith<$Res>? get coach;
}

/// @nodoc
class _$LineUpModelCopyWithImpl<$Res, $Val extends LineUpModel>
    implements $LineUpModelCopyWith<$Res> {
  _$LineUpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = freezed,
    Object? formation = freezed,
    Object? startXi = freezed,
    Object? substitutes = freezed,
    Object? coach = freezed,
  }) {
    return _then(_value.copyWith(
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team?,
      formation: freezed == formation
          ? _value.formation
          : formation // ignore: cast_nullable_to_non_nullable
              as String?,
      startXi: freezed == startXi
          ? _value.startXi
          : startXi // ignore: cast_nullable_to_non_nullable
              as List<StartXi>?,
      substitutes: freezed == substitutes
          ? _value.substitutes
          : substitutes // ignore: cast_nullable_to_non_nullable
              as List<Substitute>?,
      coach: freezed == coach
          ? _value.coach
          : coach // ignore: cast_nullable_to_non_nullable
              as Coach?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res>? get team {
    if (_value.team == null) {
      return null;
    }

    return $TeamCopyWith<$Res>(_value.team!, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoachCopyWith<$Res>? get coach {
    if (_value.coach == null) {
      return null;
    }

    return $CoachCopyWith<$Res>(_value.coach!, (value) {
      return _then(_value.copyWith(coach: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LineUpModelCopyWith<$Res>
    implements $LineUpModelCopyWith<$Res> {
  factory _$$_LineUpModelCopyWith(
          _$_LineUpModel value, $Res Function(_$_LineUpModel) then) =
      __$$_LineUpModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Team? team,
      String? formation,
      List<StartXi>? startXi,
      List<Substitute>? substitutes,
      Coach? coach});

  @override
  $TeamCopyWith<$Res>? get team;
  @override
  $CoachCopyWith<$Res>? get coach;
}

/// @nodoc
class __$$_LineUpModelCopyWithImpl<$Res>
    extends _$LineUpModelCopyWithImpl<$Res, _$_LineUpModel>
    implements _$$_LineUpModelCopyWith<$Res> {
  __$$_LineUpModelCopyWithImpl(
      _$_LineUpModel _value, $Res Function(_$_LineUpModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = freezed,
    Object? formation = freezed,
    Object? startXi = freezed,
    Object? substitutes = freezed,
    Object? coach = freezed,
  }) {
    return _then(_$_LineUpModel(
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team?,
      formation: freezed == formation
          ? _value.formation
          : formation // ignore: cast_nullable_to_non_nullable
              as String?,
      startXi: freezed == startXi
          ? _value._startXi
          : startXi // ignore: cast_nullable_to_non_nullable
              as List<StartXi>?,
      substitutes: freezed == substitutes
          ? _value._substitutes
          : substitutes // ignore: cast_nullable_to_non_nullable
              as List<Substitute>?,
      coach: freezed == coach
          ? _value.coach
          : coach // ignore: cast_nullable_to_non_nullable
              as Coach?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LineUpModel implements _LineUpModel {
  const _$_LineUpModel(
      {this.team,
      this.formation,
      final List<StartXi>? startXi,
      final List<Substitute>? substitutes,
      this.coach})
      : _startXi = startXi,
        _substitutes = substitutes;

  factory _$_LineUpModel.fromJson(Map<String, dynamic> json) =>
      _$$_LineUpModelFromJson(json);

  @override
  final Team? team;
  @override
  final String? formation;
  final List<StartXi>? _startXi;
  @override
  List<StartXi>? get startXi {
    final value = _startXi;
    if (value == null) return null;
    if (_startXi is EqualUnmodifiableListView) return _startXi;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Substitute>? _substitutes;
  @override
  List<Substitute>? get substitutes {
    final value = _substitutes;
    if (value == null) return null;
    if (_substitutes is EqualUnmodifiableListView) return _substitutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Coach? coach;

  @override
  String toString() {
    return 'LineUpModel(team: $team, formation: $formation, startXi: $startXi, substitutes: $substitutes, coach: $coach)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LineUpModel &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.formation, formation) ||
                other.formation == formation) &&
            const DeepCollectionEquality().equals(other._startXi, _startXi) &&
            const DeepCollectionEquality()
                .equals(other._substitutes, _substitutes) &&
            (identical(other.coach, coach) || other.coach == coach));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      team,
      formation,
      const DeepCollectionEquality().hash(_startXi),
      const DeepCollectionEquality().hash(_substitutes),
      coach);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LineUpModelCopyWith<_$_LineUpModel> get copyWith =>
      __$$_LineUpModelCopyWithImpl<_$_LineUpModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LineUpModelToJson(
      this,
    );
  }
}

abstract class _LineUpModel implements LineUpModel {
  const factory _LineUpModel(
      {final Team? team,
      final String? formation,
      final List<StartXi>? startXi,
      final List<Substitute>? substitutes,
      final Coach? coach}) = _$_LineUpModel;

  factory _LineUpModel.fromJson(Map<String, dynamic> json) =
      _$_LineUpModel.fromJson;

  @override
  Team? get team;
  @override
  String? get formation;
  @override
  List<StartXi>? get startXi;
  @override
  List<Substitute>? get substitutes;
  @override
  Coach? get coach;
  @override
  @JsonKey(ignore: true)
  _$$_LineUpModelCopyWith<_$_LineUpModel> get copyWith =>
      throw _privateConstructorUsedError;
}
