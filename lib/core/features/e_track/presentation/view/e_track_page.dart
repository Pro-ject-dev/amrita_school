import 'package:amrita_vidhyalayam_teacher/core/features/e_track/widgets/etrack_status_card.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:lucide_icons_flutter/lucide_icons.dart';
import '../viewmodel/e_track_viewmodel.dart';

class ETrackPage extends ConsumerWidget {
  const ETrackPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final state = ref.watch(eTrackProvider);

    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.sp),
            child: Icon(LucideIcons.ellipsisVertical, color: Colors.white),
          ),
        ],
        backgroundColor: AppColors.primary,

        title: const Text(
          "ETrack — Attendance",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              // height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(32),
                ),
                color: AppColors.primary,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16.w,
                  top: 30,
                  right: 16,
                  bottom: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: EtrackStatusCard(
                            title: "Present",
                            count: "20",
                            isPresent: true,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: EtrackStatusCard(
                            title: "Absent",
                            count: "4",
                            isPresent: false,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    colorScheme: ColorScheme.light(
                      primary: AppColors.primary,
                      onPrimary: Colors.white,
                    ),
                  ),
                  child: Column(
                    children: [
                      _buildCalendar(),
                      const SizedBox(height: 16),
                      Divider(color: Colors.grey.withOpacity(0.3), height: 0.4),
                      const SizedBox(height: 16),
                      _buildLegend(),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),

            _buildHolidayList(),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildHolidayList() {
    // Dummy data for holidays
    final now = DateTime.now();
    final List<Map<String, dynamic>> holidays = [
      {
        "date": DateTime.utc(now.year, now.month, 17),
        "name": "Ganesh Chaturthi",
      },
      // {
      //   "date": DateTime.utc(now.year, now.month, 25),
      //   "name": "Another Holiday",
      // },
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: holidays.length,
            itemBuilder: (context, index) {
              final holiday = holidays[index];
              final date = holiday["date"] as DateTime;
              return Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40.w,
                      height: 40.w,
                      decoration: BoxDecoration(
                        color: const Color(
                          0xFFFFEB3B,
                        ).withOpacity(0.2), // Light yellow
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "${date.day}",
                          style: TextStyle(
                            color: const Color(
                              0xFFF57F17,
                            ), // Darker yellow/orange
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: Text(
                        holiday["name"],
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF344054),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCalendar() {
    // Dummy data for demonstration status matching current month
    final now = DateTime.now();
    final Map<DateTime, String> events = {
      DateTime.utc(now.year, now.month, 9): 'absent',
      DateTime.utc(now.year, now.month, 12): 'half_day',
      DateTime.utc(now.year, now.month, 17): 'holiday',
      DateTime.utc(now.year, now.month, 19): 'selected',
      DateTime.utc(now.year, now.month, 16): 'present',
    };

    return TableCalendar(
      firstDay: DateTime.utc(2024, 1, 1),
      lastDay: DateTime.utc(2030, 12, 31),
      focusedDay: DateTime.now(),
      rowHeight: 42, // Reduced height for better spacing
      daysOfWeekHeight: 30,
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        headerMargin: EdgeInsets.only(
          bottom: 10,
        ), // Adjust gap between header and calendar
        titleTextStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0xFF344054), // Dark grey
        ),
        leftChevronIcon: Icon(Icons.chevron_left, color: Color(0xFF98A2B3)),
        rightChevronIcon: Icon(Icons.chevron_right, color: Color(0xFF98A2B3)),
      ),
      calendarStyle: const CalendarStyle(
        outsideDaysVisible: false,
        defaultTextStyle: TextStyle(
          color: Color(0xFF344054),
          fontWeight: FontWeight.w500,
        ),
        weekendTextStyle: TextStyle(
          color: Color(0xFF344054),
          fontWeight: FontWeight.w500,
        ),
      ),

      calendarBuilders: CalendarBuilders(
        prioritizedBuilder: (context, day, focusedDay) {
          final normalizedDay = DateTime.utc(day.year, day.month, day.day);
          final status = events[normalizedDay];

          if (status == 'absent') {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${day.day}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE53935), // Red
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            );
          } else if (status == 'holiday') {
            return Center(
              child: Container(
                width: 32,
                height: 32,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFEB3B), // Yellow/Gold
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '${day.day}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          } else if (status == 'half_day') {
            return Center(
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFEBEE), // Light red fill
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFFE53935), width: 1),
                ),
                child: Center(
                  child: Text(
                    '${day.day}',
                    style: const TextStyle(
                      color: Color(0xFFE53935),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          } else if (status == 'selected') {
            return Center(
              child: Container(
                width: 32,
                height: 32,
                decoration: const BoxDecoration(
                  color: AppColors.primary, // Navy
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '${day.day}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          } else if (status == 'present') {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${day.day}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(
                      color: Color(0xFF4CAF50), // Green
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            );
          }

          return null;
        },
      ),
    );
  }

  Widget _buildLegend() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _legendItem(color: const Color(0xFFE53935), label: "Absent"),
        _legendItem(color: const Color(0xFF4CAF50), label: "Present"),
        _legendItem(color: const Color(0xFFFFEB3B), label: "Holyday"),
        _legendItem(
          color: const Color(0xFFFFEBEE),
          borderColor: const Color(0xFFE53935),
          label: "Half day",
        ),
      ],
    );
  }

  Widget _legendItem({
    required Color color,
    Color? borderColor,
    required String label,
  }) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: borderColor != null ? Border.all(color: borderColor) : null,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
