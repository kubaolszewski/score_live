// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_colors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeamColors _$TeamColorsFromJson(Map<String, dynamic> json) {
  return _TeamColors.fromJson(json);
}

/// @nodoc
mixin _$TeamColors {
  ColorProperties? get player => throw _privateConstructorUsedError;
  ColorProperties? get goalkeeper => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamColorsCopyWith<TeamColors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamColorsCopyWith<$Res> {
  factory $TeamColorsCopyWith(
          TeamColors value, $Res Function(TeamColors) then) =
      _$TeamColorsCopyWithImpl<$Res, TeamColors>;
  @useResult
  $Res call({ColorProperties? player, ColorProperties? goalkeeper});

  $ColorPropertiesCopyWith<$Res>? get player;
  $ColorPropertiesCopyWith<$Res>? get goalkeeper;
}

/// @nodoc
class _$TeamColorsCopyWithImpl<$Res, $Val extends TeamColors>
    implements $TeamColorsCopyWith<$Res> {
  _$TeamColorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = freezed,
    Object? goalkeeper = freezed,
  }) {
    return _then(_value.copyWith(
      player: freezed == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as ColorProperties?,
      goalkeeper: freezed == goalkeeper
          ? _value.goalkeeper
          : goalkeeper // ignore: cast_nullable_to_non_nullable
              as ColorProperties?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ColorPropertiesCopyWith<$Res>? get player {
    if (_value.player == null) {
      return null;
    }

    return $ColorPropertiesCopyWith<$Res>(_value.player!, (value) {
      return _then(_value.copyWith(player: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ColorPropertiesCopyWith<$Res>? get goalkeeper {
    if (_value.goalkeeper == null) {
      return null;
    }

    return $ColorPropertiesCopyWith<$Res>(_value.goalkeeper!, (value) {
      return _then(_value.copyWith(goalkeeper: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TeamColorsCopyWith<$Res>
    implements $TeamColorsCopyWith<$Res> {
  factory _$$_TeamColorsCopyWith(
          _$_TeamColors value, $Res Function(_$_TeamColors) then) =
      __$$_TeamColorsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ColorProperties? player, ColorProperties? goalkeeper});

  @override
  $ColorPropertiesCopyWith<$Res>? get player;
  @override
  $ColorPropertiesCopyWith<$Res>? get goalkeeper;
}

/// @nodoc
class __$$_TeamColorsCopyWithImpl<$Res>
    extends _$TeamColorsCopyWithImpl<$Res, _$_TeamColors>
    implements _$$_TeamColorsCopyWith<$Res> {
  __$$_TeamColorsCopyWithImpl(
      _$_TeamColors _value, $Res Function(_$_TeamColors) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = freezed,
    Object? goalkeeper = freezed,
  }) {
    return _then(_$_TeamColors(
      player: freezed == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as ColorProperties?,
      goalkeeper: freezed == goalkeeper
          ? _value.goalkeeper
          : goalkeeper // ignore: cast_nullable_to_non_nullable
              as ColorProperties?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeamColors implements _TeamColors {
  const _$_TeamColors({this.player, this.goalkeeper});

  factory _$_TeamColors.fromJson(Map<String, dynamic> json) =>
      _$$_TeamColorsFromJson(json);

  @override
  final ColorProperties? player;
  @override
  final ColorProperties? goalkeeper;

  @override
  String toString() {
    return 'TeamColors(player: $player, goalkeeper: $goalkeeper)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TeamColors &&
            (identical(other.player, player) || other.player == player) &&
            (identical(other.goalkeeper, goalkeeper) ||
                other.goalkeeper == goalkeeper));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, player, goalkeeper);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TeamColorsCopyWith<_$_TeamColors> get copyWith =>
      __$$_TeamColorsCopyWithImpl<_$_TeamColors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeamColorsToJson(
      this,
    );
  }
}

abstract class _TeamColors implements TeamColors {
  const factory _TeamColors(
      {final ColorProperties? player,
      final ColorProperties? goalkeeper}) = _$_TeamColors;

  factory _TeamColors.fromJson(Map<String, dynamic> json) =
      _$_TeamColors.fromJson;

  @override
  ColorProperties? get player;
  @override
  ColorProperties? get goalkeeper;
  @override
  @JsonKey(ignore: true)
  _$$_TeamColorsCopyWith<_$_TeamColors> get copyWith =>
      throw _privateConstructorUsedError;
}

ColorProperties _$ColorPropertiesFromJson(Map<String, dynamic> json) {
  return _ColorProperties.fromJson(json);
}

/// @nodoc
mixin _$ColorProperties {
  String? get primary => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  String? get border => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorPropertiesCopyWith<ColorProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorPropertiesCopyWith<$Res> {
  factory $ColorPropertiesCopyWith(
          ColorProperties value, $Res Function(ColorProperties) then) =
      _$ColorPropertiesCopyWithImpl<$Res, ColorProperties>;
  @useResult
  $Res call({String? primary, String? number, String? border});
}

/// @nodoc
class _$ColorPropertiesCopyWithImpl<$Res, $Val extends ColorProperties>
    implements $ColorPropertiesCopyWith<$Res> {
  _$ColorPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = freezed,
    Object? number = freezed,
    Object? border = freezed,
  }) {
    return _then(_value.copyWith(
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      border: freezed == border
          ? _value.border
          : border // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ColorPropertiesCopyWith<$Res>
    implements $ColorPropertiesCopyWith<$Res> {
  factory _$$_ColorPropertiesCopyWith(
          _$_ColorProperties value, $Res Function(_$_ColorProperties) then) =
      __$$_ColorPropertiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? primary, String? number, String? border});
}

/// @nodoc
class __$$_ColorPropertiesCopyWithImpl<$Res>
    extends _$ColorPropertiesCopyWithImpl<$Res, _$_ColorProperties>
    implements _$$_ColorPropertiesCopyWith<$Res> {
  __$$_ColorPropertiesCopyWithImpl(
      _$_ColorProperties _value, $Res Function(_$_ColorProperties) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = freezed,
    Object? number = freezed,
    Object? border = freezed,
  }) {
    return _then(_$_ColorProperties(
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      border: freezed == border
          ? _value.border
          : border // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ColorProperties implements _ColorProperties {
  const _$_ColorProperties({this.primary, this.number, this.border});

  factory _$_ColorProperties.fromJson(Map<String, dynamic> json) =>
      _$$_ColorPropertiesFromJson(json);

  @override
  final String? primary;
  @override
  final String? number;
  @override
  final String? border;

  @override
  String toString() {
    return 'ColorProperties(primary: $primary, number: $number, border: $border)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColorProperties &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.border, border) || other.border == border));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, primary, number, border);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ColorPropertiesCopyWith<_$_ColorProperties> get copyWith =>
      __$$_ColorPropertiesCopyWithImpl<_$_ColorProperties>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ColorPropertiesToJson(
      this,
    );
  }
}

abstract class _ColorProperties implements ColorProperties {
  const factory _ColorProperties(
      {final String? primary,
      final String? number,
      final String? border}) = _$_ColorProperties;

  factory _ColorProperties.fromJson(Map<String, dynamic> json) =
      _$_ColorProperties.fromJson;

  @override
  String? get primary;
  @override
  String? get number;
  @override
  String? get border;
  @override
  @JsonKey(ignore: true)
  _$$_ColorPropertiesCopyWith<_$_ColorProperties> get copyWith =>
      throw _privateConstructorUsedError;
}
