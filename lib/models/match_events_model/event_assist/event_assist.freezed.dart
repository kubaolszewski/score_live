// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_assist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Assist _$AssistFromJson(Map<String, dynamic> json) {
  return _Assist.fromJson(json);
}

/// @nodoc
mixin _$Assist {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssistCopyWith<Assist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssistCopyWith<$Res> {
  factory $AssistCopyWith(Assist value, $Res Function(Assist) then) =
      _$AssistCopyWithImpl<$Res, Assist>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$AssistCopyWithImpl<$Res, $Val extends Assist>
    implements $AssistCopyWith<$Res> {
  _$AssistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AssistCopyWith<$Res> implements $AssistCopyWith<$Res> {
  factory _$$_AssistCopyWith(_$_Assist value, $Res Function(_$_Assist) then) =
      __$$_AssistCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$_AssistCopyWithImpl<$Res>
    extends _$AssistCopyWithImpl<$Res, _$_Assist>
    implements _$$_AssistCopyWith<$Res> {
  __$$_AssistCopyWithImpl(_$_Assist _value, $Res Function(_$_Assist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Assist(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Assist implements _Assist {
  const _$_Assist({this.id, this.name});

  factory _$_Assist.fromJson(Map<String, dynamic> json) =>
      _$$_AssistFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Assist(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Assist &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssistCopyWith<_$_Assist> get copyWith =>
      __$$_AssistCopyWithImpl<_$_Assist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssistToJson(
      this,
    );
  }
}

abstract class _Assist implements Assist {
  const factory _Assist({final int? id, final String? name}) = _$_Assist;

  factory _Assist.fromJson(Map<String, dynamic> json) = _$_Assist.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_AssistCopyWith<_$_Assist> get copyWith =>
      throw _privateConstructorUsedError;
}
