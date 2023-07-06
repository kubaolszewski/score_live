// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'competition_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompetitionState {
  List<LeagueModel> get league => throw _privateConstructorUsedError;
  BrowsingOptions get browsingOptions => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompetitionStateCopyWith<CompetitionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompetitionStateCopyWith<$Res> {
  factory $CompetitionStateCopyWith(
          CompetitionState value, $Res Function(CompetitionState) then) =
      _$CompetitionStateCopyWithImpl<$Res, CompetitionState>;
  @useResult
  $Res call(
      {List<LeagueModel> league,
      BrowsingOptions browsingOptions,
      String? errorMessage,
      bool isLoading});
}

/// @nodoc
class _$CompetitionStateCopyWithImpl<$Res, $Val extends CompetitionState>
    implements $CompetitionStateCopyWith<$Res> {
  _$CompetitionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? league = null,
    Object? browsingOptions = null,
    Object? errorMessage = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      league: null == league
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as List<LeagueModel>,
      browsingOptions: null == browsingOptions
          ? _value.browsingOptions
          : browsingOptions // ignore: cast_nullable_to_non_nullable
              as BrowsingOptions,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CompetitionStateCopyWith<$Res>
    implements $CompetitionStateCopyWith<$Res> {
  factory _$$_CompetitionStateCopyWith(
          _$_CompetitionState value, $Res Function(_$_CompetitionState) then) =
      __$$_CompetitionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<LeagueModel> league,
      BrowsingOptions browsingOptions,
      String? errorMessage,
      bool isLoading});
}

/// @nodoc
class __$$_CompetitionStateCopyWithImpl<$Res>
    extends _$CompetitionStateCopyWithImpl<$Res, _$_CompetitionState>
    implements _$$_CompetitionStateCopyWith<$Res> {
  __$$_CompetitionStateCopyWithImpl(
      _$_CompetitionState _value, $Res Function(_$_CompetitionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? league = null,
    Object? browsingOptions = null,
    Object? errorMessage = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$_CompetitionState(
      league: null == league
          ? _value._league
          : league // ignore: cast_nullable_to_non_nullable
              as List<LeagueModel>,
      browsingOptions: null == browsingOptions
          ? _value.browsingOptions
          : browsingOptions // ignore: cast_nullable_to_non_nullable
              as BrowsingOptions,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CompetitionState implements _CompetitionState {
  const _$_CompetitionState(
      {final List<LeagueModel> league = const [],
      this.browsingOptions = BrowsingOptions.top,
      this.errorMessage,
      this.isLoading = false})
      : _league = league;

  final List<LeagueModel> _league;
  @override
  @JsonKey()
  List<LeagueModel> get league {
    if (_league is EqualUnmodifiableListView) return _league;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_league);
  }

  @override
  @JsonKey()
  final BrowsingOptions browsingOptions;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'CompetitionState(league: $league, browsingOptions: $browsingOptions, errorMessage: $errorMessage, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompetitionState &&
            const DeepCollectionEquality().equals(other._league, _league) &&
            (identical(other.browsingOptions, browsingOptions) ||
                other.browsingOptions == browsingOptions) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_league),
      browsingOptions,
      errorMessage,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompetitionStateCopyWith<_$_CompetitionState> get copyWith =>
      __$$_CompetitionStateCopyWithImpl<_$_CompetitionState>(this, _$identity);
}

abstract class _CompetitionState implements CompetitionState {
  const factory _CompetitionState(
      {final List<LeagueModel> league,
      final BrowsingOptions browsingOptions,
      final String? errorMessage,
      final bool isLoading}) = _$_CompetitionState;

  @override
  List<LeagueModel> get league;
  @override
  BrowsingOptions get browsingOptions;
  @override
  String? get errorMessage;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_CompetitionStateCopyWith<_$_CompetitionState> get copyWith =>
      throw _privateConstructorUsedError;
}
