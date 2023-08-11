// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  List<MatchModel>? get matchModel => throw _privateConstructorUsedError;
  List<MatchEventsModel>? get matchEventsModel =>
      throw _privateConstructorUsedError;
  HomeOptions get homeOptions => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<MatchModel>? matchModel,
      List<MatchEventsModel>? matchEventsModel,
      HomeOptions homeOptions,
      DateTime? date,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matchModel = freezed,
    Object? matchEventsModel = freezed,
    Object? homeOptions = null,
    Object? date = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      matchModel: freezed == matchModel
          ? _value.matchModel
          : matchModel // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>?,
      matchEventsModel: freezed == matchEventsModel
          ? _value.matchEventsModel
          : matchEventsModel // ignore: cast_nullable_to_non_nullable
              as List<MatchEventsModel>?,
      homeOptions: null == homeOptions
          ? _value.homeOptions
          : homeOptions // ignore: cast_nullable_to_non_nullable
              as HomeOptions,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MatchModel>? matchModel,
      List<MatchEventsModel>? matchEventsModel,
      HomeOptions homeOptions,
      DateTime? date,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matchModel = freezed,
    Object? matchEventsModel = freezed,
    Object? homeOptions = null,
    Object? date = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_HomeState(
      matchModel: freezed == matchModel
          ? _value._matchModel
          : matchModel // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>?,
      matchEventsModel: freezed == matchEventsModel
          ? _value._matchEventsModel
          : matchEventsModel // ignore: cast_nullable_to_non_nullable
              as List<MatchEventsModel>?,
      homeOptions: null == homeOptions
          ? _value.homeOptions
          : homeOptions // ignore: cast_nullable_to_non_nullable
              as HomeOptions,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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

class _$_HomeState extends _HomeState {
  _$_HomeState(
      {final List<MatchModel>? matchModel = const [],
      final List<MatchEventsModel>? matchEventsModel = const [],
      this.homeOptions = HomeOptions.score,
      this.date,
      this.isLoading = false,
      this.errorMessage})
      : _matchModel = matchModel,
        _matchEventsModel = matchEventsModel,
        super._();

  final List<MatchModel>? _matchModel;
  @override
  @JsonKey()
  List<MatchModel>? get matchModel {
    final value = _matchModel;
    if (value == null) return null;
    if (_matchModel is EqualUnmodifiableListView) return _matchModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MatchEventsModel>? _matchEventsModel;
  @override
  @JsonKey()
  List<MatchEventsModel>? get matchEventsModel {
    final value = _matchEventsModel;
    if (value == null) return null;
    if (_matchEventsModel is EqualUnmodifiableListView)
      return _matchEventsModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final HomeOptions homeOptions;
  @override
  final DateTime? date;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'HomeState(matchModel: $matchModel, matchEventsModel: $matchEventsModel, homeOptions: $homeOptions, date: $date, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality()
                .equals(other._matchModel, _matchModel) &&
            const DeepCollectionEquality()
                .equals(other._matchEventsModel, _matchEventsModel) &&
            (identical(other.homeOptions, homeOptions) ||
                other.homeOptions == homeOptions) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_matchModel),
      const DeepCollectionEquality().hash(_matchEventsModel),
      homeOptions,
      date,
      isLoading,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  factory _HomeState(
      {final List<MatchModel>? matchModel,
      final List<MatchEventsModel>? matchEventsModel,
      final HomeOptions homeOptions,
      final DateTime? date,
      final bool isLoading,
      final String? errorMessage}) = _$_HomeState;
  _HomeState._() : super._();

  @override
  List<MatchModel>? get matchModel;
  @override
  List<MatchEventsModel>? get matchEventsModel;
  @override
  HomeOptions get homeOptions;
  @override
  DateTime? get date;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
