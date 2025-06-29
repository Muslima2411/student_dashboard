import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: const Color(0xFFE6F0FF), // Light blue fill
          border: Border.all(
            color: const Color(0xFF4299E1), // Border blue
            width: 2.w,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Text(
          eduCenter,
          style: const TextStyle(
            color: Color(0xFF4299E1), // Text color matching border
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
