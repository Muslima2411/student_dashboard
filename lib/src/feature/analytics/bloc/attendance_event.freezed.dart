// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AttendanceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAttendance,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAttendance,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAttendance,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAttendance value) loadAttendance,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAttendance value)? loadAttendance,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAttendance value)? loadAttendance,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceEventCopyWith<$Res> {
  factory $AttendanceEventCopyWith(
    AttendanceEvent value,
    $Res Function(AttendanceEvent) then,
  ) = _$AttendanceEventCopyWithImpl<$Res, AttendanceEvent>;
}

/// @nodoc
class _$AttendanceEventCopyWithImpl<$Res, $Val extends AttendanceEvent>
    implements $AttendanceEventCopyWith<$Res> {
  _$AttendanceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadAttendanceImplCopyWith<$Res> {
  factory _$$LoadAttendanceImplCopyWith(
    _$LoadAttendanceImpl value,
    $Res Function(_$LoadAttendanceImpl) then,
  ) = __$$LoadAttendanceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadAttendanceImplCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res, _$LoadAttendanceImpl>
    implements _$$LoadAttendanceImplCopyWith<$Res> {
  __$$LoadAttendanceImplCopyWithImpl(
    _$LoadAttendanceImpl _value,
    $Res Function(_$LoadAttendanceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadAttendanceImpl implements LoadAttendance {
  const _$LoadAttendanceImpl();

  @override
  String toString() {
    return 'AttendanceEvent.loadAttendance()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadAttendanceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAttendance,
  }) {
    return loadAttendance();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadAttendance,
  }) {
    return loadAttendance?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAttendance,
    required TResult orElse(),
  }) {
    if (loadAttendance != null) {
      return loadAttendance();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAttendance value) loadAttendance,
  }) {
    return loadAttendance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAttendance value)? loadAttendance,
  }) {
    return loadAttendance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAttendance value)? loadAttendance,
    required TResult orElse(),
  }) {
    if (loadAttendance != null) {
      return loadAttendance(this);
    }
    return orElse();
  }
}

abstract class LoadAttendance implements AttendanceEvent {
  const factory LoadAttendance() = _$LoadAttendanceImpl;
}
