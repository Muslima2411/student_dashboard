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
    final colorScheme = Theme.of(context).colorScheme;
    final textColor = colorScheme.onBackground;

    return Scaffold(
      backgroundColor: colorScheme.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 32, 24, 20),
              child: Text(
                context.localized.attendance,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: textColor,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: colorScheme.onPrimary,
                  borderRadius: const BorderRadius.only(
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
                          textColor: textColor,
                        ),
                        const SizedBox(height: 16),
                        _buildCourseSection(
                          context: context,
                          courseKey: 'grammarCourse',
                          textColor: textColor,
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
    required Color textColor,
  }) {
    const courseName = "IELTS";

    final colorScheme = Theme.of(context).colorScheme;

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
            decoration: BoxDecoration(
              border: Border(left: BorderSide(color: textColor, width: 2)),
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
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.circle_outlined, size: 12, color: textColor),
                    const SizedBox(width: 4),
                    Text(
                      '(${courseData.attendance}/${courseData.total}) - ${courseData.percent}%',
                      style: TextStyle(fontSize: 14, color: textColor),
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
                              color: courseData.color ?? textColor,
                            ),
                            ChartData(
                              course: courseName,
                              percent: 100 - courseData.percent,
                              attendance:
                                  courseData.total - courseData.attendance,
                              total: courseData.total,
                              color: colorScheme.outlineVariant,
                            ),
                          ],
                          xValueMapper: (ChartData data, _) => data.course,
                          yValueMapper: (ChartData data, _) => data.percent,
                          pointColorMapper: (ChartData data, _) => data.color,
                          dataLabelMapper:
                              (ChartData data, _) =>
                                  '${data.attendance}/${data.total} - ${data.percent}%',
                          // dataLabelSettings: const DataLabelSettings(
                          //   isVisible: true,
                          //   textStyle: TextStyle(
                          //     color: Colors.black,
                          //     fontSize: 12,
                          //   ),
                          // ),
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
