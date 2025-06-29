import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_dashboard_app/src/common/utils/extensions/context_extensions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'bloc/attendance_bloc.dart';
import 'bloc/attendance_event.dart';
import 'bloc/attendance_state.dart';

@RoutePage()
class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  AnalyticsPageState createState() => AnalyticsPageState();
}

class AnalyticsPageState extends State<AnalyticsPage> {
  @override
  void initState() {
    super.initState();
    context.read<AttendanceBloc>().add(const LoadAttendance());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF9F9),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 32, 24, 10),
              child: Text(
                context.localized.attendance,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: BlocBuilder<AttendanceBloc, AttendanceState>(
                  builder: (context, state) {
                    return ListView(
                      children: [
                        _buildCourseSection(
                          context: context,
                          courseKey: 'ieltsCourse',
                          state: state,
                        ),
                        const SizedBox(height: 16),
                        _buildCourseSection(
                          context: context,
                          courseKey: 'grammarCourse',
                          state: state,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseSection({
    required BuildContext context,
    required String courseKey,
    required AttendanceState state,
  }) {
    const courseName = "IELTS";

    final courseData = state.chartData.firstWhere(
      (data) => data.course == courseName,
      orElse:
          () => ChartData(
            course: courseName,
            percent: 0,
            attendance: 0,
            total: 0,
            color: Colors.grey,
          ),
    );

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 4,
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(color: Color(0xFF1E3A8A), width: 2),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  courseName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E3A8A),
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(
                      Icons.circle_outlined,
                      size: 12,
                      color: Color(0xFF1E3A8A),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '(${courseData.attendance}/${courseData.total}) - ${courseData.percent}%',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF1E3A8A),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child:
                state.isAnimating
                    ? SfCircularChart(
                      series: <CircularSeries<ChartData, String>>[
                        DoughnutSeries<ChartData, String>(
                          dataSource: [
                            ChartData(
                              course: courseName,
                              percent: courseData.percent,
                              attendance: courseData.attendance,
                              total: courseData.total,
                              color: courseData.color ?? Colors.green,
                            ),
                            ChartData(
                              course: courseName,
                              percent: 100 - courseData.percent,
                              attendance:
                                  courseData.total - courseData.attendance,
                              total: courseData.total,
                              color: Colors.grey,
                            ),
                          ],
                          xValueMapper: (ChartData data, _) => data.course,
                          yValueMapper: (ChartData data, _) => data.percent,
                          pointColorMapper: (ChartData data, _) => data.color,
                          dataLabelMapper:
                              (ChartData data, _) =>
                                  '${data.attendance}/${data.total} - ${data.percent}%',
                          dataLabelSettings: const DataLabelSettings(
                            isVisible: true,
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          animationDuration: 1000,
                        ),
                      ],
                    )
                    : Container(),
          ),
        ],
      ),
    );
  }
}
