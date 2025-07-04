import 'package:flutter/material.dart';
import 'package:student_dashboard_app/src/common/utils/extensions/context_extensions.dart';
import 'emty_event_widget.dart';
import 'event_section.dart';

class EventsListSection extends StatelessWidget {
  final List<Map<String, String>> events;

  const EventsListSection({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
    if (events.isEmpty) return const EmptyEventsWidget();

    return ListView.builder(
      itemCount: events.length,
      itemBuilder: (context, index) {
        final event = events[index];
        final isFirst = index == 0;
        final isLast = index == events.length - 1;

        return EventTimelineItem(
          event: event,
          isFirst: isFirst,
          isLast: isLast,
          isHighlighted: isFirst,
        );
      },
    );
  }
}

class EventTimelineItem extends StatelessWidget {
  final Map<String, String> event;
  final bool isFirst;
  final bool isLast;
  final bool isHighlighted;

  const EventTimelineItem({
    super.key,
    required this.event,
    required this.isFirst,
    required this.isLast,
    required this.isHighlighted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EventTimeColumn(timeRange: event['time']!),
            const SizedBox(width: 10),
            TimelineIndicator(
              isFirst: isFirst,
              isLast: isLast,
              isHighlighted: isHighlighted,
            ),
            const SizedBox(width: 15),
            Expanded(
              child: EventCard(event: event, isHighlighted: isHighlighted),
            ),
          ],
        ),
      ),
    );
  }
}

class EventTimeColumn extends StatelessWidget {
  final String timeRange;

  const EventTimeColumn({super.key, required this.timeRange});

  @override
  Widget build(BuildContext context) {
    final times = timeRange.split('-');
    final scheme = context.colorScheme;

    return SizedBox(
      width: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            times[0],
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: scheme.onSurface,
            ),
          ),
          Text(times[1], style: TextStyle(fontSize: 12, color: scheme.outline)),
        ],
      ),
    );
  }
}

class TimelineIndicator extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isHighlighted;

  const TimelineIndicator({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isHighlighted,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    final inactiveColor = scheme.onSecondary;

    return Column(
      children: [
        if (!isFirst) Container(width: 2, height: 15, color: inactiveColor),
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: inactiveColor,
            shape: BoxShape.circle,
          ),
        ),
        if (!isLast) Expanded(child: Container(width: 2, color: inactiveColor)),
      ],
    );
  }
}
