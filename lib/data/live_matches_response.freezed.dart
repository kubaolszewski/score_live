// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_matches_response.dart';

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
  List<LiveMatchTileModel> get response => throw _privateConstructorUsedError;

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
  $Res call({List<LiveMatchTileModel> response});
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
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<LiveMatchTileModel>,
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
  $Res call({List<LiveMatchTileModel> response});
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
    Object? response = null,
  }) {
    return _then(_$_LiveMatchesFixtures(
      null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<LiveMatchTileModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LiveMatchesFixtures implements _LiveMatchesFixtures {
  _$_LiveMatchesFixtures(final List<LiveMatchTileModel> response)
      : _response = response;

  factory _$_LiveMatchesFixtures.fromJson(Map<String, dynamic> json) =>
      _$$_LiveMatchesFixturesFromJson(json);

  final List<LiveMatchTileModel> _response;
  @override
  List<LiveMatchTileModel> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
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
  factory _LiveMatchesFixtures(final List<LiveMatchTileModel> response) =
      _$_LiveMatchesFixtures;

  factory _LiveMatchesFixtures.fromJson(Map<String, dynamic> json) =
      _$_LiveMatchesFixtures.fromJson;

  @override
  List<LiveMatchTileModel> get response;
  @override
  @JsonKey(ignore: true)
  _$$_LiveMatchesFixturesCopyWith<_$_LiveMatchesFixtures> get copyWith =>
      throw _privateConstructorUsedError;
}

LiveMatchesResponse _$LiveMatchesResponseFromJson(Map<String, dynamic> json) {
  return _LiveMatchesResponse.fromJson(json);
}

/// @nodoc
mixin _$LiveMatchesResponse {
  LiveMatchesFixtures get fixtures => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveMatchesResponseCopyWith<LiveMatchesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveMatchesResponseCopyWith<$Res> {
  factory $LiveMatchesResponseCopyWith(
          LiveMatchesResponse value, $Res Function(LiveMatchesResponse) then) =
      _$LiveMatchesResponseCopyWithImpl<$Res, LiveMatchesResponse>;
  @useResult
  $Res call({LiveMatchesFixtures fixtures});

  $LiveMatchesFixturesCopyWith<$Res> get fixtures;
}

/// @nodoc
class _$LiveMatchesResponseCopyWithImpl<$Res, $Val extends LiveMatchesResponse>
    implements $LiveMatchesResponseCopyWith<$Res> {
  _$LiveMatchesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fixtures = null,
  }) {
    return _then(_value.copyWith(
      fixtures: null == fixtures
          ? _value.fixtures
          : fixtures // ignore: cast_nullable_to_non_nullable
              as LiveMatchesFixtures,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LiveMatchesFixturesCopyWith<$Res> get fixtures {
    return $LiveMatchesFixturesCopyWith<$Res>(_value.fixtures, (value) {
      return _then(_value.copyWith(fixtures: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LiveMatchesResponseCopyWith<$Res>
    implements $LiveMatchesResponseCopyWith<$Res> {
  factory _$$_LiveMatchesResponseCopyWith(_$_LiveMatchesResponse value,
          $Res Function(_$_LiveMatchesResponse) then) =
      __$$_LiveMatchesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LiveMatchesFixtures fixtures});

  @override
  $LiveMatchesFixturesCopyWith<$Res> get fixtures;
}

/// @nodoc
class __$$_LiveMatchesResponseCopyWithImpl<$Res>
    extends _$LiveMatchesResponseCopyWithImpl<$Res, _$_LiveMatchesResponse>
    implements _$$_LiveMatchesResponseCopyWith<$Res> {
  __$$_LiveMatchesResponseCopyWithImpl(_$_LiveMatchesResponse _value,
      $Res Function(_$_LiveMatchesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fixtures = null,
  }) {
    return _then(_$_LiveMatchesResponse(
      null == fixtures
          ? _value.fixtures
          : fixtures // ignore: cast_nullable_to_non_nullable
              as LiveMatchesFixtures,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LiveMatchesResponse implements _LiveMatchesResponse {
  _$_LiveMatchesResponse(this.fixtures);

  factory _$_LiveMatchesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LiveMatchesResponseFromJson(json);

  @override
  final LiveMatchesFixtures fixtures;

  @override
  String toString() {
    return 'LiveMatchesResponse(fixtures: $fixtures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LiveMatchesResponse &&
            (identical(other.fixtures, fixtures) ||
                other.fixtures == fixtures));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fixtures);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LiveMatchesResponseCopyWith<_$_LiveMatchesResponse> get copyWith =>
      __$$_LiveMatchesResponseCopyWithImpl<_$_LiveMatchesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LiveMatchesResponseToJson(
      this,
    );
  }
}

abstract class _LiveMatchesResponse implements LiveMatchesResponse {
  factory _LiveMatchesResponse(final LiveMatchesFixtures fixtures) =
      _$_LiveMatchesResponse;

  factory _LiveMatchesResponse.fromJson(Map<String, dynamic> json) =
      _$_LiveMatchesResponse.fromJson;

  @override
  LiveMatchesFixtures get fixtures;
  @override
  @JsonKey(ignore: true)
  _$$_LiveMatchesResponseCopyWith<_$_LiveMatchesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
