import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

part 'attendance_state.freezed.dart';

@freezed
class AttendanceState with _$AttendanceState {
  const factory AttendanceState({
    @Default([]) List<ChartData> chartData,
    @Default(false) bool isAnimating,
  }) = _AttendanceState;
}

class ChartData {
  final String course;
  final double attendance;
  final double total;
  final int percent;
  final Color color;

  ChartData({
    required this.course,
    required this.attendance,
    required this.total,
    required this.percent,
    required this.color,
  });
}
