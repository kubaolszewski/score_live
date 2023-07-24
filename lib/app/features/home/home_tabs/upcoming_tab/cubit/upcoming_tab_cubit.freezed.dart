// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upcoming_tab_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpcomingTabState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LiveMatchModel> matches) matchesLoaded,
    required TResult Function() LoadingMatches,
    required TResult Function(String errorMessage) errorMatchesState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LiveMatchModel> matches)? matchesLoaded,
    TResult? Function()? LoadingMatches,
    TResult? Function(String errorMessage)? errorMatchesState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LiveMatchModel> matches)? matchesLoaded,
    TResult Function()? LoadingMatches,
    TResult Function(String errorMessage)? errorMatchesState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MatchesLoadedState value) matchesLoaded,
    required TResult Function(LoadingMatchesState value) LoadingMatches,
    required TResult Function(ErrorMatchesState value) errorMatchesState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MatchesLoadedState value)? matchesLoaded,
    TResult? Function(LoadingMatchesState value)? LoadingMatches,
    TResult? Function(ErrorMatchesState value)? errorMatchesState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MatchesLoadedState value)? matchesLoaded,
    TResult Function(LoadingMatchesState value)? LoadingMatches,
    TResult Function(ErrorMatchesState value)? errorMatchesState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingTabStateCopyWith<$Res> {
  factory $UpcomingTabStateCopyWith(
          UpcomingTabState value, $Res Function(UpcomingTabState) then) =
      _$UpcomingTabStateCopyWithImpl<$Res, UpcomingTabState>;
}

/// @nodoc
class _$UpcomingTabStateCopyWithImpl<$Res, $Val extends UpcomingTabState>
    implements $UpcomingTabStateCopyWith<$Res> {
  _$UpcomingTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MatchesLoadedStateCopyWith<$Res> {
  factory _$$MatchesLoadedStateCopyWith(_$MatchesLoadedState value,
          $Res Function(_$MatchesLoadedState) then) =
      __$$MatchesLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LiveMatchModel> matches});
}

/// @nodoc
class __$$MatchesLoadedStateCopyWithImpl<$Res>
    extends _$UpcomingTabStateCopyWithImpl<$Res, _$MatchesLoadedState>
    implements _$$MatchesLoadedStateCopyWith<$Res> {
  __$$MatchesLoadedStateCopyWithImpl(
      _$MatchesLoadedState _value, $Res Function(_$MatchesLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matches = null,
  }) {
    return _then(_$MatchesLoadedState(
      null == matches
          ? _value._matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<LiveMatchModel>,
    ));
  }
}

/// @nodoc

class _$MatchesLoadedState implements MatchesLoadedState {
  const _$MatchesLoadedState(final List<LiveMatchModel> matches)
      : _matches = matches;

  final List<LiveMatchModel> _matches;
  @override
  List<LiveMatchModel> get matches {
    if (_matches is EqualUnmodifiableListView) return _matches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matches);
  }

  @override
  String toString() {
    return 'UpcomingTabState.matchesLoaded(matches: $matches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchesLoadedState &&
            const DeepCollectionEquality().equals(other._matches, _matches));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_matches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchesLoadedStateCopyWith<_$MatchesLoadedState> get copyWith =>
      __$$MatchesLoadedStateCopyWithImpl<_$MatchesLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LiveMatchModel> matches) matchesLoaded,
    required TResult Function() LoadingMatches,
    required TResult Function(String errorMessage) errorMatchesState,
  }) {
    return matchesLoaded(matches);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LiveMatchModel> matches)? matchesLoaded,
    TResult? Function()? LoadingMatches,
    TResult? Function(String errorMessage)? errorMatchesState,
  }) {
    return matchesLoaded?.call(matches);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LiveMatchModel> matches)? matchesLoaded,
    TResult Function()? LoadingMatches,
    TResult Function(String errorMessage)? errorMatchesState,
    required TResult orElse(),
  }) {
    if (matchesLoaded != null) {
      return matchesLoaded(matches);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MatchesLoadedState value) matchesLoaded,
    required TResult Function(LoadingMatchesState value) LoadingMatches,
    required TResult Function(ErrorMatchesState value) errorMatchesState,
  }) {
    return matchesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MatchesLoadedState value)? matchesLoaded,
    TResult? Function(LoadingMatchesState value)? LoadingMatches,
    TResult? Function(ErrorMatchesState value)? errorMatchesState,
  }) {
    return matchesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MatchesLoadedState value)? matchesLoaded,
    TResult Function(LoadingMatchesState value)? LoadingMatches,
    TResult Function(ErrorMatchesState value)? errorMatchesState,
    required TResult orElse(),
  }) {
    if (matchesLoaded != null) {
      return matchesLoaded(this);
    }
    return orElse();
  }
}

abstract class MatchesLoadedState implements UpcomingTabState {
  const factory MatchesLoadedState(final List<LiveMatchModel> matches) =
      _$MatchesLoadedState;

  List<LiveMatchModel> get matches;
  @JsonKey(ignore: true)
  _$$MatchesLoadedStateCopyWith<_$MatchesLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingMatchesStateCopyWith<$Res> {
  factory _$$LoadingMatchesStateCopyWith(_$LoadingMatchesState value,
          $Res Function(_$LoadingMatchesState) then) =
      __$$LoadingMatchesStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMatchesStateCopyWithImpl<$Res>
    extends _$UpcomingTabStateCopyWithImpl<$Res, _$LoadingMatchesState>
    implements _$$LoadingMatchesStateCopyWith<$Res> {
  __$$LoadingMatchesStateCopyWithImpl(
      _$LoadingMatchesState _value, $Res Function(_$LoadingMatchesState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingMatchesState implements LoadingMatchesState {
  const _$LoadingMatchesState();

  @override
  String toString() {
    return 'UpcomingTabState.LoadingMatches()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingMatchesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LiveMatchModel> matches) matchesLoaded,
    required TResult Function() LoadingMatches,
    required TResult Function(String errorMessage) errorMatchesState,
  }) {
    return LoadingMatches();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LiveMatchModel> matches)? matchesLoaded,
    TResult? Function()? LoadingMatches,
    TResult? Function(String errorMessage)? errorMatchesState,
  }) {
    return LoadingMatches?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LiveMatchModel> matches)? matchesLoaded,
    TResult Function()? LoadingMatches,
    TResult Function(String errorMessage)? errorMatchesState,
    required TResult orElse(),
  }) {
    if (LoadingMatches != null) {
      return LoadingMatches();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MatchesLoadedState value) matchesLoaded,
    required TResult Function(LoadingMatchesState value) LoadingMatches,
    required TResult Function(ErrorMatchesState value) errorMatchesState,
  }) {
    return LoadingMatches(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MatchesLoadedState value)? matchesLoaded,
    TResult? Function(LoadingMatchesState value)? LoadingMatches,
    TResult? Function(ErrorMatchesState value)? errorMatchesState,
  }) {
    return LoadingMatches?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MatchesLoadedState value)? matchesLoaded,
    TResult Function(LoadingMatchesState value)? LoadingMatches,
    TResult Function(ErrorMatchesState value)? errorMatchesState,
    required TResult orElse(),
  }) {
    if (LoadingMatches != null) {
      return LoadingMatches(this);
    }
    return orElse();
  }
}

abstract class LoadingMatchesState implements UpcomingTabState {
  const factory LoadingMatchesState() = _$LoadingMatchesState;
}

/// @nodoc
abstract class _$$ErrorMatchesStateCopyWith<$Res> {
  factory _$$ErrorMatchesStateCopyWith(
          _$ErrorMatchesState value, $Res Function(_$ErrorMatchesState) then) =
      __$$ErrorMatchesStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorMatchesStateCopyWithImpl<$Res>
    extends _$UpcomingTabStateCopyWithImpl<$Res, _$ErrorMatchesState>
    implements _$$ErrorMatchesStateCopyWith<$Res> {
  __$$ErrorMatchesStateCopyWithImpl(
      _$ErrorMatchesState _value, $Res Function(_$ErrorMatchesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorMatchesState(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorMatchesState implements ErrorMatchesState {
  const _$ErrorMatchesState(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'UpcomingTabState.errorMatchesState(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMatchesState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMatchesStateCopyWith<_$ErrorMatchesState> get copyWith =>
      __$$ErrorMatchesStateCopyWithImpl<_$ErrorMatchesState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LiveMatchModel> matches) matchesLoaded,
    required TResult Function() LoadingMatches,
    required TResult Function(String errorMessage) errorMatchesState,
  }) {
    return errorMatchesState(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LiveMatchModel> matches)? matchesLoaded,
    TResult? Function()? LoadingMatches,
    TResult? Function(String errorMessage)? errorMatchesState,
  }) {
    return errorMatchesState?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LiveMatchModel> matches)? matchesLoaded,
    TResult Function()? LoadingMatches,
    TResult Function(String errorMessage)? errorMatchesState,
    required TResult orElse(),
  }) {
    if (errorMatchesState != null) {
      return errorMatchesState(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MatchesLoadedState value) matchesLoaded,
    required TResult Function(LoadingMatchesState value) LoadingMatches,
    required TResult Function(ErrorMatchesState value) errorMatchesState,
  }) {
    return errorMatchesState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MatchesLoadedState value)? matchesLoaded,
    TResult? Function(LoadingMatchesState value)? LoadingMatches,
    TResult? Function(ErrorMatchesState value)? errorMatchesState,
  }) {
    return errorMatchesState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MatchesLoadedState value)? matchesLoaded,
    TResult Function(LoadingMatchesState value)? LoadingMatches,
    TResult Function(ErrorMatchesState value)? errorMatchesState,
    required TResult orElse(),
  }) {
    if (errorMatchesState != null) {
      return errorMatchesState(this);
    }
    return orElse();
  }
}

abstract class ErrorMatchesState implements UpcomingTabState {
  const factory ErrorMatchesState(final String errorMessage) =
      _$ErrorMatchesState;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorMatchesStateCopyWith<_$ErrorMatchesState> get copyWith =>
      throw _privateConstructorUsedError;
}
