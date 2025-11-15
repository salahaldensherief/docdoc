import 'package:docdoc/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderSelector extends StatefulWidget {
  final Function(String) onGenderSelected;
  final String? initialGender;

  const GenderSelector({
    super.key,
    required this.onGenderSelected,
    this.initialGender,
  });

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? _selectedGender;

  @override
  void initState() {
    super.initState();
    _selectedGender = widget.initialGender;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _genderItem(label: "Male", value: "0", icon: Icons.male),
        ),
        SizedBox(width: 22.w),
        Expanded(
          child: _genderItem(label: "Female", value: "1", icon: Icons.female),
        ),
      ],
    );
  }

  Widget _genderItem({
    required String label,
    required String value,
    required IconData icon,
  }) {
    final bool isSelected = _selectedGender == value;

    return GestureDetector(
      onTap: () {
        setState(() => _selectedGender = value);
        widget.onGenderSelected(value);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6).h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12).r,
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.grey.shade400,
            width: isSelected ? 1.w : .5.w,
          ),
          color: isSelected ? Colors.blue.shade50 : Colors.white,
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: isSelected
                  ? AppColors.primaryColor
                  : AppColors.lightGrayColor,
              size: 24.sp,
            ),
            SizedBox(height: 6.h),
            Text(
              label,
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: isSelected
                    ? AppColors.primaryColor
                    : AppColors.lightGrayColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
