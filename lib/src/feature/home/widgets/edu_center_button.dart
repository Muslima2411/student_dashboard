import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_dashboard_app/src/common/utils/extensions/context_extensions.dart';

class EduCenterButton extends StatelessWidget {
  final String eduCenter;
  final VoidCallback onTap;

  const EduCenterButton({
    super.key,
    required this.eduCenter,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final borderColor = context.colorScheme.primary;
    final backgroundColor = context.colorScheme.surfaceVariant;
    final textColor = context.colorScheme.primary;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor, width: 2.w),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Text(
          eduCenter,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
