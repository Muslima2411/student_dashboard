import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
    : super(
        HomeState(
          eduCenter: 'Everest',
          selectedDate: DateTime(
            2025,
            6,
            27,
            12,
            3,
          ), // 12:03 PM +05, June 27, 2025
          events: {
            DateTime(2025, 6, 27): [
              {
                'time': '11:35-13:05',
                'course': 'IELTS course',
                'room': 'Room 6-205',
                'instructor': 'Brook Williamson',
              },
              {
                'time': '13:15-14:45',
                'course': 'Mock exam',
                'room': 'Room 2-188',
                'instructor': 'Julie Watson',
              },
              {
                'time': '15:15-16:45',
                'course': 'Mock exam',
                'room': 'Room 2-188',
                'instructor': 'Julie Watson',
              },
            ],
          },
        ),
      ) {
    on<ChangeEduCenter>((event, emit) {
      emit(state.copyWith(eduCenter: event.center));
    });

    on<UpdateSelectedDate>((event, emit) {
      emit(state.copyWith(selectedDate: event.date));
    });
  }
}
