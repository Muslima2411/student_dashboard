import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.changeEduCenter(String center) = ChangeEduCenter;
  const factory HomeEvent.updateSelectedDate(DateTime date) =
      UpdateSelectedDate;
}
