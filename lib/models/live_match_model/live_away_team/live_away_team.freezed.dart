// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_away_team.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Away _$AwayFromJson(Map<String, dynamic> json) {
  return _Away.fromJson(json);
}

/// @nodoc
mixin _$Away {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  bool? get winner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AwayCopyWith<Away> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AwayCopyWith<$Res> {
  factory $AwayCopyWith(Away value, $Res Function(Away) then) =
      _$AwayCopyWithImpl<$Res, Away>;
  @useResult
  $Res call({int? id, String? name, String? logo, bool? winner});
}

/// @nodoc
class _$AwayCopyWithImpl<$Res, $Val extends Away>
    implements $AwayCopyWith<$Res> {
  _$AwayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
    Object? winner = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      winner: freezed == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AwayCopyWith<$Res> implements $AwayCopyWith<$Res> {
  factory _$$_AwayCopyWith(_$_Away value, $Res Function(_$_Away) then) =
      __$$_AwayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? logo, bool? winner});
}

/// @nodoc
class __$$_AwayCopyWithImpl<$Res> extends _$AwayCopyWithImpl<$Res, _$_Away>
    implements _$$_AwayCopyWith<$Res> {
  __$$_AwayCopyWithImpl(_$_Away _value, $Res Function(_$_Away) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
    Object? winner = freezed,
  }) {
    return _then(_$_Away(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      winner: freezed == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Away implements _Away {
  const _$_Away({this.id, this.name, this.logo, this.winner});

  factory _$_Away.fromJson(Map<String, dynamic> json) => _$$_AwayFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? logo;
  @override
  final bool? winner;

  @override
  String toString() {
    return 'Away(id: $id, name: $name, logo: $logo, winner: $winner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Away &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.winner, winner) || other.winner == winner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logo, winner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AwayCopyWith<_$_Away> get copyWith =>
      __$$_AwayCopyWithImpl<_$_Away>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AwayToJson(
      this,
    );
  }
}

abstract class _Away implements Away {
  const factory _Away(
      {final int? id,
      final String? name,
      final String? logo,
      final bool? winner}) = _$_Away;

  factory _Away.fromJson(Map<String, dynamic> json) = _$_Away.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get logo;
  @override
  bool? get winner;
  @override
  @JsonKey(ignore: true)
  _$$_AwayCopyWith<_$_Away> get copyWith => throw _privateConstructorUsedError;
}
