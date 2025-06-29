import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_dashboard_app/src/common/utils/extensions/context_extensions.dart';

class EventsHeaderSection extends StatelessWidget {
  const EventsHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          context.localized.time,
          style: TextStyle(fontSize: 14.sp, color: const Color(0xFF718096)),
        ),
        SizedBox(width: 34.w),
        Text(
          context.localized.course,
          style: TextStyle(fontSize: 14.sp, color: const Color(0xFF718096)),
        ),
        // Optional: add sort/filter icon later
      ],
    );
  }
}
