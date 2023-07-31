// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MatchDetailsState {
  List<MatchEventsModel> get matchEvents => throw _privateConstructorUsedError;
  List<LineUpModel> get lineUps => throw _privateConstructorUsedError;
  List<LiveMatchModel> get teamsH2h => throw _privateConstructorUsedError;
  DetailsOptions get detailsOptions => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MatchDetailsStateCopyWith<MatchDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchDetailsStateCopyWith<$Res> {
  factory $MatchDetailsStateCopyWith(
          MatchDetailsState value, $Res Function(MatchDetailsState) then) =
      _$MatchDetailsStateCopyWithImpl<$Res, MatchDetailsState>;
  @useResult
  $Res call(
      {List<MatchEventsModel> matchEvents,
      List<LineUpModel> lineUps,
      List<LiveMatchModel> teamsH2h,
      DetailsOptions detailsOptions,
      bool isLoading,
      String errorMessage});
}

/// @nodoc
class _$MatchDetailsStateCopyWithImpl<$Res, $Val extends MatchDetailsState>
    implements $MatchDetailsStateCopyWith<$Res> {
  _$MatchDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matchEvents = null,
    Object? lineUps = null,
    Object? teamsH2h = null,
    Object? detailsOptions = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      matchEvents: null == matchEvents
          ? _value.matchEvents
          : matchEvents // ignore: cast_nullable_to_non_nullable
              as List<MatchEventsModel>,
      lineUps: null == lineUps
          ? _value.lineUps
          : lineUps // ignore: cast_nullable_to_non_nullable
              as List<LineUpModel>,
      teamsH2h: null == teamsH2h
          ? _value.teamsH2h
          : teamsH2h // ignore: cast_nullable_to_non_nullable
              as List<LiveMatchModel>,
      detailsOptions: null == detailsOptions
          ? _value.detailsOptions
          : detailsOptions // ignore: cast_nullable_to_non_nullable
              as DetailsOptions,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MatchDetailsStateCopyWith<$Res>
    implements $MatchDetailsStateCopyWith<$Res> {
  factory _$$_MatchDetailsStateCopyWith(_$_MatchDetailsState value,
          $Res Function(_$_MatchDetailsState) then) =
      __$$_MatchDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MatchEventsModel> matchEvents,
      List<LineUpModel> lineUps,
      List<LiveMatchModel> teamsH2h,
      DetailsOptions detailsOptions,
      bool isLoading,
      String errorMessage});
}

/// @nodoc
class __$$_MatchDetailsStateCopyWithImpl<$Res>
    extends _$MatchDetailsStateCopyWithImpl<$Res, _$_MatchDetailsState>
    implements _$$_MatchDetailsStateCopyWith<$Res> {
  __$$_MatchDetailsStateCopyWithImpl(
      _$_MatchDetailsState _value, $Res Function(_$_MatchDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matchEvents = null,
    Object? lineUps = null,
    Object? teamsH2h = null,
    Object? detailsOptions = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_MatchDetailsState(
      matchEvents: null == matchEvents
          ? _value._matchEvents
          : matchEvents // ignore: cast_nullable_to_non_nullable
              as List<MatchEventsModel>,
      lineUps: null == lineUps
          ? _value._lineUps
          : lineUps // ignore: cast_nullable_to_non_nullable
              as List<LineUpModel>,
      teamsH2h: null == teamsH2h
          ? _value._teamsH2h
          : teamsH2h // ignore: cast_nullable_to_non_nullable
              as List<LiveMatchModel>,
      detailsOptions: null == detailsOptions
          ? _value.detailsOptions
          : detailsOptions // ignore: cast_nullable_to_non_nullable
              as DetailsOptions,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MatchDetailsState extends _MatchDetailsState {
  _$_MatchDetailsState(
      {final List<MatchEventsModel> matchEvents = const [],
      final List<LineUpModel> lineUps = const [],
      final List<LiveMatchModel> teamsH2h = const [],
      this.detailsOptions = DetailsOptions.summary,
      this.isLoading = false,
      this.errorMessage = ''})
      : _matchEvents = matchEvents,
        _lineUps = lineUps,
        _teamsH2h = teamsH2h,
        super._();

  final List<MatchEventsModel> _matchEvents;
  @override
  @JsonKey()
  List<MatchEventsModel> get matchEvents {
    if (_matchEvents is EqualUnmodifiableListView) return _matchEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matchEvents);
  }

  final List<LineUpModel> _lineUps;
  @override
  @JsonKey()
  List<LineUpModel> get lineUps {
    if (_lineUps is EqualUnmodifiableListView) return _lineUps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lineUps);
  }

  final List<LiveMatchModel> _teamsH2h;
  @override
  @JsonKey()
  List<LiveMatchModel> get teamsH2h {
    if (_teamsH2h is EqualUnmodifiableListView) return _teamsH2h;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teamsH2h);
  }

  @override
  @JsonKey()
  final DetailsOptions detailsOptions;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'MatchDetailsState(matchEvents: $matchEvents, lineUps: $lineUps, teamsH2h: $teamsH2h, detailsOptions: $detailsOptions, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchDetailsState &&
            const DeepCollectionEquality()
                .equals(other._matchEvents, _matchEvents) &&
            const DeepCollectionEquality().equals(other._lineUps, _lineUps) &&
            const DeepCollectionEquality().equals(other._teamsH2h, _teamsH2h) &&
            (identical(other.detailsOptions, detailsOptions) ||
                other.detailsOptions == detailsOptions) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_matchEvents),
      const DeepCollectionEquality().hash(_lineUps),
      const DeepCollectionEquality().hash(_teamsH2h),
      detailsOptions,
      isLoading,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchDetailsStateCopyWith<_$_MatchDetailsState> get copyWith =>
      __$$_MatchDetailsStateCopyWithImpl<_$_MatchDetailsState>(
          this, _$identity);
}

abstract class _MatchDetailsState extends MatchDetailsState {
  factory _MatchDetailsState(
      {final List<MatchEventsModel> matchEvents,
      final List<LineUpModel> lineUps,
      final List<LiveMatchModel> teamsH2h,
      final DetailsOptions detailsOptions,
      final bool isLoading,
      final String errorMessage}) = _$_MatchDetailsState;
  _MatchDetailsState._() : super._();

  @override
  List<MatchEventsModel> get matchEvents;
  @override
  List<LineUpModel> get lineUps;
  @override
  List<LiveMatchModel> get teamsH2h;
  @override
  DetailsOptions get detailsOptions;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_MatchDetailsStateCopyWith<_$_MatchDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
