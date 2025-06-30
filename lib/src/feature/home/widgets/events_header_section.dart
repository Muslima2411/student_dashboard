import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_dashboard_app/src/common/utils/extensions/context_extensions.dart';

class EventsHeaderSection extends StatelessWidget {
  const EventsHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textColor = context.colorScheme.outline;

    return Row(
      children: [
        Text(
          context.localized.time,
          style: TextStyle(
            fontSize: 14.sp,
            color: textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(width: 34.w),
        Text(
          context.localized.course,
          style: TextStyle(
            fontSize: 14.sp,
            color: textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
