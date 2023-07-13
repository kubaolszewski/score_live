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
  List<LiveMatchModel>? get liveMatchModel =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  HomeOptions get homeOptions => throw _privateConstructorUsedError;
  DetailsOptions get detailsOptions => throw _privateConstructorUsedError;
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
      {List<LiveMatchModel>? liveMatchModel,
      bool isLoading,
      DateTime? date,
      HomeOptions homeOptions,
      DetailsOptions detailsOptions,
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
    Object? liveMatchModel = freezed,
    Object? isLoading = null,
    Object? date = freezed,
    Object? homeOptions = null,
    Object? detailsOptions = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      liveMatchModel: freezed == liveMatchModel
          ? _value.liveMatchModel
          : liveMatchModel // ignore: cast_nullable_to_non_nullable
              as List<LiveMatchModel>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      homeOptions: null == homeOptions
          ? _value.homeOptions
          : homeOptions // ignore: cast_nullable_to_non_nullable
              as HomeOptions,
      detailsOptions: null == detailsOptions
          ? _value.detailsOptions
          : detailsOptions // ignore: cast_nullable_to_non_nullable
              as DetailsOptions,
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
      {List<LiveMatchModel>? liveMatchModel,
      bool isLoading,
      DateTime? date,
      HomeOptions homeOptions,
      DetailsOptions detailsOptions,
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
    Object? liveMatchModel = freezed,
    Object? isLoading = null,
    Object? date = freezed,
    Object? homeOptions = null,
    Object? detailsOptions = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_HomeState(
      liveMatchModel: freezed == liveMatchModel
          ? _value._liveMatchModel
          : liveMatchModel // ignore: cast_nullable_to_non_nullable
              as List<LiveMatchModel>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      homeOptions: null == homeOptions
          ? _value.homeOptions
          : homeOptions // ignore: cast_nullable_to_non_nullable
              as HomeOptions,
      detailsOptions: null == detailsOptions
          ? _value.detailsOptions
          : detailsOptions // ignore: cast_nullable_to_non_nullable
              as DetailsOptions,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {final List<LiveMatchModel>? liveMatchModel = const [],
      this.isLoading = false,
      this.date,
      this.homeOptions = HomeOptions.score,
      this.detailsOptions = DetailsOptions.summary,
      this.errorMessage})
      : _liveMatchModel = liveMatchModel;

  final List<LiveMatchModel>? _liveMatchModel;
  @override
  @JsonKey()
  List<LiveMatchModel>? get liveMatchModel {
    final value = _liveMatchModel;
    if (value == null) return null;
    if (_liveMatchModel is EqualUnmodifiableListView) return _liveMatchModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final DateTime? date;
  @override
  @JsonKey()
  final HomeOptions homeOptions;
  @override
  @JsonKey()
  final DetailsOptions detailsOptions;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'HomeState(liveMatchModel: $liveMatchModel, isLoading: $isLoading, date: $date, homeOptions: $homeOptions, detailsOptions: $detailsOptions, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality()
                .equals(other._liveMatchModel, _liveMatchModel) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.homeOptions, homeOptions) ||
                other.homeOptions == homeOptions) &&
            (identical(other.detailsOptions, detailsOptions) ||
                other.detailsOptions == detailsOptions) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_liveMatchModel),
      isLoading,
      date,
      homeOptions,
      detailsOptions,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final List<LiveMatchModel>? liveMatchModel,
      final bool isLoading,
      final DateTime? date,
      final HomeOptions homeOptions,
      final DetailsOptions detailsOptions,
      final String? errorMessage}) = _$_HomeState;

  @override
  List<LiveMatchModel>? get liveMatchModel;
  @override
  bool get isLoading;
  @override
  DateTime? get date;
  @override
  HomeOptions get homeOptions;
  @override
  DetailsOptions get detailsOptions;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
