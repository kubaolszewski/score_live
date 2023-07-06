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
  List<LeagueModel> get leagueModel => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopResultsTabStateCopyWith<TopResultsTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopResultsTabStateCopyWith<$Res> {
  factory $TopResultsTabStateCopyWith(
          TopResultsTabState value, $Res Function(TopResultsTabState) then) =
      _$TopResultsTabStateCopyWithImpl<$Res, TopResultsTabState>;
  @useResult
  $Res call(
      {List<LeagueModel> leagueModel, bool isLoading, String? errorMessage});
}

/// @nodoc
class _$TopResultsTabStateCopyWithImpl<$Res, $Val extends TopResultsTabState>
    implements $TopResultsTabStateCopyWith<$Res> {
  _$TopResultsTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leagueModel = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      leagueModel: null == leagueModel
          ? _value.leagueModel
          : leagueModel // ignore: cast_nullable_to_non_nullable
              as List<LeagueModel>,
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
abstract class _$$_TopResultsTabStateCopyWith<$Res>
    implements $TopResultsTabStateCopyWith<$Res> {
  factory _$$_TopResultsTabStateCopyWith(_$_TopResultsTabState value,
          $Res Function(_$_TopResultsTabState) then) =
      __$$_TopResultsTabStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<LeagueModel> leagueModel, bool isLoading, String? errorMessage});
}

/// @nodoc
class __$$_TopResultsTabStateCopyWithImpl<$Res>
    extends _$TopResultsTabStateCopyWithImpl<$Res, _$_TopResultsTabState>
    implements _$$_TopResultsTabStateCopyWith<$Res> {
  __$$_TopResultsTabStateCopyWithImpl(
      _$_TopResultsTabState _value, $Res Function(_$_TopResultsTabState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leagueModel = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_TopResultsTabState(
      leagueModel: null == leagueModel
          ? _value._leagueModel
          : leagueModel // ignore: cast_nullable_to_non_nullable
              as List<LeagueModel>,
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

class _$_TopResultsTabState implements _TopResultsTabState {
  const _$_TopResultsTabState(
      {final List<LeagueModel> leagueModel = const [],
      this.isLoading = false,
      this.errorMessage})
      : _leagueModel = leagueModel;

  final List<LeagueModel> _leagueModel;
  @override
  @JsonKey()
  List<LeagueModel> get leagueModel {
    if (_leagueModel is EqualUnmodifiableListView) return _leagueModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leagueModel);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TopResultsTabState(leagueModel: $leagueModel, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopResultsTabState &&
            const DeepCollectionEquality()
                .equals(other._leagueModel, _leagueModel) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_leagueModel),
      isLoading,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopResultsTabStateCopyWith<_$_TopResultsTabState> get copyWith =>
      __$$_TopResultsTabStateCopyWithImpl<_$_TopResultsTabState>(
          this, _$identity);
}

abstract class _TopResultsTabState implements TopResultsTabState {
  const factory _TopResultsTabState(
      {final List<LeagueModel> leagueModel,
      final bool isLoading,
      final String? errorMessage}) = _$_TopResultsTabState;

  @override
  List<LeagueModel> get leagueModel;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_TopResultsTabStateCopyWith<_$_TopResultsTabState> get copyWith =>
      throw _privateConstructorUsedError;
}
