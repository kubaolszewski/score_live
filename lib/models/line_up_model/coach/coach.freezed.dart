// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Coach _$CoachFromJson(Map<String, dynamic> json) {
  return _Coach.fromJson(json);
}

/// @nodoc
mixin _$Coach {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoachCopyWith<Coach> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachCopyWith<$Res> {
  factory $CoachCopyWith(Coach value, $Res Function(Coach) then) =
      _$CoachCopyWithImpl<$Res, Coach>;
  @useResult
  $Res call({int? id, String? name, String? photo});
}

/// @nodoc
class _$CoachCopyWithImpl<$Res, $Val extends Coach>
    implements $CoachCopyWith<$Res> {
  _$CoachCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoachCopyWith<$Res> implements $CoachCopyWith<$Res> {
  factory _$$_CoachCopyWith(_$_Coach value, $Res Function(_$_Coach) then) =
      __$$_CoachCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? photo});
}

/// @nodoc
class __$$_CoachCopyWithImpl<$Res> extends _$CoachCopyWithImpl<$Res, _$_Coach>
    implements _$$_CoachCopyWith<$Res> {
  __$$_CoachCopyWithImpl(_$_Coach _value, $Res Function(_$_Coach) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$_Coach(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coach implements _Coach {
  const _$_Coach({this.id, this.name, this.photo});

  factory _$_Coach.fromJson(Map<String, dynamic> json) =>
      _$$_CoachFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? photo;

  @override
  String toString() {
    return 'Coach(id: $id, name: $name, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Coach &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoachCopyWith<_$_Coach> get copyWith =>
      __$$_CoachCopyWithImpl<_$_Coach>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoachToJson(
      this,
    );
  }
}

abstract class _Coach implements Coach {
  const factory _Coach(
      {final int? id, final String? name, final String? photo}) = _$_Coach;

  factory _Coach.fromJson(Map<String, dynamic> json) = _$_Coach.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get photo;
  @override
  @JsonKey(ignore: true)
  _$$_CoachCopyWith<_$_Coach> get copyWith =>
      throw _privateConstructorUsedError;
}
