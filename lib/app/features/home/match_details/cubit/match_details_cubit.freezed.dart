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
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      matchEvents: null == matchEvents
          ? _value.matchEvents
          : matchEvents // ignore: cast_nullable_to_non_nullable
              as List<MatchEventsModel>,
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
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_MatchDetailsState(
      matchEvents: null == matchEvents
          ? _value._matchEvents
          : matchEvents // ignore: cast_nullable_to_non_nullable
              as List<MatchEventsModel>,
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

class _$_MatchDetailsState implements _MatchDetailsState {
  const _$_MatchDetailsState(
      {final List<MatchEventsModel> matchEvents = const [],
      this.isLoading = false,
      this.errorMessage = ''})
      : _matchEvents = matchEvents;

  final List<MatchEventsModel> _matchEvents;
  @override
  @JsonKey()
  List<MatchEventsModel> get matchEvents {
    if (_matchEvents is EqualUnmodifiableListView) return _matchEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matchEvents);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'MatchDetailsState(matchEvents: $matchEvents, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchDetailsState &&
            const DeepCollectionEquality()
                .equals(other._matchEvents, _matchEvents) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_matchEvents),
      isLoading,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchDetailsStateCopyWith<_$_MatchDetailsState> get copyWith =>
      __$$_MatchDetailsStateCopyWithImpl<_$_MatchDetailsState>(
          this, _$identity);
}

abstract class _MatchDetailsState implements MatchDetailsState {
  const factory _MatchDetailsState(
      {final List<MatchEventsModel> matchEvents,
      final bool isLoading,
      final String errorMessage}) = _$_MatchDetailsState;

  @override
  List<MatchEventsModel> get matchEvents;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_MatchDetailsStateCopyWith<_$_MatchDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
