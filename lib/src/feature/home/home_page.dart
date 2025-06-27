import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
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
  final List<String> eduCenters = ['Everest', 'Himalaya', 'Alps'];

  @override
  void initState() {
    super.initState();
    // No initial event needed as state is initialized in HomeBloc constructor
  }

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
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${DateFormat('dd').format(selectedDate)} ${DateFormat('EEE yyyy').format(selectedDate)}',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => _showEduCenterDialog(context),
                      child: Text(state.eduCenter),
                    ),
                  ],
                ),
              ),
              TableCalendar(
                firstDay: DateTime.utc(2020, 1, 20),
                lastDay: DateTime.utc(2020, 1, 27),
                focusedDay: selectedDate,
                calendarFormat: CalendarFormat.week,
                selectedDayPredicate: (day) => isSameDay(selectedDate, day),
                onDaySelected: (selectedDay, focusedDay) {
                  context.read<HomeBloc>().add(UpdateSelectedDate(selectedDay));
                },
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: events.length,
                  itemBuilder: (context, index) {
                    final event = events[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0,
                      ),
                      child: ListTile(
                        title: Text(event['course']!),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('🕒 ${event['time']}'),
                            Text('📍 ${event['room']}'),
                            Text('👤 ${event['instructor']}'),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showEduCenterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Select Educational Center'),
            content: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: eduCenters.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(eduCenters[index]),
                      onTap: () {
                        context.read<HomeBloc>().add(
                          ChangeEduCenter(eduCenters[index]),
                        );
                        Navigator.pop(context);
                      },
                    );
                  },
                );
              },
            ),
          ),
    );
  }
}
