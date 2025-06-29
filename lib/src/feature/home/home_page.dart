import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_dashboard_app/src/feature/home/widgets/calendar_section.dart';
import 'package:student_dashboard_app/src/feature/home/widgets/edu_center_dialog_section.dart';
import 'package:student_dashboard_app/src/feature/home/widgets/events_header_section.dart';
import 'package:student_dashboard_app/src/feature/home/widgets/header_section.dart';
import 'package:student_dashboard_app/src/feature/home/widgets/time_line_section.dart';
import 'bloc/home_bloc.dart';
import 'bloc/home_event.dart';
import 'bloc/home_state.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final selectedDate = state.selectedDate;
        final events =
            state.events[DateTime(
              selectedDate.year,
              selectedDate.month,
              selectedDate.day,
            )] ??
            [];

        return Scaffold(
          backgroundColor: const Color(0xFFFAF9F9),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderSection(
                  selectedDate: selectedDate,
                  eduCenter: state.eduCenter,
                  onEduCenterTap: () => _showEduCenterDialog(context),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        WeekCalendarSection(
                          selectedDate: selectedDate,
                          onDateSelected: (date) {
                            context.read<HomeBloc>().add(
                              UpdateSelectedDate(date),
                            );
                          },
                        ),
                        const SizedBox(height: 30),
                        const EventsHeaderSection(),
                        const SizedBox(height: 15),
                        Expanded(child: EventsListSection(events: events)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showEduCenterDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => const EduCenterDialog(),
    );
  }
}
