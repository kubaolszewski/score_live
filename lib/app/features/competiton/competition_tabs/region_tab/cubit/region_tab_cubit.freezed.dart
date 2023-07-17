// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'region_tab_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegionTabState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LeagueModel> leagues) loadedLeagues,
    required TResult Function() loadingLeagues,
    required TResult Function(String errorMessage) errorLeaguesState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LeagueModel> leagues)? loadedLeagues,
    TResult? Function()? loadingLeagues,
    TResult? Function(String errorMessage)? errorLeaguesState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LeagueModel> leagues)? loadedLeagues,
    TResult Function()? loadingLeagues,
    TResult Function(String errorMessage)? errorLeaguesState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeaguesLoadedState value) loadedLeagues,
    required TResult Function(LoadingLeaguesState value) loadingLeagues,
    required TResult Function(ErrorLeaguesState value) errorLeaguesState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LeaguesLoadedState value)? loadedLeagues,
    TResult? Function(LoadingLeaguesState value)? loadingLeagues,
    TResult? Function(ErrorLeaguesState value)? errorLeaguesState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeaguesLoadedState value)? loadedLeagues,
    TResult Function(LoadingLeaguesState value)? loadingLeagues,
    TResult Function(ErrorLeaguesState value)? errorLeaguesState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionTabStateCopyWith<$Res> {
  factory $RegionTabStateCopyWith(
          RegionTabState value, $Res Function(RegionTabState) then) =
      _$RegionTabStateCopyWithImpl<$Res, RegionTabState>;
}

/// @nodoc
class _$RegionTabStateCopyWithImpl<$Res, $Val extends RegionTabState>
    implements $RegionTabStateCopyWith<$Res> {
  _$RegionTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LeaguesLoadedStateCopyWith<$Res> {
  factory _$$LeaguesLoadedStateCopyWith(_$LeaguesLoadedState value,
          $Res Function(_$LeaguesLoadedState) then) =
      __$$LeaguesLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LeagueModel> leagues});
}

/// @nodoc
class __$$LeaguesLoadedStateCopyWithImpl<$Res>
    extends _$RegionTabStateCopyWithImpl<$Res, _$LeaguesLoadedState>
    implements _$$LeaguesLoadedStateCopyWith<$Res> {
  __$$LeaguesLoadedStateCopyWithImpl(
      _$LeaguesLoadedState _value, $Res Function(_$LeaguesLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leagues = null,
  }) {
    return _then(_$LeaguesLoadedState(
      null == leagues
          ? _value._leagues
          : leagues // ignore: cast_nullable_to_non_nullable
              as List<LeagueModel>,
    ));
  }
}

/// @nodoc

class _$LeaguesLoadedState implements LeaguesLoadedState {
  const _$LeaguesLoadedState(final List<LeagueModel> leagues)
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
    return 'RegionTabState.loadedLeagues(leagues: $leagues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaguesLoadedState &&
            const DeepCollectionEquality().equals(other._leagues, _leagues));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_leagues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaguesLoadedStateCopyWith<_$LeaguesLoadedState> get copyWith =>
      __$$LeaguesLoadedStateCopyWithImpl<_$LeaguesLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LeagueModel> leagues) loadedLeagues,
    required TResult Function() loadingLeagues,
    required TResult Function(String errorMessage) errorLeaguesState,
  }) {
    return loadedLeagues(leagues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LeagueModel> leagues)? loadedLeagues,
    TResult? Function()? loadingLeagues,
    TResult? Function(String errorMessage)? errorLeaguesState,
  }) {
    return loadedLeagues?.call(leagues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LeagueModel> leagues)? loadedLeagues,
    TResult Function()? loadingLeagues,
    TResult Function(String errorMessage)? errorLeaguesState,
    required TResult orElse(),
  }) {
    if (loadedLeagues != null) {
      return loadedLeagues(leagues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeaguesLoadedState value) loadedLeagues,
    required TResult Function(LoadingLeaguesState value) loadingLeagues,
    required TResult Function(ErrorLeaguesState value) errorLeaguesState,
  }) {
    return loadedLeagues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LeaguesLoadedState value)? loadedLeagues,
    TResult? Function(LoadingLeaguesState value)? loadingLeagues,
    TResult? Function(ErrorLeaguesState value)? errorLeaguesState,
  }) {
    return loadedLeagues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeaguesLoadedState value)? loadedLeagues,
    TResult Function(LoadingLeaguesState value)? loadingLeagues,
    TResult Function(ErrorLeaguesState value)? errorLeaguesState,
    required TResult orElse(),
  }) {
    if (loadedLeagues != null) {
      return loadedLeagues(this);
    }
    return orElse();
  }
}

abstract class LeaguesLoadedState implements RegionTabState {
  const factory LeaguesLoadedState(final List<LeagueModel> leagues) =
      _$LeaguesLoadedState;

  List<LeagueModel> get leagues;
  @JsonKey(ignore: true)
  _$$LeaguesLoadedStateCopyWith<_$LeaguesLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingLeaguesStateCopyWith<$Res> {
  factory _$$LoadingLeaguesStateCopyWith(_$LoadingLeaguesState value,
          $Res Function(_$LoadingLeaguesState) then) =
      __$$LoadingLeaguesStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingLeaguesStateCopyWithImpl<$Res>
    extends _$RegionTabStateCopyWithImpl<$Res, _$LoadingLeaguesState>
    implements _$$LoadingLeaguesStateCopyWith<$Res> {
  __$$LoadingLeaguesStateCopyWithImpl(
      _$LoadingLeaguesState _value, $Res Function(_$LoadingLeaguesState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingLeaguesState implements LoadingLeaguesState {
  const _$LoadingLeaguesState();

  @override
  String toString() {
    return 'RegionTabState.loadingLeagues()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingLeaguesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LeagueModel> leagues) loadedLeagues,
    required TResult Function() loadingLeagues,
    required TResult Function(String errorMessage) errorLeaguesState,
  }) {
    return loadingLeagues();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LeagueModel> leagues)? loadedLeagues,
    TResult? Function()? loadingLeagues,
    TResult? Function(String errorMessage)? errorLeaguesState,
  }) {
    return loadingLeagues?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LeagueModel> leagues)? loadedLeagues,
    TResult Function()? loadingLeagues,
    TResult Function(String errorMessage)? errorLeaguesState,
    required TResult orElse(),
  }) {
    if (loadingLeagues != null) {
      return loadingLeagues();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeaguesLoadedState value) loadedLeagues,
    required TResult Function(LoadingLeaguesState value) loadingLeagues,
    required TResult Function(ErrorLeaguesState value) errorLeaguesState,
  }) {
    return loadingLeagues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LeaguesLoadedState value)? loadedLeagues,
    TResult? Function(LoadingLeaguesState value)? loadingLeagues,
    TResult? Function(ErrorLeaguesState value)? errorLeaguesState,
  }) {
    return loadingLeagues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeaguesLoadedState value)? loadedLeagues,
    TResult Function(LoadingLeaguesState value)? loadingLeagues,
    TResult Function(ErrorLeaguesState value)? errorLeaguesState,
    required TResult orElse(),
  }) {
    if (loadingLeagues != null) {
      return loadingLeagues(this);
    }
    return orElse();
  }
}

abstract class LoadingLeaguesState implements RegionTabState {
  const factory LoadingLeaguesState() = _$LoadingLeaguesState;
}

/// @nodoc
abstract class _$$ErrorLeaguesStateCopyWith<$Res> {
  factory _$$ErrorLeaguesStateCopyWith(
          _$ErrorLeaguesState value, $Res Function(_$ErrorLeaguesState) then) =
      __$$ErrorLeaguesStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorLeaguesStateCopyWithImpl<$Res>
    extends _$RegionTabStateCopyWithImpl<$Res, _$ErrorLeaguesState>
    implements _$$ErrorLeaguesStateCopyWith<$Res> {
  __$$ErrorLeaguesStateCopyWithImpl(
      _$ErrorLeaguesState _value, $Res Function(_$ErrorLeaguesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorLeaguesState(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorLeaguesState implements ErrorLeaguesState {
  const _$ErrorLeaguesState(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'RegionTabState.errorLeaguesState(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorLeaguesState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorLeaguesStateCopyWith<_$ErrorLeaguesState> get copyWith =>
      __$$ErrorLeaguesStateCopyWithImpl<_$ErrorLeaguesState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LeagueModel> leagues) loadedLeagues,
    required TResult Function() loadingLeagues,
    required TResult Function(String errorMessage) errorLeaguesState,
  }) {
    return errorLeaguesState(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LeagueModel> leagues)? loadedLeagues,
    TResult? Function()? loadingLeagues,
    TResult? Function(String errorMessage)? errorLeaguesState,
  }) {
    return errorLeaguesState?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LeagueModel> leagues)? loadedLeagues,
    TResult Function()? loadingLeagues,
    TResult Function(String errorMessage)? errorLeaguesState,
    required TResult orElse(),
  }) {
    if (errorLeaguesState != null) {
      return errorLeaguesState(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeaguesLoadedState value) loadedLeagues,
    required TResult Function(LoadingLeaguesState value) loadingLeagues,
    required TResult Function(ErrorLeaguesState value) errorLeaguesState,
  }) {
    return errorLeaguesState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LeaguesLoadedState value)? loadedLeagues,
    TResult? Function(LoadingLeaguesState value)? loadingLeagues,
    TResult? Function(ErrorLeaguesState value)? errorLeaguesState,
  }) {
    return errorLeaguesState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeaguesLoadedState value)? loadedLeagues,
    TResult Function(LoadingLeaguesState value)? loadingLeagues,
    TResult Function(ErrorLeaguesState value)? errorLeaguesState,
    required TResult orElse(),
  }) {
    if (errorLeaguesState != null) {
      return errorLeaguesState(this);
    }
    return orElse();
  }
}

abstract class ErrorLeaguesState implements RegionTabState {
  const factory ErrorLeaguesState(final String errorMessage) =
      _$ErrorLeaguesState;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorLeaguesStateCopyWith<_$ErrorLeaguesState> get copyWith =>
      throw _privateConstructorUsedError;
}
