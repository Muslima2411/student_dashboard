import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'edu_center_button.dart';

class HeaderSection extends StatelessWidget {
  final DateTime selectedDate;
  final String eduCenter;
  final VoidCallback onEduCenterTap;

  const HeaderSection({
    super.key,
    required this.selectedDate,
    required this.eduCenter,
    required this.onEduCenterTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(28, 32, 24, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DateDisplay(selectedDate: selectedDate),
          EduCenterButton(eduCenter: eduCenter, onTap: onEduCenterTap),
        ],
      ),
    );
  }
}

class DateDisplay extends StatelessWidget {
  final DateTime selectedDate;

  const DateDisplay({super.key, required this.selectedDate});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          DateFormat('dd').format(selectedDate),
          style: const TextStyle(
            fontSize: 44,
            fontWeight: FontWeight.w500,
            color: Color(0xFF1A202C),
            height: 0.9,
          ),
        ),
        SizedBox(width: 7.w),
        Text(
          '${DateFormat('EEE').format(selectedDate)}\n${DateFormat('MMM yyyy').format(selectedDate)}',
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFFA0AEC0),
            height: 1.2,
          ),
        ),
      ],
    );
  }
}
