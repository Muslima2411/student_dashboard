import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default('John Doe') String name,
    @Default('2105/2020/1234') String id,
    @Default('1234567890') String contactNo,
    @Default('abc123@gmail.com') String email,
    @Default('12, abc street, defgh, ijklm - 123456') String address,
    @Default([]) List<Map<String, dynamic>> ongoingCourses,
    @Default([]) List<String> eduCenters,
    @Default(false) bool isEditing,
  }) = _ProfileState;
}
