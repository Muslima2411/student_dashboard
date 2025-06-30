import 'package:flutter/material.dart';
import 'package:student_dashboard_app/src/common/styles/app_colors.dart';

class EventCard extends StatelessWidget {
  final Map<String, String> event;
  final bool isHighlighted;

  const EventCard({
    super.key,
    required this.event,
    required this.isHighlighted,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isHighlighted ? colorScheme.primary : AppColors.secondary,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EventTitle(title: event['course']!, isHighlighted: isHighlighted),
          const SizedBox(height: 8),
          EventLocation(room: event['room']!, isHighlighted: isHighlighted),
          const SizedBox(height: 4),
          EventInstructor(
            instructor: event['instructor']!,
            isHighlighted: isHighlighted,
          ),
        ],
      ),
    );
  }
}

class EventTitle extends StatelessWidget {
  final String title;
  final bool isHighlighted;

  const EventTitle({
    super.key,
    required this.title,
    required this.isHighlighted,
  });

  @override
  Widget build(BuildContext context) {
    // final colorScheme = Theme.of(context).colorScheme;
    // final color = isHighlighted ? colorScheme.onPrimary : colorScheme.onSurface;
    const color = AppColors.black;

    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: color,
      ),
    );
  }
}

class EventLocation extends StatelessWidget {
  final String room;
  final bool isHighlighted;

  const EventLocation({
    super.key,
    required this.room,
    required this.isHighlighted,
  });

  @override
  Widget build(BuildContext context) {
    // final colorScheme = Theme.of(context).colorScheme;
    // final color =
    //     isHighlighted
    //         ? colorScheme.onPrimary.withOpacity(0.7)
    //         : colorScheme.onSurfaceVariant;

    const color = AppColors.black;

    return Row(
      children: [
        const Icon(Icons.location_on_outlined, size: 16, color: color),
        const SizedBox(width: 4),
        Text(room, style: const TextStyle(fontSize: 14, color: color)),
      ],
    );
  }
}

class EventInstructor extends StatelessWidget {
  final String instructor;
  final bool isHighlighted;

  const EventInstructor({
    super.key,
    required this.instructor,
    required this.isHighlighted,
  });

  @override
  Widget build(BuildContext context) {
    // final colorScheme = Theme.of(context).colorScheme;

    // final backgroundColor =
    //     isHighlighted ? colorScheme.onPrimary : colorScheme.primary;
    // final iconColor =
    //     isHighlighted ? colorScheme.primary : colorScheme.onPrimary;
    // final textColor =
    //     isHighlighted
    //         ? colorScheme.onPrimary.withOpacity(0.7)
    //         : colorScheme.onSurfaceVariant;

    const color = AppColors.black;

    return Row(
      children: [
        const CircleAvatar(
          radius: 8,
          backgroundColor: AppColors.white,
          child: Icon(Icons.person, size: 10, color: color),
        ),
        const SizedBox(width: 6),
        Text(instructor, style: const TextStyle(fontSize: 14, color: color)),
      ],
    );
  }
}
