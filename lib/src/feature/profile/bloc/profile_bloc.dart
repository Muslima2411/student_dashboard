import 'package:flutter_bloc/flutter_bloc.dart';
import 'profile_event.dart';
import 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const ProfileState()) {
    on<LoadProfile>((event, emit) {
      final courses = [
        {'name': 'IELTS course', 'days': 'Monday, Tuesday, Wednesday'},
        {'name': 'IELTS course', 'days': 'Monday, Tuesday, Wednesday'},
      ];
      final centers = ['Everest', 'IELTS Zone', 'Educational Center'];
      emit(state.copyWith(ongoingCourses: courses, eduCenters: centers));
    });

    on<EditContactDetails>((event, emit) {
      emit(state.copyWith(isEditing: !state.isEditing));
    });
  }
}
