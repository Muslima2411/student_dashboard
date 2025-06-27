import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'attendance_event.dart';
import 'attendance_state.dart';

class AttendanceBloc extends Bloc<AttendanceEvent, AttendanceState> {
  AttendanceBloc() : super(const AttendanceState()) {
    on<LoadAttendance>((event, emit) {
      if (state.chartData.isEmpty) {
        final data = [
          ChartData(
            course: 'IELTS course',
            attendance: 32,
            total: 45,
            percent: 71,
            color: Colors.green,
          ),
          ChartData(
            course: 'Grammar',
            attendance: 32,
            total: 45,
            percent: 71,
            color: Colors.purple,
          ),
        ];
        emit(state.copyWith(chartData: data, isAnimating: true));
      }
    });
  }
}
