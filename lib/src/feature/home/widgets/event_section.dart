import 'package:flutter/material.dart';

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
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isHighlighted ? const Color(0xFF539DF3) : Colors.white,
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
    return Text(
      title,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: isHighlighted ? Colors.white : const Color(0xFF2D3748),
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
    return Row(
      children: [
        Icon(
          Icons.location_on_outlined,
          size: 16,
          color: isHighlighted ? Colors.white70 : const Color(0xFF718096),
        ),
        const SizedBox(width: 4),
        Text(
          room,
          style: TextStyle(
            fontSize: 14,
            color: isHighlighted ? Colors.white70 : const Color(0xFF718096),
          ),
        ),
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
    return Row(
      children: [
        CircleAvatar(
          radius: 8,
          backgroundColor:
              isHighlighted ? Colors.white : const Color(0xFF539DF3),
          child: Icon(
            Icons.person,
            size: 10,
            color: isHighlighted ? const Color(0xFF3182CE) : Colors.white,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          instructor,
          style: TextStyle(
            fontSize: 14,
            color: isHighlighted ? Colors.white70 : const Color(0xFF718096),
          ),
        ),
      ],
    );
  }
}
