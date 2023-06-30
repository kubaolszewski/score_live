// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_tab_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScoreTabState {
  List<LiveMatchResponse>? get liveMatchResponse =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScoreTabStateCopyWith<ScoreTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreTabStateCopyWith<$Res> {
  factory $ScoreTabStateCopyWith(
          ScoreTabState value, $Res Function(ScoreTabState) then) =
      _$ScoreTabStateCopyWithImpl<$Res, ScoreTabState>;
  @useResult
  $Res call(
      {List<LiveMatchResponse>? liveMatchResponse,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class _$ScoreTabStateCopyWithImpl<$Res, $Val extends ScoreTabState>
    implements $ScoreTabStateCopyWith<$Res> {
  _$ScoreTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liveMatchResponse = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      liveMatchResponse: freezed == liveMatchResponse
          ? _value.liveMatchResponse
          : liveMatchResponse // ignore: cast_nullable_to_non_nullable
              as List<LiveMatchResponse>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScoreTabStateCopyWith<$Res>
    implements $ScoreTabStateCopyWith<$Res> {
  factory _$$_ScoreTabStateCopyWith(
          _$_ScoreTabState value, $Res Function(_$_ScoreTabState) then) =
      __$$_ScoreTabStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<LiveMatchResponse>? liveMatchResponse,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class __$$_ScoreTabStateCopyWithImpl<$Res>
    extends _$ScoreTabStateCopyWithImpl<$Res, _$_ScoreTabState>
    implements _$$_ScoreTabStateCopyWith<$Res> {
  __$$_ScoreTabStateCopyWithImpl(
      _$_ScoreTabState _value, $Res Function(_$_ScoreTabState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liveMatchResponse = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_ScoreTabState(
      liveMatchResponse: freezed == liveMatchResponse
          ? _value._liveMatchResponse
          : liveMatchResponse // ignore: cast_nullable_to_non_nullable
              as List<LiveMatchResponse>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ScoreTabState implements _ScoreTabState {
  const _$_ScoreTabState(
      {final List<LiveMatchResponse>? liveMatchResponse = const [],
      this.isLoading = false,
      this.errorMessage})
      : _liveMatchResponse = liveMatchResponse;

  final List<LiveMatchResponse>? _liveMatchResponse;
  @override
  @JsonKey()
  List<LiveMatchResponse>? get liveMatchResponse {
    final value = _liveMatchResponse;
    if (value == null) return null;
    if (_liveMatchResponse is EqualUnmodifiableListView)
      return _liveMatchResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ScoreTabState(liveMatchResponse: $liveMatchResponse, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScoreTabState &&
            const DeepCollectionEquality()
                .equals(other._liveMatchResponse, _liveMatchResponse) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_liveMatchResponse),
      isLoading,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScoreTabStateCopyWith<_$_ScoreTabState> get copyWith =>
      __$$_ScoreTabStateCopyWithImpl<_$_ScoreTabState>(this, _$identity);
}

abstract class _ScoreTabState implements ScoreTabState {
  const factory _ScoreTabState(
      {final List<LiveMatchResponse>? liveMatchResponse,
      final bool isLoading,
      final String? errorMessage}) = _$_ScoreTabState;

  @override
  List<LiveMatchResponse>? get liveMatchResponse;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ScoreTabStateCopyWith<_$_ScoreTabState> get copyWith =>
      throw _privateConstructorUsedError;
}
