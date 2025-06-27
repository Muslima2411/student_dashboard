// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String center) changeEduCenter,
    required TResult Function(DateTime date) updateSelectedDate,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String center)? changeEduCenter,
    TResult? Function(DateTime date)? updateSelectedDate,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String center)? changeEduCenter,
    TResult Function(DateTime date)? updateSelectedDate,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeEduCenter value) changeEduCenter,
    required TResult Function(UpdateSelectedDate value) updateSelectedDate,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeEduCenter value)? changeEduCenter,
    TResult? Function(UpdateSelectedDate value)? updateSelectedDate,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeEduCenter value)? changeEduCenter,
    TResult Function(UpdateSelectedDate value)? updateSelectedDate,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeEduCenterImplCopyWith<$Res> {
  factory _$$ChangeEduCenterImplCopyWith(
    _$ChangeEduCenterImpl value,
    $Res Function(_$ChangeEduCenterImpl) then,
  ) = __$$ChangeEduCenterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String center});
}

/// @nodoc
class __$$ChangeEduCenterImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ChangeEduCenterImpl>
    implements _$$ChangeEduCenterImplCopyWith<$Res> {
  __$$ChangeEduCenterImplCopyWithImpl(
    _$ChangeEduCenterImpl _value,
    $Res Function(_$ChangeEduCenterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? center = null}) {
    return _then(
      _$ChangeEduCenterImpl(
        null == center
            ? _value.center
            : center // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$ChangeEduCenterImpl implements ChangeEduCenter {
  const _$ChangeEduCenterImpl(this.center);

  @override
  final String center;

  @override
  String toString() {
    return 'HomeEvent.changeEduCenter(center: $center)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeEduCenterImpl &&
            (identical(other.center, center) || other.center == center));
  }

  @override
  int get hashCode => Object.hash(runtimeType, center);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeEduCenterImplCopyWith<_$ChangeEduCenterImpl> get copyWith =>
      __$$ChangeEduCenterImplCopyWithImpl<_$ChangeEduCenterImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String center) changeEduCenter,
    required TResult Function(DateTime date) updateSelectedDate,
  }) {
    return changeEduCenter(center);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String center)? changeEduCenter,
    TResult? Function(DateTime date)? updateSelectedDate,
  }) {
    return changeEduCenter?.call(center);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String center)? changeEduCenter,
    TResult Function(DateTime date)? updateSelectedDate,
    required TResult orElse(),
  }) {
    if (changeEduCenter != null) {
      return changeEduCenter(center);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeEduCenter value) changeEduCenter,
    required TResult Function(UpdateSelectedDate value) updateSelectedDate,
  }) {
    return changeEduCenter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeEduCenter value)? changeEduCenter,
    TResult? Function(UpdateSelectedDate value)? updateSelectedDate,
  }) {
    return changeEduCenter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeEduCenter value)? changeEduCenter,
    TResult Function(UpdateSelectedDate value)? updateSelectedDate,
    required TResult orElse(),
  }) {
    if (changeEduCenter != null) {
      return changeEduCenter(this);
    }
    return orElse();
  }
}

abstract class ChangeEduCenter implements HomeEvent {
  const factory ChangeEduCenter(final String center) = _$ChangeEduCenterImpl;

  String get center;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeEduCenterImplCopyWith<_$ChangeEduCenterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSelectedDateImplCopyWith<$Res> {
  factory _$$UpdateSelectedDateImplCopyWith(
    _$UpdateSelectedDateImpl value,
    $Res Function(_$UpdateSelectedDateImpl) then,
  ) = __$$UpdateSelectedDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$UpdateSelectedDateImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateSelectedDateImpl>
    implements _$$UpdateSelectedDateImplCopyWith<$Res> {
  __$$UpdateSelectedDateImplCopyWithImpl(
    _$UpdateSelectedDateImpl _value,
    $Res Function(_$UpdateSelectedDateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null}) {
    return _then(
      _$UpdateSelectedDateImpl(
        null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$UpdateSelectedDateImpl implements UpdateSelectedDate {
  const _$UpdateSelectedDateImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'HomeEvent.updateSelectedDate(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedDateImplCopyWith<_$UpdateSelectedDateImpl> get copyWith =>
      __$$UpdateSelectedDateImplCopyWithImpl<_$UpdateSelectedDateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String center) changeEduCenter,
    required TResult Function(DateTime date) updateSelectedDate,
  }) {
    return updateSelectedDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String center)? changeEduCenter,
    TResult? Function(DateTime date)? updateSelectedDate,
  }) {
    return updateSelectedDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String center)? changeEduCenter,
    TResult Function(DateTime date)? updateSelectedDate,
    required TResult orElse(),
  }) {
    if (updateSelectedDate != null) {
      return updateSelectedDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeEduCenter value) changeEduCenter,
    required TResult Function(UpdateSelectedDate value) updateSelectedDate,
  }) {
    return updateSelectedDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeEduCenter value)? changeEduCenter,
    TResult? Function(UpdateSelectedDate value)? updateSelectedDate,
  }) {
    return updateSelectedDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeEduCenter value)? changeEduCenter,
    TResult Function(UpdateSelectedDate value)? updateSelectedDate,
    required TResult orElse(),
  }) {
    if (updateSelectedDate != null) {
      return updateSelectedDate(this);
    }
    return orElse();
  }
}

abstract class UpdateSelectedDate implements HomeEvent {
  const factory UpdateSelectedDate(final DateTime date) =
      _$UpdateSelectedDateImpl;

  DateTime get date;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSelectedDateImplCopyWith<_$UpdateSelectedDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
