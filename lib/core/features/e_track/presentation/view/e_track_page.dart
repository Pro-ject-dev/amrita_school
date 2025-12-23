import 'package:amrita_vidhyalayam_teacher/core/features/e_track/widgets/etrack_status_card.dart';
import 'package:amrita_vidhyalayam_teacher/core/features/main_scaffold/presentation/viewmodel/mainscaffold_viewmodel.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:intl/intl.dart';
import '../viewmodel/e_track_viewmodel.dart';
import '../../domain/entities/e_track_entity.dart';

class ETrackPage extends ConsumerStatefulWidget {
  const ETrackPage({super.key});

  @override
  ConsumerState<ETrackPage> createState() => _ETrackPageState();
}

class _ETrackPageState extends ConsumerState<ETrackPage> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
    WidgetsBinding.instance.addPostFrameCallback((_) {
       final isTeacher = ref.read(mainscaffoldProvider).isClassTeacher;
       final myIndex = isTeacher ? 2 : 1;
       if (ref.read(mainscaffoldProvider).currentIndex == myIndex) {
         final eTrackState = ref.read(eTrackProvider);
         if (eTrackState.data == null) {
            _fetchData();
         }
       }
    });
  }

  void _fetchData() {
    ref
        .read(eTrackProvider.notifier)
        .load(year: _focusedDay.year, month: _focusedDay.month);
  }

  @override
  Widget build(BuildContext context) {
    // Listen for tab changes
    ref.listen(mainscaffoldProvider, (previous, next) {
      final isTeacher = next.isClassTeacher;
      final myIndex = isTeacher ? 2 : 1;
      if (previous?.currentIndex != next.currentIndex && next.currentIndex == myIndex) {
         final eTrackState = ref.read(eTrackProvider);
         if (eTrackState.data == null) {
            _fetchData();
         }
      }
    });
    
    final state = ref.watch(eTrackProvider);
    final data = state.data;

    double presentCount = 0;
    double absentCount = 0;

    final Map<DateTime, String> events = {};
    final List<HolidayItemEntity> holidays = data?.holidayList ?? [];
    final List<LeaveItemEntity> leaves = data?.leaveList ?? [];

    if (data != null) {
      for (var item in data.attendanceList) {
        try {
          final date = DateTime.parse(item.attendanceDate);
          final key = DateTime.utc(date.year, date.month, date.day);
          final status = item.status.toLowerCase();

          if (status == 'absent' || status == 'on leave') {
            events[key] = 'absent';
            absentCount++;
          } else if (status == 'half day') {
            events[key] = 'half_day';
            absentCount += 0.5;
            presentCount += 0.5;
          } else if (status == 'present') {
            events[key] = 'present';
            presentCount++;
          }
        } catch (_) {}
      }

      for (var holiday in holidays) {
        try {
          final date = DateTime.parse(holiday.holidayDate);
          final key = DateTime.utc(date.year, date.month, date.day);
          events[key] = 'holiday';
        } catch (_) {}
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(24.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.w, 40.h, 16.w, 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          
                          decoration: BoxDecoration(color:Colors.white.withOpacity(0.1),borderRadius: BorderRadius.circular(10.sp) ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              LucideIcons.calendarClock,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "E-track",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            //  SizedBox(height: 6.h),
                    Text(
                      "Daily attendance, leave tracking for teachers",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 12.sp,
                      ),
                    ),
                          ],
                        ),
                      ],
                    ),
                   
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Expanded(
                          child: EtrackStatusCard(
                            title: "Present",
                            count: presentCount.toString(),
                            isPresent: true,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: EtrackStatusCard(
                            title: "Absent",
                            count: absentCount.toString(),
                            isPresent: false,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  Expanded(
                    child: _buildActionButton(
                      icon: LucideIcons.calendarDays,
                      label: "Holiday List",
                      color: const Color(0xFFF57F17),
                      onTap: () => _showHolidayListSheet(context, holidays),
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: _buildActionButton(
                      icon: LucideIcons.fileClock,
                      label: "Leave Details",
                      color: AppColors.primary,
                      onTap: () => _showLeaveListSheet(context, leaves),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10.r,
                      offset: Offset(0, 4.h),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    state.isLoading
                        ? Skeletonizer(
                            enabled: true,
                            child: _buildDummyCalendar(),
                          )
                        : _buildCalendar(events, state, holidays, leaves),
                    SizedBox(height: 16.h),
                    Divider(height: 0.4.h, color: Colors.grey.withOpacity(0.3)),
                    SizedBox(height: 12.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: _buildLegend(),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10.r,
              offset: Offset(0, 2.h),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: color, size: 20.sp),
            ),
            SizedBox(width: 12.w),
            Text(
              label,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF344054),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCalendar(
    Map<DateTime, String> events,
    state,
    List<HolidayItemEntity> holidays,
    List<LeaveItemEntity> leaves,
  ) {
    return TableCalendar(
       availableGestures: AvailableGestures.none,
      firstDay: DateTime.utc(2020, 1, 1),
      lastDay: DateTime.now(),
      focusedDay: _focusedDay,
      selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
      rowHeight: 36.h,
      daysOfWeekHeight: 25.h,
      onPageChanged: (day) {
        setState(() => _focusedDay = day);
        _fetchData();
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });
        _showDayDetailsSheet(context, selectedDay, events, holidays, leaves);
      },
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        titleTextStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF344054),
        ),
        leftChevronIcon: Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey500, width: 1),
            borderRadius: BorderRadius.circular(4.sp),
          ),
          child: Icon(
            Icons.chevron_left,
            size: 24.sp,
            color: const Color(0xFF98A2B3),
          ),
        ),
        rightChevronIcon: Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey500, width: 1),
            borderRadius: BorderRadius.circular(4.sp),
          ),
          child: Icon(
            Icons.chevron_right,
            size: 24.sp,
            color: const Color(0xFF98A2B3),
          ),
        ),
      ),
      calendarStyle: CalendarStyle(
        outsideDaysVisible: false,
        defaultTextStyle: TextStyle(fontSize: 14.sp),

        selectedDecoration: BoxDecoration(
          color: AppColors.primary,
          shape: BoxShape.circle,
        ),
        todayDecoration: BoxDecoration(
          color: AppColors.primary.withOpacity(0.5),
          shape: BoxShape.circle,
        ),
      ),
      calendarBuilders: CalendarBuilders(
        prioritizedBuilder: (context, day, focusedDay) {
          final key = DateTime.utc(day.year, day.month, day.day);
          final status = events[key];
          if (isSameDay(_selectedDay, day)) {
            return null;
          }
          Color? bg;
          Color? border;
          Color textColor = Colors.black;

          if (status == 'present') {
            bg = Colors.green.withOpacity(0.1);
            border = Colors.green;
            textColor = Colors.green;
          } else if (status == 'absent') {
            bg = Colors.red.withOpacity(0.1);
            border = const Color(0xFFE53935);
            textColor = const Color(0xFFE53935);
          } else if (status == 'half_day') {
            bg = Colors.yellow.withOpacity(0.3);
            border = const Color(0xffcca700);
          } else if (status == 'holiday') {
            bg = Colors.red;
            textColor = Colors.white;
          } else {
            return null;
          }

          return  Center(
            child: Container(
              width: 28.w,
              height: 28.w,
              decoration: BoxDecoration(
                color: bg,
                shape: BoxShape.circle,
                border: border != null
                    ? Border.all(color: border, width: 1.w)
                    : null,
              ),
              child: Center(
                child: Text(
                  '${day.day}',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildDummyCalendar() {
    return TableCalendar(
      firstDay: DateTime.utc(2020, 1, 1),
      lastDay: DateTime.now(),
      focusedDay: _focusedDay,
      rowHeight: 36.h,
      daysOfWeekHeight: 25.h,
      onPageChanged: (day) {},
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        titleTextStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF344054),
        ),
        leftChevronIcon: Icon(
          Icons.chevron_left,
          size: 24.sp,
          color: const Color(0xFF98A2B3),
        ),
        rightChevronIcon: Icon(
          Icons.chevron_right,
          size: 24.sp,
          color: const Color(0xFF98A2B3),
        ),
      ),
      calendarStyle: CalendarStyle(
        outsideDaysVisible: false,
        defaultTextStyle: TextStyle(fontSize: 14.sp),
        selectedDecoration: BoxDecoration(
          color: AppColors.primary,
          shape: BoxShape.circle,
        ),
        todayDecoration: BoxDecoration(
          color: AppColors.primary.withOpacity(0.5),
          shape: BoxShape.circle,
        ),
      ),
      calendarBuilders: CalendarBuilders(
      
        prioritizedBuilder: (context, day, focusedDay) {
          return Center(
            child: Container(
              width: 28.w,
              height: 28.w,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  '${day.day}',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _showDayDetailsSheet(
    BuildContext context,
    DateTime date,
    Map<DateTime, String> events,
    List<HolidayItemEntity> holidays,
    List<LeaveItemEntity> leaves,
  ) {
    final key = DateTime.utc(date.year, date.month, date.day);
    final status = events[key];
    String? description;
    String? leaveType;

    if (status == 'holiday') {
      final holiday = holidays.firstWhere(
        (h) {
          final hDate = DateTime.tryParse(h.holidayDate);
          return hDate != null && isSameDay(hDate, date);
        },
        orElse: () =>
            const HolidayItemEntity(holidayDate: '', description: 'Holiday'),
      );
      description = holiday.description;
    } else if (status == 'absent' || status == 'half_day') {
      final leave = leaves.firstWhere(
        (l) {
          final lDate = DateTime.tryParse(l.date);
          return lDate != null && isSameDay(lDate, date);
        },
        orElse: () => const LeaveItemEntity(
          date: '',
          leaveType: 'Absent/Leave',
          dayType: '',
        ),
      );
      leaveType = leave.leaveType;
      if (leave.date.isEmpty) {
        leaveType = (status == 'absent') ? 'Absent' : 'Half Day';
      }
    } else if (status == 'present') {
      description = "Present";
    } else {
      description = "No Entry";
    }

    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 40.w,
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(2.r),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                DateFormat('EEEE, MMM d, yyyy').format(date),
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              SizedBox(height: 16.h),

              if (status != null)
                Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: Colors.grey.withOpacity(0.2)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.w),
                        decoration: BoxDecoration(
                          color: (status == 'present')
                              ? Colors.green.withOpacity(0.1)
                              : (status == 'holiday')
                              ? Colors.red.withOpacity(0.1)
                              : Colors.orange.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          (status == 'present')
                              ? LucideIcons.circleCheck
                              : (status == 'holiday')
                              ? LucideIcons.treePalm300
                              : LucideIcons.circleAlert300,
                          color: (status == 'present')
                              ? Colors.green
                              : (status == 'holiday')
                              ? Colors.red
                              : Colors.orange,
                          size: 24.sp,
                        ),
                      ),
                      SizedBox(width: 16.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            status.toUpperCase(),
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF344054),
                            ),
                          ),
                          if (description != null &&
                              description.isNotEmpty &&
                              description != 'Present' &&
                              description != 'No Entry')
                            Padding(
                              padding: EdgeInsets.only(top: 4.h),
                              child: Text(
                                description,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                          if (leaveType != null && leaveType.isNotEmpty)
                            Padding(
                              padding: EdgeInsets.only(top: 4.h),
                              child: Text(
                                leaveType,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                )
              else
                Text(
                  "No activity recorded for this day.",
                  style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                ),
              SizedBox(height: 30.h),
            ],
          ),
        );
      },
    );
  }

  /// HOLIDAY LIST SHEET
  void _showHolidayListSheet(
    BuildContext context,
    List<HolidayItemEntity> holidays,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (context) {
        return Container(
          height: 0.7.sh,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
          ),
          child: Column(
            children: [
              SizedBox(height: 12.h),
              Center(
                child: Container(
                  width: 40.w,
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(2.r),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Icon(
                      LucideIcons.treePalm300,
                      color: Colors.red,
                      size: 24.sp,
                    ),
                    SizedBox(width: 12.w),
                    Text(
                      "Holidays",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Expanded(
                child: holidays.isEmpty
                    ? Center(child: Text("No holidays found"))
                    : ListView.separated(
                        padding: EdgeInsets.all(20.w),
                        itemCount: holidays.length,
                        separatorBuilder: (_, __) => SizedBox(height: 12.h),
                        itemBuilder: (context, index) {
                          final holiday = holidays[index];
                          final date =
                              DateTime.tryParse(holiday.holidayDate) ??
                              DateTime.now();
                          return Container(
                            padding: EdgeInsets.all(16.w),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.r),
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.1),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.03),
                                  blurRadius: 10,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 8.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.red.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        DateFormat('d').format(date),
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                        ),
                                      ),
                                      Text(
                                        DateFormat(
                                          'MMM',
                                        ).format(date).toUpperCase(),
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 16.w),
                                Expanded(
                                  child: Text(
                                    holiday.description,
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xFF344054),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showLeaveListSheet(BuildContext context, List<LeaveItemEntity> leaves) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (context) {
        return Container(
          height: 0.7.sh,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
          ),
          child: Column(
            children: [
              SizedBox(height: 12.h),
              Center(
                child: Container(
                  width: 40.w,
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(2.r),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Icon(
                      LucideIcons.fileClock,
                      color: AppColors.primary,
                      size: 24.sp,
                    ),
                    SizedBox(width: 12.w),
                    Text(
                      "Leave History",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Expanded(
                child: leaves.isEmpty
                    ? Center(child: Text("No leaves found"))
                    : ListView.separated(
                        padding: EdgeInsets.all(20.w),
                        itemCount: leaves.length,
                        separatorBuilder: (_, __) => SizedBox(height: 12.h),
                        itemBuilder: (context, index) {
                          final leave = leaves[index];
                          final date =
                              DateTime.tryParse(leave.date) ?? DateTime.now();
                          return Container(
                            padding: EdgeInsets.all(16.w),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.r),
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.1),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.03),
                                  blurRadius: 10,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10.w),
                                  decoration: BoxDecoration(
                                    color: Colors.orange.withOpacity(0.1),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    LucideIcons.calendarX,
                                    color: Colors.orange,
                                    size: 20.sp,
                                  ),
                                ),
                                SizedBox(width: 16.w),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        DateFormat('MMMM d, yyyy').format(date),
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFF344054),
                                        ),
                                      ),
                                      SizedBox(height: 4.h),
                                      Text(
                                        "${leave.leaveType} • ${leave.dayType}",
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        );
      },
    );
  }

  /// LEGEND
  Widget _buildLegend() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _legendItem("Absent", Colors.red.withOpacity(0.1), border: Colors.red),
        _legendItem(
          "Present",
          Colors.green.withOpacity(0.1),
          border: Colors.green,
        ),
        _legendItem("Holiday", Colors.red),
        _legendItem(
          "Half Day",
          Colors.yellow.withOpacity(0.2),
          border: const Color(0xffcca700),
        ),
      ],
    );
  }

  Widget _legendItem(String label, Color color, {Color? border}) {
    return Row(
      children: [
        Container(
          width: 12.w,
          height: 12.w,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: border != null ? Border.all(color: border) : null,
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          label,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

}