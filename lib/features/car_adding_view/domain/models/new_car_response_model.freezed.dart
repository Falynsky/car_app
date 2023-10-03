// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_car_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewCarResponseModel {
  String? get message => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<ErrorModel>? get errors => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewCarResponseModelCopyWith<NewCarResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewCarResponseModelCopyWith<$Res> {
  factory $NewCarResponseModelCopyWith(
          NewCarResponseModel value, $Res Function(NewCarResponseModel) then) =
      _$NewCarResponseModelCopyWithImpl<$Res, NewCarResponseModel>;
  @useResult
  $Res call(
      {String? message, String? name, List<ErrorModel>? errors, int? status});
}

/// @nodoc
class _$NewCarResponseModelCopyWithImpl<$Res, $Val extends NewCarResponseModel>
    implements $NewCarResponseModelCopyWith<$Res> {
  _$NewCarResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? name = freezed,
    Object? errors = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ErrorModel>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewCarResponseModelCopyWith<$Res>
    implements $NewCarResponseModelCopyWith<$Res> {
  factory _$$_NewCarResponseModelCopyWith(_$_NewCarResponseModel value,
          $Res Function(_$_NewCarResponseModel) then) =
      __$$_NewCarResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message, String? name, List<ErrorModel>? errors, int? status});
}

/// @nodoc
class __$$_NewCarResponseModelCopyWithImpl<$Res>
    extends _$NewCarResponseModelCopyWithImpl<$Res, _$_NewCarResponseModel>
    implements _$$_NewCarResponseModelCopyWith<$Res> {
  __$$_NewCarResponseModelCopyWithImpl(_$_NewCarResponseModel _value,
      $Res Function(_$_NewCarResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? name = freezed,
    Object? errors = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_NewCarResponseModel(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ErrorModel>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_NewCarResponseModel implements _NewCarResponseModel {
  const _$_NewCarResponseModel(
      {this.message, this.name, final List<ErrorModel>? errors, this.status})
      : _errors = errors;

  @override
  final String? message;
  @override
  final String? name;
  final List<ErrorModel>? _errors;
  @override
  List<ErrorModel>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? status;

  @override
  String toString() {
    return 'NewCarResponseModel(message: $message, name: $name, errors: $errors, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewCarResponseModel &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, name,
      const DeepCollectionEquality().hash(_errors), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewCarResponseModelCopyWith<_$_NewCarResponseModel> get copyWith =>
      __$$_NewCarResponseModelCopyWithImpl<_$_NewCarResponseModel>(
          this, _$identity);
}

abstract class _NewCarResponseModel implements NewCarResponseModel {
  const factory _NewCarResponseModel(
      {final String? message,
      final String? name,
      final List<ErrorModel>? errors,
      final int? status}) = _$_NewCarResponseModel;

  @override
  String? get message;
  @override
  String? get name;
  @override
  List<ErrorModel>? get errors;
  @override
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$$_NewCarResponseModelCopyWith<_$_NewCarResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
