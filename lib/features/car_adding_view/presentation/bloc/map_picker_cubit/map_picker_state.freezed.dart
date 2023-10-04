// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_picker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapPickerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(LatLng latLng, List<Marker> markers) success,
    required TResult Function(LatLng latLng) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(LatLng latLng, List<Marker> markers)? success,
    TResult? Function(LatLng latLng)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LatLng latLng, List<Marker> markers)? success,
    TResult Function(LatLng latLng)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapPickerStateCopyWith<$Res> {
  factory $MapPickerStateCopyWith(
          MapPickerState value, $Res Function(MapPickerState) then) =
      _$MapPickerStateCopyWithImpl<$Res, MapPickerState>;
}

/// @nodoc
class _$MapPickerStateCopyWithImpl<$Res, $Val extends MapPickerState>
    implements $MapPickerStateCopyWith<$Res> {
  _$MapPickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$MapPickerStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'MapPickerState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(LatLng latLng, List<Marker> markers) success,
    required TResult Function(LatLng latLng) submit,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(LatLng latLng, List<Marker> markers)? success,
    TResult? Function(LatLng latLng)? submit,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LatLng latLng, List<Marker> markers)? success,
    TResult Function(LatLng latLng)? submit,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Submit value) submit,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Submit value)? submit,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MapPickerState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng latLng, List<Marker> markers});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$MapPickerStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latLng = null,
    Object? markers = null,
  }) {
    return _then(_$_Success(
      latLng: null == latLng
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
      markers: null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as List<Marker>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required this.latLng, required final List<Marker> markers})
      : _markers = markers;

  @override
  final LatLng latLng;
  final List<Marker> _markers;
  @override
  List<Marker> get markers {
    if (_markers is EqualUnmodifiableListView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markers);
  }

  @override
  String toString() {
    return 'MapPickerState.success(latLng: $latLng, markers: $markers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.latLng, latLng) || other.latLng == latLng) &&
            const DeepCollectionEquality().equals(other._markers, _markers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, latLng, const DeepCollectionEquality().hash(_markers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(LatLng latLng, List<Marker> markers) success,
    required TResult Function(LatLng latLng) submit,
  }) {
    return success(latLng, markers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(LatLng latLng, List<Marker> markers)? success,
    TResult? Function(LatLng latLng)? submit,
  }) {
    return success?.call(latLng, markers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LatLng latLng, List<Marker> markers)? success,
    TResult Function(LatLng latLng)? submit,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(latLng, markers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Submit value) submit,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Submit value)? submit,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements MapPickerState {
  const factory _Success(
      {required final LatLng latLng,
      required final List<Marker> markers}) = _$_Success;

  LatLng get latLng;
  List<Marker> get markers;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitCopyWith<$Res> {
  factory _$$_SubmitCopyWith(_$_Submit value, $Res Function(_$_Submit) then) =
      __$$_SubmitCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng latLng});
}

/// @nodoc
class __$$_SubmitCopyWithImpl<$Res>
    extends _$MapPickerStateCopyWithImpl<$Res, _$_Submit>
    implements _$$_SubmitCopyWith<$Res> {
  __$$_SubmitCopyWithImpl(_$_Submit _value, $Res Function(_$_Submit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latLng = null,
  }) {
    return _then(_$_Submit(
      latLng: null == latLng
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_Submit implements _Submit {
  const _$_Submit({required this.latLng});

  @override
  final LatLng latLng;

  @override
  String toString() {
    return 'MapPickerState.submit(latLng: $latLng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Submit &&
            (identical(other.latLng, latLng) || other.latLng == latLng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latLng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubmitCopyWith<_$_Submit> get copyWith =>
      __$$_SubmitCopyWithImpl<_$_Submit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(LatLng latLng, List<Marker> markers) success,
    required TResult Function(LatLng latLng) submit,
  }) {
    return submit(latLng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(LatLng latLng, List<Marker> markers)? success,
    TResult? Function(LatLng latLng)? submit,
  }) {
    return submit?.call(latLng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LatLng latLng, List<Marker> markers)? success,
    TResult Function(LatLng latLng)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(latLng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements MapPickerState {
  const factory _Submit({required final LatLng latLng}) = _$_Submit;

  LatLng get latLng;
  @JsonKey(ignore: true)
  _$$_SubmitCopyWith<_$_Submit> get copyWith =>
      throw _privateConstructorUsedError;
}
