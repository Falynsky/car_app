// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarListState {
  List<CarModel> get cars => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarListStateCopyWith<CarListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarListStateCopyWith<$Res> {
  factory $CarListStateCopyWith(
          CarListState value, $Res Function(CarListState) then) =
      _$CarListStateCopyWithImpl<$Res, CarListState>;
  @useResult
  $Res call({List<CarModel> cars, bool isLoading});
}

/// @nodoc
class _$CarListStateCopyWithImpl<$Res, $Val extends CarListState>
    implements $CarListStateCopyWith<$Res> {
  _$CarListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      cars: null == cars
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<CarModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarListStateCopyWith<$Res>
    implements $CarListStateCopyWith<$Res> {
  factory _$$_CarListStateCopyWith(
          _$_CarListState value, $Res Function(_$_CarListState) then) =
      __$$_CarListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CarModel> cars, bool isLoading});
}

/// @nodoc
class __$$_CarListStateCopyWithImpl<$Res>
    extends _$CarListStateCopyWithImpl<$Res, _$_CarListState>
    implements _$$_CarListStateCopyWith<$Res> {
  __$$_CarListStateCopyWithImpl(
      _$_CarListState _value, $Res Function(_$_CarListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
    Object? isLoading = null,
  }) {
    return _then(_$_CarListState(
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<CarModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CarListState implements _CarListState {
  const _$_CarListState(
      {required final List<CarModel> cars, required this.isLoading})
      : _cars = cars;

  final List<CarModel> _cars;
  @override
  List<CarModel> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'CarListState(cars: $cars, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarListState &&
            const DeepCollectionEquality().equals(other._cars, _cars) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cars), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarListStateCopyWith<_$_CarListState> get copyWith =>
      __$$_CarListStateCopyWithImpl<_$_CarListState>(this, _$identity);
}

abstract class _CarListState implements CarListState {
  const factory _CarListState(
      {required final List<CarModel> cars,
      required final bool isLoading}) = _$_CarListState;

  @override
  List<CarModel> get cars;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_CarListStateCopyWith<_$_CarListState> get copyWith =>
      throw _privateConstructorUsedError;
}
