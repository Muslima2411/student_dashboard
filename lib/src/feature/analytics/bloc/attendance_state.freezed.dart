// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AttendanceState {
  List<ChartData> get chartData => throw _privateConstructorUsedError;
  bool get isAnimating => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceStateCopyWith<AttendanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStateCopyWith<$Res> {
  factory $AttendanceStateCopyWith(
    AttendanceState value,
    $Res Function(AttendanceState) then,
  ) = _$AttendanceStateCopyWithImpl<$Res, AttendanceState>;
  @useResult
  $Res call({List<ChartData> chartData, bool isAnimating});
}

/// @nodoc
class _$AttendanceStateCopyWithImpl<$Res, $Val extends AttendanceState>
    implements $AttendanceStateCopyWith<$Res> {
  _$AttendanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? chartData = null, Object? isAnimating = null}) {
    return _then(
      _value.copyWith(
            chartData:
                null == chartData
                    ? _value.chartData
                    : chartData // ignore: cast_nullable_to_non_nullable
                        as List<ChartData>,
            isAnimating:
                null == isAnimating
                    ? _value.isAnimating
                    : isAnimating // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttendanceStateImplCopyWith<$Res>
    implements $AttendanceStateCopyWith<$Res> {
  factory _$$AttendanceStateImplCopyWith(
    _$AttendanceStateImpl value,
    $Res Function(_$AttendanceStateImpl) then,
  ) = __$$AttendanceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChartData> chartData, bool isAnimating});
}

/// @nodoc
class __$$AttendanceStateImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res, _$AttendanceStateImpl>
    implements _$$AttendanceStateImplCopyWith<$Res> {
  __$$AttendanceStateImplCopyWithImpl(
    _$AttendanceStateImpl _value,
    $Res Function(_$AttendanceStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? chartData = null, Object? isAnimating = null}) {
    return _then(
      _$AttendanceStateImpl(
        chartData:
            null == chartData
                ? _value._chartData
                : chartData // ignore: cast_nullable_to_non_nullable
                    as List<ChartData>,
        isAnimating:
            null == isAnimating
                ? _value.isAnimating
                : isAnimating // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$AttendanceStateImpl implements _AttendanceState {
  const _$AttendanceStateImpl({
    final List<ChartData> chartData = const [],
    this.isAnimating = false,
  }) : _chartData = chartData;

  final List<ChartData> _chartData;
  @override
  @JsonKey()
  List<ChartData> get chartData {
    if (_chartData is EqualUnmodifiableListView) return _chartData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chartData);
  }

  @override
  @JsonKey()
  final bool isAnimating;

  @override
  String toString() {
    return 'AttendanceState(chartData: $chartData, isAnimating: $isAnimating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceStateImpl &&
            const DeepCollectionEquality().equals(
              other._chartData,
              _chartData,
            ) &&
            (identical(other.isAnimating, isAnimating) ||
                other.isAnimating == isAnimating));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_chartData),
    isAnimating,
  );

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceStateImplCopyWith<_$AttendanceStateImpl> get copyWith =>
      __$$AttendanceStateImplCopyWithImpl<_$AttendanceStateImpl>(
        this,
        _$identity,
      );
}

abstract class _AttendanceState implements AttendanceState {
  const factory _AttendanceState({
    final List<ChartData> chartData,
    final bool isAnimating,
  }) = _$AttendanceStateImpl;

  @override
  List<ChartData> get chartData;
  @override
  bool get isAnimating;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceStateImplCopyWith<_$AttendanceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
