// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_results_tab_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopResultsTabState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LeagueModel> leagues) resultsLoaded,
    required TResult Function() loadingResults,
    required TResult Function(String errorMessage) errorResultsState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LeagueModel> leagues)? resultsLoaded,
    TResult? Function()? loadingResults,
    TResult? Function(String errorMessage)? errorResultsState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LeagueModel> leagues)? resultsLoaded,
    TResult Function()? loadingResults,
    TResult Function(String errorMessage)? errorResultsState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultsLoadedState value) resultsLoaded,
    required TResult Function(LoadingResultsState value) loadingResults,
    required TResult Function(ErrorResultsState value) errorResultsState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultsLoadedState value)? resultsLoaded,
    TResult? Function(LoadingResultsState value)? loadingResults,
    TResult? Function(ErrorResultsState value)? errorResultsState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultsLoadedState value)? resultsLoaded,
    TResult Function(LoadingResultsState value)? loadingResults,
    TResult Function(ErrorResultsState value)? errorResultsState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopResultsTabStateCopyWith<$Res> {
  factory $TopResultsTabStateCopyWith(
          TopResultsTabState value, $Res Function(TopResultsTabState) then) =
      _$TopResultsTabStateCopyWithImpl<$Res, TopResultsTabState>;
}

/// @nodoc
class _$TopResultsTabStateCopyWithImpl<$Res, $Val extends TopResultsTabState>
    implements $TopResultsTabStateCopyWith<$Res> {
  _$TopResultsTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ResultsLoadedStateCopyWith<$Res> {
  factory _$$ResultsLoadedStateCopyWith(_$ResultsLoadedState value,
          $Res Function(_$ResultsLoadedState) then) =
      __$$ResultsLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LeagueModel> leagues});
}

/// @nodoc
class __$$ResultsLoadedStateCopyWithImpl<$Res>
    extends _$TopResultsTabStateCopyWithImpl<$Res, _$ResultsLoadedState>
    implements _$$ResultsLoadedStateCopyWith<$Res> {
  __$$ResultsLoadedStateCopyWithImpl(
      _$ResultsLoadedState _value, $Res Function(_$ResultsLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leagues = null,
  }) {
    return _then(_$ResultsLoadedState(
      null == leagues
          ? _value._leagues
          : leagues // ignore: cast_nullable_to_non_nullable
              as List<LeagueModel>,
    ));
  }
}

/// @nodoc

class _$ResultsLoadedState implements ResultsLoadedState {
  const _$ResultsLoadedState(final List<LeagueModel> leagues)
      : _leagues = leagues;

  final List<LeagueModel> _leagues;
  @override
  List<LeagueModel> get leagues {
    if (_leagues is EqualUnmodifiableListView) return _leagues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leagues);
  }

  @override
  String toString() {
    return 'TopResultsTabState.resultsLoaded(leagues: $leagues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsLoadedState &&
            const DeepCollectionEquality().equals(other._leagues, _leagues));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_leagues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsLoadedStateCopyWith<_$ResultsLoadedState> get copyWith =>
      __$$ResultsLoadedStateCopyWithImpl<_$ResultsLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LeagueModel> leagues) resultsLoaded,
    required TResult Function() loadingResults,
    required TResult Function(String errorMessage) errorResultsState,
  }) {
    return resultsLoaded(leagues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LeagueModel> leagues)? resultsLoaded,
    TResult? Function()? loadingResults,
    TResult? Function(String errorMessage)? errorResultsState,
  }) {
    return resultsLoaded?.call(leagues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LeagueModel> leagues)? resultsLoaded,
    TResult Function()? loadingResults,
    TResult Function(String errorMessage)? errorResultsState,
    required TResult orElse(),
  }) {
    if (resultsLoaded != null) {
      return resultsLoaded(leagues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultsLoadedState value) resultsLoaded,
    required TResult Function(LoadingResultsState value) loadingResults,
    required TResult Function(ErrorResultsState value) errorResultsState,
  }) {
    return resultsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultsLoadedState value)? resultsLoaded,
    TResult? Function(LoadingResultsState value)? loadingResults,
    TResult? Function(ErrorResultsState value)? errorResultsState,
  }) {
    return resultsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultsLoadedState value)? resultsLoaded,
    TResult Function(LoadingResultsState value)? loadingResults,
    TResult Function(ErrorResultsState value)? errorResultsState,
    required TResult orElse(),
  }) {
    if (resultsLoaded != null) {
      return resultsLoaded(this);
    }
    return orElse();
  }
}

abstract class ResultsLoadedState implements TopResultsTabState {
  const factory ResultsLoadedState(final List<LeagueModel> leagues) =
      _$ResultsLoadedState;

  List<LeagueModel> get leagues;
  @JsonKey(ignore: true)
  _$$ResultsLoadedStateCopyWith<_$ResultsLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingResultsStateCopyWith<$Res> {
  factory _$$LoadingResultsStateCopyWith(_$LoadingResultsState value,
          $Res Function(_$LoadingResultsState) then) =
      __$$LoadingResultsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingResultsStateCopyWithImpl<$Res>
    extends _$TopResultsTabStateCopyWithImpl<$Res, _$LoadingResultsState>
    implements _$$LoadingResultsStateCopyWith<$Res> {
  __$$LoadingResultsStateCopyWithImpl(
      _$LoadingResultsState _value, $Res Function(_$LoadingResultsState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingResultsState implements LoadingResultsState {
  const _$LoadingResultsState();

  @override
  String toString() {
    return 'TopResultsTabState.loadingResults()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingResultsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LeagueModel> leagues) resultsLoaded,
    required TResult Function() loadingResults,
    required TResult Function(String errorMessage) errorResultsState,
  }) {
    return loadingResults();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LeagueModel> leagues)? resultsLoaded,
    TResult? Function()? loadingResults,
    TResult? Function(String errorMessage)? errorResultsState,
  }) {
    return loadingResults?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LeagueModel> leagues)? resultsLoaded,
    TResult Function()? loadingResults,
    TResult Function(String errorMessage)? errorResultsState,
    required TResult orElse(),
  }) {
    if (loadingResults != null) {
      return loadingResults();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultsLoadedState value) resultsLoaded,
    required TResult Function(LoadingResultsState value) loadingResults,
    required TResult Function(ErrorResultsState value) errorResultsState,
  }) {
    return loadingResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultsLoadedState value)? resultsLoaded,
    TResult? Function(LoadingResultsState value)? loadingResults,
    TResult? Function(ErrorResultsState value)? errorResultsState,
  }) {
    return loadingResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultsLoadedState value)? resultsLoaded,
    TResult Function(LoadingResultsState value)? loadingResults,
    TResult Function(ErrorResultsState value)? errorResultsState,
    required TResult orElse(),
  }) {
    if (loadingResults != null) {
      return loadingResults(this);
    }
    return orElse();
  }
}

abstract class LoadingResultsState implements TopResultsTabState {
  const factory LoadingResultsState() = _$LoadingResultsState;
}

/// @nodoc
abstract class _$$ErrorResultsStateCopyWith<$Res> {
  factory _$$ErrorResultsStateCopyWith(
          _$ErrorResultsState value, $Res Function(_$ErrorResultsState) then) =
      __$$ErrorResultsStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorResultsStateCopyWithImpl<$Res>
    extends _$TopResultsTabStateCopyWithImpl<$Res, _$ErrorResultsState>
    implements _$$ErrorResultsStateCopyWith<$Res> {
  __$$ErrorResultsStateCopyWithImpl(
      _$ErrorResultsState _value, $Res Function(_$ErrorResultsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorResultsState(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorResultsState implements ErrorResultsState {
  const _$ErrorResultsState(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'TopResultsTabState.errorResultsState(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorResultsState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorResultsStateCopyWith<_$ErrorResultsState> get copyWith =>
      __$$ErrorResultsStateCopyWithImpl<_$ErrorResultsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LeagueModel> leagues) resultsLoaded,
    required TResult Function() loadingResults,
    required TResult Function(String errorMessage) errorResultsState,
  }) {
    return errorResultsState(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LeagueModel> leagues)? resultsLoaded,
    TResult? Function()? loadingResults,
    TResult? Function(String errorMessage)? errorResultsState,
  }) {
    return errorResultsState?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LeagueModel> leagues)? resultsLoaded,
    TResult Function()? loadingResults,
    TResult Function(String errorMessage)? errorResultsState,
    required TResult orElse(),
  }) {
    if (errorResultsState != null) {
      return errorResultsState(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultsLoadedState value) resultsLoaded,
    required TResult Function(LoadingResultsState value) loadingResults,
    required TResult Function(ErrorResultsState value) errorResultsState,
  }) {
    return errorResultsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultsLoadedState value)? resultsLoaded,
    TResult? Function(LoadingResultsState value)? loadingResults,
    TResult? Function(ErrorResultsState value)? errorResultsState,
  }) {
    return errorResultsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultsLoadedState value)? resultsLoaded,
    TResult Function(LoadingResultsState value)? loadingResults,
    TResult Function(ErrorResultsState value)? errorResultsState,
    required TResult orElse(),
  }) {
    if (errorResultsState != null) {
      return errorResultsState(this);
    }
    return orElse();
  }
}

abstract class ErrorResultsState implements TopResultsTabState {
  const factory ErrorResultsState(final String errorMessage) =
      _$ErrorResultsState;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorResultsStateCopyWith<_$ErrorResultsState> get copyWith =>
      throw _privateConstructorUsedError;
}
