import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'bloc/attendance_bloc.dart';
import 'bloc/attendance_event.dart';
import 'bloc/attendance_state.dart';

@RoutePage()
class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  _AnalyticsPageState createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  @override
  void initState() {
    super.initState();
    context.read<AttendanceBloc>().add(const LoadAttendance());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFDDE6F2),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Attendance',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            Expanded(
              child: BlocBuilder<AttendanceBloc, AttendanceState>(
                builder: (context, state) {
                  return ListView(
                    padding: const EdgeInsets.all(16.0),
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'IELTS course',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            height: 100,
                            child:
                                state.isAnimating
                                    ? SfCircularChart(
                                      series: <
                                        CircularSeries<ChartData, String>
                                      >[
                                        DoughnutSeries<ChartData, String>(
                                          dataSource: state.chartData,
                                          xValueMapper:
                                              (ChartData data, _) =>
                                                  data.course,
                                          yValueMapper:
                                              (ChartData data, _) =>
                                                  data.percent,
                                          pointColorMapper:
                                              (ChartData data, _) => data.color,
                                          dataLabelMapper:
                                              (ChartData data, _) =>
                                                  '${data.attendance}/${data.total} - ${data.percent}%',
                                          dataLabelSettings:
                                              const DataLabelSettings(
                                                isVisible: true,
                                              ),
                                          animationDuration: 1000,
                                        ),
                                      ],
                                    )
                                    : Container(),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Grammar',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            height: 100,
                            child:
                                state.isAnimating
                                    ? SfCircularChart(
                                      series: <
                                        CircularSeries<ChartData, String>
                                      >[
                                        DoughnutSeries<ChartData, String>(
                                          dataSource: state.chartData,
                                          xValueMapper:
                                              (ChartData data, _) =>
                                                  data.course,
                                          yValueMapper:
                                              (ChartData data, _) =>
                                                  data.percent,
                                          pointColorMapper:
                                              (ChartData data, _) => data.color,
                                          dataLabelMapper:
                                              (ChartData data, _) =>
                                                  '${data.attendance}/${data.total} - ${data.percent}%',
                                          dataLabelSettings:
                                              const DataLabelSettings(
                                                isVisible: true,
                                              ),
                                          animationDuration: 1000,
                                        ),
                                      ],
                                    )
                                    : Container(),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
