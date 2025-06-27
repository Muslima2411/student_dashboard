import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String eduCenter,
    required DateTime selectedDate,
    required Map<DateTime, List<Map<String, String>>> events,
  }) = _HomeState;
}
