import 'package:amrita_vidhyalayam_teacher/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class StudentCard extends StatelessWidget {
  final String name;
  final String id;
  final String attendanceStatus;
  final String imageUrl;
  final bool isPresent;
  final bool isAbsent;
  final bool isChecked;
  final bool isIndividual;
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: Colors.grey.shade300),
        color: Colors.white,
        
      ),
      
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(12.w),
            child: Row(

              children: [
                
                CircleAvatar(
                  radius: 24.r,
                  // backgroundColor:attendanceStatus=="Present"?const Color(0xFF347936):attendanceStatus=="Absent"?Colors.red: Colors.grey.shade200,
                  child: CircleAvatar(
                    radius: 22.r,
                    backgroundImage: AssetImage("assets/images/student.gif"),
                  ),
                ),
            
                SizedBox(width: 12.w),
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
              ],
            ),
          ),

          Visibility(
            visible: showFinalStatus,
            child: Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 3.h,
                  ),
                  decoration: BoxDecoration(
                    gradient:attendanceStatus=="Present" ? LinearGradient(
                                  colors: [Color(0xff4CAF50), Color(0xff204921)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ):attendanceStatus=="Absent"?LinearGradient(
                                  colors: [Color(0xffE53935), Color(0xff7F201D)],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ):LinearGradient(
                                  colors: [const Color.fromARGB(255, 190, 190, 190), const Color.fromARGB(255, 202, 202, 202)],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                    
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16.r),
                      bottomLeft: Radius.circular(12.r),
                    ),
                  ),
                  child: Text(
                   attendanceStatus,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ),

          Visibility(
            visible: showFinalStatus,child:Positioned(
              bottom: 10,
              right: 10,
              child: attendanceStatus=="Present" ?   Icon(LucideIcons.badgeCheck500,color: Colors.green,size: 20.sp,):Icon(LucideIcons.badgeX,color: Colors.red,size: 20.sp,))),
               
                 
        ],
      ),
    );
  }
}
