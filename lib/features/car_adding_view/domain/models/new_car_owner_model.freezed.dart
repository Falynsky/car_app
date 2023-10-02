// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_car_owner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewCarOwnerModel {
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get birthDate => throw _privateConstructorUsedError;
  String get sex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewCarOwnerModelCopyWith<NewCarOwnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewCarOwnerModelCopyWith<$Res> {
  factory $NewCarOwnerModelCopyWith(
          NewCarOwnerModel value, $Res Function(NewCarOwnerModel) then) =
      _$NewCarOwnerModelCopyWithImpl<$Res, NewCarOwnerModel>;
  @useResult
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String birthDate,
      String sex});
}

/// @nodoc
class _$NewCarOwnerModelCopyWithImpl<$Res, $Val extends NewCarOwnerModel>
    implements $NewCarOwnerModelCopyWith<$Res> {
  _$NewCarOwnerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? birthDate = null,
    Object? sex = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewCarOwnerModelCopyWith<$Res>
    implements $NewCarOwnerModelCopyWith<$Res> {
  factory _$$_NewCarOwnerModelCopyWith(
          _$_NewCarOwnerModel value, $Res Function(_$_NewCarOwnerModel) then) =
      __$$_NewCarOwnerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String birthDate,
      String sex});
}

/// @nodoc
class __$$_NewCarOwnerModelCopyWithImpl<$Res>
    extends _$NewCarOwnerModelCopyWithImpl<$Res, _$_NewCarOwnerModel>
    implements _$$_NewCarOwnerModelCopyWith<$Res> {
  __$$_NewCarOwnerModelCopyWithImpl(
      _$_NewCarOwnerModel _value, $Res Function(_$_NewCarOwnerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? birthDate = null,
    Object? sex = null,
  }) {
    return _then(_$_NewCarOwnerModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewCarOwnerModel implements _NewCarOwnerModel {
  const _$_NewCarOwnerModel(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.birthDate,
      required this.sex});

  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String birthDate;
  @override
  final String sex;

  @override
  String toString() {
    return 'NewCarOwnerModel(id: $id, firstName: $firstName, lastName: $lastName, birthDate: $birthDate, sex: $sex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewCarOwnerModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.sex, sex) || other.sex == sex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, firstName, lastName, birthDate, sex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewCarOwnerModelCopyWith<_$_NewCarOwnerModel> get copyWith =>
      __$$_NewCarOwnerModelCopyWithImpl<_$_NewCarOwnerModel>(this, _$identity);
}

abstract class _NewCarOwnerModel implements NewCarOwnerModel {
  const factory _NewCarOwnerModel(
      {required final String id,
      required final String firstName,
      required final String lastName,
      required final String birthDate,
      required final String sex}) = _$_NewCarOwnerModel;

  @override
  String get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get birthDate;
  @override
  String get sex;
  @override
  @JsonKey(ignore: true)
  _$$_NewCarOwnerModelCopyWith<_$_NewCarOwnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
