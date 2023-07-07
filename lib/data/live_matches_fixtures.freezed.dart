// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_matches_fixtures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LiveMatchesFixtures _$LiveMatchesFixturesFromJson(Map<String, dynamic> json) {
  return _LiveMatchesFixtures.fromJson(json);
}

/// @nodoc
mixin _$LiveMatchesFixtures {
  List<LiveMatchModel>? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveMatchesFixturesCopyWith<LiveMatchesFixtures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveMatchesFixturesCopyWith<$Res> {
  factory $LiveMatchesFixturesCopyWith(
          LiveMatchesFixtures value, $Res Function(LiveMatchesFixtures) then) =
      _$LiveMatchesFixturesCopyWithImpl<$Res, LiveMatchesFixtures>;
  @useResult
  $Res call({List<LiveMatchModel>? response});
}

/// @nodoc
class _$LiveMatchesFixturesCopyWithImpl<$Res, $Val extends LiveMatchesFixtures>
    implements $LiveMatchesFixturesCopyWith<$Res> {
  _$LiveMatchesFixturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<LiveMatchModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LiveMatchesFixturesCopyWith<$Res>
    implements $LiveMatchesFixturesCopyWith<$Res> {
  factory _$$_LiveMatchesFixturesCopyWith(_$_LiveMatchesFixtures value,
          $Res Function(_$_LiveMatchesFixtures) then) =
      __$$_LiveMatchesFixturesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LiveMatchModel>? response});
}

/// @nodoc
class __$$_LiveMatchesFixturesCopyWithImpl<$Res>
    extends _$LiveMatchesFixturesCopyWithImpl<$Res, _$_LiveMatchesFixtures>
    implements _$$_LiveMatchesFixturesCopyWith<$Res> {
  __$$_LiveMatchesFixturesCopyWithImpl(_$_LiveMatchesFixtures _value,
      $Res Function(_$_LiveMatchesFixtures) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$_LiveMatchesFixtures(
      response: freezed == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<LiveMatchModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LiveMatchesFixtures implements _LiveMatchesFixtures {
  _$_LiveMatchesFixtures({final List<LiveMatchModel>? response})
      : _response = response;

  factory _$_LiveMatchesFixtures.fromJson(Map<String, dynamic> json) =>
      _$$_LiveMatchesFixturesFromJson(json);

  final List<LiveMatchModel>? _response;
  @override
  List<LiveMatchModel>? get response {
    final value = _response;
    if (value == null) return null;
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LiveMatchesFixtures(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LiveMatchesFixtures &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LiveMatchesFixturesCopyWith<_$_LiveMatchesFixtures> get copyWith =>
      __$$_LiveMatchesFixturesCopyWithImpl<_$_LiveMatchesFixtures>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LiveMatchesFixturesToJson(
      this,
    );
  }
}

abstract class _LiveMatchesFixtures implements LiveMatchesFixtures {
  factory _LiveMatchesFixtures({final List<LiveMatchModel>? response}) =
      _$_LiveMatchesFixtures;

  factory _LiveMatchesFixtures.fromJson(Map<String, dynamic> json) =
      _$_LiveMatchesFixtures.fromJson;

  @override
  List<LiveMatchModel>? get response;
  @override
  @JsonKey(ignore: true)
  _$$_LiveMatchesFixturesCopyWith<_$_LiveMatchesFixtures> get copyWith =>
      throw _privateConstructorUsedError;
}
