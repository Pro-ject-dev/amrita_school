import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StudentCard extends StatefulWidget {
  final String name;
  final String id;
  final String imageUrl;

  const StudentCard({
    super.key,
    required this.name,
    required this.id,
    required this.imageUrl,
  });

  @override
  State<StudentCard> createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
          Checkbox(
            value:true,
            onChanged: (_) {


            },
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

          CircleAvatar(
            radius: 22.r,
            backgroundImage: NetworkImage(widget.imageUrl),
          ),

          SizedBox(width: 12.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  widget.id,
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 13),
                ),
              ],
            ),
          ),

          GestureDetector(
            onTap: () {
             
            },
            child: CircleAvatar(
              radius: 20.r,
              backgroundColor: true
                  ? Colors.green.withOpacity(0.15)
                  : Colors.grey.shade200,
              child: Icon(
                Icons.check_circle,
                color:true ? Colors.green : Colors.grey,
              ),
            ),
          ),

          SizedBox(width: 10.w),

          GestureDetector(
            onTap: () {
             
            },
            child: CircleAvatar(
              radius: 20.r,
              backgroundColor: true
                  ? Colors.red.withOpacity(0.15)
                  : Colors.grey.shade200,
              child: Icon(
                Icons.cancel,
                color:true ? Colors.red : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}