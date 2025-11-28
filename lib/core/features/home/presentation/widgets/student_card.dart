import 'package:amrita_vidhyalayam_teacher/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StudentCard extends StatelessWidget {
  final String name;
  final String id;

  /// This MUST be final status: (localStatus > apiStatus > default)
  final String attendanceStatus;

  final String imageUrl;

  /// Derived states
  final bool isPresent;
  final bool isAbsent;

  /// Checkbox
  final bool isChecked;

  /// Mode
  final bool isIndividual;

  /// Callbacks
  final VoidCallback? onPresent;
  final VoidCallback? onAbsent;
  final ValueChanged<bool?>? onCheckboxChanged;

  const StudentCard({
    super.key,
    required this.name,
    required this.id,
    required this.attendanceStatus,
    required this.imageUrl,
    required this.onPresent,
    required this.onAbsent,
    required this.onCheckboxChanged,
    required this.isPresent,
    required this.isAbsent,
    required this.isChecked,
    required this.isIndividual,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final showFinalStatus = attendanceStatus.isNotEmpty;
    final showButtons = attendanceStatus.isEmpty && isIndividual;
    final showCheckbox = attendanceStatus.isEmpty && !isIndividual;

    return Container(
      margin: EdgeInsets.only(bottom: 14.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: Colors.grey.shade300),
        color: Colors.white,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24.r,
            backgroundColor: Colors.grey.shade200,
            child: CircleAvatar(
              radius: 22.r,
              backgroundImage: AssetImage("assets/images/student.gif"),
            ),
          ),

          SizedBox(width: 12.w),

          /// Name + ID
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  id,
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ),
          ),

          /// ---------------------------------------------------------
          /// Buttons for Present / Absent when attendance is new
          /// ---------------------------------------------------------
          Visibility(
            visible: showButtons,
            child: Row(
              children: [
                GestureDetector(
                  onTap: onPresent,
                  child: CircleAvatar(
                    radius: 20.r,
                    backgroundColor:
                        isPresent ? Colors.green.withOpacity(0.15) : Colors.grey.shade200,
                    child: Icon(
                      Icons.check_circle,
                      color: isPresent ? Colors.green : Colors.grey,
                    ),
                  ),
                ),

                SizedBox(width: 10.w),

                GestureDetector(
                  onTap: onAbsent,
                  child: CircleAvatar(
                    radius: 20.r,
                    backgroundColor:
                        isAbsent ? Colors.red.withOpacity(0.15) : Colors.grey.shade200,
                    child: Icon(
                      Icons.cancel,
                      color: isAbsent ? Colors.red : Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// ---------------------------------------------------------
          /// Checkbox for bulk selection when attendance is new
          /// ---------------------------------------------------------
          
          Visibility(
            visible: showCheckbox,
            child: Checkbox(
              value: isChecked,
              onChanged:onCheckboxChanged,
              fillColor: WidgetStateProperty.resolveWith((states) {
                return Colors.white;
              }),
              side: WidgetStateBorderSide.resolveWith((states) {
                return BorderSide(color: theme.primaryColor, width: 1);
              }),
              checkColor: theme.primaryColor,
              visualDensity: VisualDensity.comfortable,
            
              materialTapTargetSize: MaterialTapTargetSize.padded,
            ),
          ),
          
          

          /// ---------------------------------------------------------
          /// Final status (P / A) when already marked or after local change
          /// ---------------------------------------------------------
          Visibility(
            visible: showFinalStatus,
            child: CircleAvatar(
              radius: 18.r,
              backgroundColor:
                  isPresent ? AppColors.primary : Colors.red.withOpacity(0.15),
              child: CircleAvatar(
                radius: 16.r,
                backgroundColor: isPresent ? AppColors.primary : Colors.red,
                child: Text(
                  isPresent ? "P" : "A",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
