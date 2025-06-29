import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class WeekCalendarSection extends StatefulWidget {
  final DateTime selectedDate;
  final Function(DateTime) onDateSelected;

  const WeekCalendarSection({
    super.key,
    required this.selectedDate,
    required this.onDateSelected,
  });

  @override
  State<WeekCalendarSection> createState() => _WeekCalendarSectionState();
}

class _WeekCalendarSectionState extends State<WeekCalendarSection> {
  late DateTime _focusedDay;
  late DateTime _selectedDay;

  @override
  void initState() {
    super.initState();
    _focusedDay = widget.selectedDate;
    _selectedDay = widget.selectedDate;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12.h,
      children: [
        TableCalendar(
          firstDay: DateTime.utc(2020),
          lastDay: DateTime.utc(2100),
          focusedDay: _focusedDay,
          currentDay: _selectedDay,
          calendarFormat: CalendarFormat.week,
          startingDayOfWeek: StartingDayOfWeek.sunday,
          daysOfWeekVisible: true,
          headerVisible: false,
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
            widget.onDateSelected(selectedDay);
          },
          selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
          calendarStyle: const CalendarStyle(
            isTodayHighlighted: false,
            outsideDaysVisible: false,
            cellMargin: EdgeInsets.zero,
          ),
          daysOfWeekHeight: 0, // Hide default weekday labels
          calendarBuilders: CalendarBuilders(
            defaultBuilder: (context, day, focusedDay) {
              return _buildDayItem(day, isSelected: false);
            },
            selectedBuilder: (context, day, focusedDay) {
              return _buildDayItem(day, isSelected: true);
            },
          ),
        ),
        const Divider(height: 1, thickness: 1, color: Color(0xFFE2E8F0)),
      ],
    );
  }

  Widget _buildDayItem(DateTime day, {required bool isSelected}) {
    final String weekdayLetter =
        day.weekday == DateTime.sunday
            ? 'S'
            : day.weekday == DateTime.monday
            ? 'M'
            : day.weekday == DateTime.tuesday
            ? 'T'
            : day.weekday == DateTime.wednesday
            ? 'W'
            : day.weekday == DateTime.thursday
            ? 'T'
            : day.weekday == DateTime.friday
            ? 'F'
            : 'S';

    return Center(
      child: Container(
        // padding: EdgeInsets.symmetric(vertical: 8.h),
        width: 44,
        height: 60,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFA3C7F7) : Colors.transparent,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weekdayLetter,
              style: TextStyle(
                fontSize: 14.sp,
                color: isSelected ? Colors.white : const Color(0xFFA0AEC0),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '${day.day}',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: isSelected ? Colors.white : const Color(0xFF1A202C),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
