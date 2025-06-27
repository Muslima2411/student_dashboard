// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeState {
  String get eduCenter => throw _privateConstructorUsedError;
  DateTime get selectedDate => throw _privateConstructorUsedError;
  Map<DateTime, List<Map<String, String>>> get events =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({
    String eduCenter,
    DateTime selectedDate,
    Map<DateTime, List<Map<String, String>>> events,
  });
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eduCenter = null,
    Object? selectedDate = null,
    Object? events = null,
  }) {
    return _then(
      _value.copyWith(
            eduCenter:
                null == eduCenter
                    ? _value.eduCenter
                    : eduCenter // ignore: cast_nullable_to_non_nullable
                        as String,
            selectedDate:
                null == selectedDate
                    ? _value.selectedDate
                    : selectedDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            events:
                null == events
                    ? _value.events
                    : events // ignore: cast_nullable_to_non_nullable
                        as Map<DateTime, List<Map<String, String>>>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
    _$HomeStateImpl value,
    $Res Function(_$HomeStateImpl) then,
  ) = __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String eduCenter,
    DateTime selectedDate,
    Map<DateTime, List<Map<String, String>>> events,
  });
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
    _$HomeStateImpl _value,
    $Res Function(_$HomeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eduCenter = null,
    Object? selectedDate = null,
    Object? events = null,
  }) {
    return _then(
      _$HomeStateImpl(
        eduCenter:
            null == eduCenter
                ? _value.eduCenter
                : eduCenter // ignore: cast_nullable_to_non_nullable
                    as String,
        selectedDate:
            null == selectedDate
                ? _value.selectedDate
                : selectedDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        events:
            null == events
                ? _value._events
                : events // ignore: cast_nullable_to_non_nullable
                    as Map<DateTime, List<Map<String, String>>>,
      ),
    );
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl({
    required this.eduCenter,
    required this.selectedDate,
    required final Map<DateTime, List<Map<String, String>>> events,
  }) : _events = events;

  @override
  final String eduCenter;
  @override
  final DateTime selectedDate;
  final Map<DateTime, List<Map<String, String>>> _events;
  @override
  Map<DateTime, List<Map<String, String>>> get events {
    if (_events is EqualUnmodifiableMapView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_events);
  }

  @override
  String toString() {
    return 'HomeState(eduCenter: $eduCenter, selectedDate: $selectedDate, events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.eduCenter, eduCenter) ||
                other.eduCenter == eduCenter) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    eduCenter,
    selectedDate,
    const DeepCollectionEquality().hash(_events),
  );

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({
    required final String eduCenter,
    required final DateTime selectedDate,
    required final Map<DateTime, List<Map<String, String>>> events,
  }) = _$HomeStateImpl;

  @override
  String get eduCenter;
  @override
  DateTime get selectedDate;
  @override
  Map<DateTime, List<Map<String, String>>> get events;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
