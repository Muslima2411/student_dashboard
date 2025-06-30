import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:student_dashboard_app/src/common/utils/extensions/context_extensions.dart';

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
    final colorScheme = context.colorScheme;

    return Column(
      spacing: 10.h,
      children: [
        TableCalendar(
          firstDay: DateTime.utc(2020),
          lastDay: DateTime.utc(2100),
          focusedDay: _focusedDay,
          currentDay: _selectedDay,
          calendarFormat: CalendarFormat.week,
          startingDayOfWeek: StartingDayOfWeek.sunday,
          daysOfWeekVisible: false, // Hide default weekday labels
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
          daysOfWeekHeight: 0,
          calendarBuilders: CalendarBuilders(
            defaultBuilder: (context, day, focusedDay) {
              return _buildDayItem(context, day, isSelected: false);
            },
            selectedBuilder: (context, day, focusedDay) {
              return _buildDayItem(context, day, isSelected: true);
            },
          ),
        ),
        Divider(
          height: 1,
          thickness: 1,
          color: colorScheme.outline.withOpacity(0.4),
        ),
      ],
    );
  }

  Widget _buildDayItem(
    BuildContext context,
    DateTime day, {
    required bool isSelected,
  }) {
    final colorScheme = context.colorScheme;

    final weekdayShort =
        [
          context.localized.sundayShort,
          context.localized.mondayShort,
          context.localized.tuesdayShort,
          context.localized.wednesdayShort,
          context.localized.thursdayShort,
          context.localized.fridayShort,
          context.localized.saturdayShort,
        ][day.weekday % 7]; // sunday == 7 → 0 index

    return Center(
      child: Container(
        width: 44,
        height: 60,
        decoration: BoxDecoration(
          color: isSelected ? colorScheme.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weekdayShort,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: isSelected ? Colors.white : colorScheme.outline,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '${day.day}',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: isSelected ? Colors.white : colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
