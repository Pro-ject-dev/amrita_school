import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../theme/colors/app_colors.dart';
import '../../../../theme/icons/app_icons.dart';
import '../viewmodel/attendance_viewmodel.dart';
import '../widgets/confirmationDialog.dart';
import '../widgets/student_card.dart';
import '../widgets/successBottomSheet.dart';

class AttendancePage extends ConsumerStatefulWidget {
  const AttendancePage({super.key});

  @override
  ConsumerState<AttendancePage> createState() => _AttendanceState();
}

class _AttendanceState extends ConsumerState<AttendancePage> {
  final searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(homeProvider.notifier)
          .fetchAttendance("", DateFormat('yyyy-MM-dd').format(DateTime.now()));
      ref.read(homeProvider.notifier).greeting();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final homeState = ref.watch(homeProvider);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
    );

    ref.listen(homeProvider.select((state) => state.updateResponse), (
      previous,
      next,
    ) {
      // if (previous?.isSuccess == next.isSuccess &&
      //     previous?.message == next.message) {
      //   return;
      // }

      if (next.isSuccess == true) {
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
          ),
          builder: (_) => successBottomSheet(
            context,
            next.presentCount ?? 0,
            next.absentCount ?? 0,
            next.message,
          ),
        );
      } else if (next.isSuccess == false) {
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
          ),
          builder: (_) => successBottomSheet(
            context,
            next.presentCount ?? 0,
            next.absentCount ?? 0,
            next.message,
          ),
        );
      }
    });

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Attendance', style: TextStyle(color: Colors.white)),
        backgroundColor: AppColors.primary,
        // leading: Container(),
        automaticallyImplyLeading: false,
        actions: [
          InkWell(
            onTap: () {
              context.pop();
            },
            child: Container(
              margin: EdgeInsets.only(right: 16.sp),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.white.withOpacity(0.1),
              ),
              child: Text('Back to class', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10),
        color: AppColors.primary,
        child: Column(
          children: [
            // ---------------------- YOUR ORIGINAL UI ----------------------
            // NOTHING CHANGED HERE
            // --------------------------------------------------------------
            SafeArea(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: () {
                                  ref
                                      .read(homeProvider.notifier)
                                      .previousDate();
                                },
                                icon: Icon(
                                  LucideIcons.chevronLeft,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                homeState.date,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 13.67.sp,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  if (!homeState.date.startsWith("Today,")) {
                                    ref.read(homeProvider.notifier).nextDate();
                                  }
                                },
                                icon: Icon(
                                  LucideIcons.chevronRight,
                                  color: homeState.date.startsWith("Today,")
                                      ? const Color.fromARGB(255, 152, 152, 152)
                                      : Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                          child: VerticalDivider(
                            thickness: 1,
                            color: Colors.white30,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            final DateTime? date = await showDatePicker(
                              context: context,
                              initialDate: homeState.date.startsWith("Today,")
                                  ? DateTime.now()
                                  : DateFormat('yyyy').parse(homeState.date),
                              firstDate: DateTime(2020),
                              lastDate: DateTime.now(),
                              builder: (context, child) {
                                return Theme(
                                  data: Theme.of(context).copyWith(
                                    colorScheme: const ColorScheme.light(
                                      primary: AppColors.primary,
                                    ),
                                    textButtonTheme: TextButtonThemeData(
                                      style: TextButton.styleFrom(
                                        foregroundColor: AppColors.primary,
                                      ),
                                    ),
                                  ),
                                  child: child!,
                                );
                              },
                            );
                            if (date != null) {
                              final formattedDate = DateFormat(
                                'yyyy-MM-dd',
                              ).format(date);
                              final notifier = ref.read(homeProvider.notifier);
                              final currentFormatted = DateFormat(
                                'yyyy-MM-dd',
                              ).format(notifier.parseCurrentDate());
                              if (formattedDate != currentFormatted) {
                                await notifier.getDate(formattedDate);
                                await notifier.fetchAttendance(
                                  "",
                                  formattedDate,
                                );
                              }
                            }
                          },
                          icon: const Icon(
                            LucideIcons.calendar,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 2.w),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // ---- CONTENT SECTION (unchanged) ----
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 5.h),
                padding: EdgeInsets.only(top: 16.w, left: 16.w, right: 16.w),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: theme.scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.r),
                    topRight: Radius.circular(24.r),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Student List (${homeState.attendanceList?.length ?? 0})",
                          style: theme.textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp,
                          ),
                        ),

                        Visibility(
                          visible: homeState.isInvidualChecked,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            color: AppColors.primary,
                            onPressed: () {
                              confirmationDialog(
                                theme,
                                context,
                                "Confirmation",
                                "Mark selected students?",
                                () {
                                  ref
                                      .read(homeProvider.notifier)
                                      .individualUpdatedAttendanceList();
                                  context.pop();
                                },
                              );
                            },
                            child: Text(
                              "Mark Attendance",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Selected buttons logic — unchanged
                    Visibility(
                      visible: homeState.isChecked,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Row(
                          children: [
                            Expanded(
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                color: theme.primaryColor,
                                onPressed: () {
                                  confirmationDialog(
                                    theme,
                                    context,
                                    "Confirmation",
                                    "Mark selected students as present?",
                                    () {
                                      ref
                                          .read(homeProvider.notifier)
                                          .updatedAttendanceList(true);
                                      context.pop();
                                    },
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Mark Present",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20.w),
                            Expanded(
                              child: MaterialButton(
                                onPressed: () {
                                  confirmationDialog(
                                    theme,
                                    context,
                                    "Confirmation",
                                    "Mark selected students as absent?",
                                    () {
                                      ref
                                          .read(homeProvider.notifier)
                                          .updatedAttendanceList(false);
                                      context.pop();
                                    },
                                  );
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                color: Colors.red,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Mark Absent",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 10.h),

                    // SEARCH BAR — unchanged
                    SizedBox(
                      height: 52.h,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(color: Colors.grey.shade300),
                                color: Colors.grey.shade100,
                              ),
                              child: TextField(
                                controller: searchController,
                                onChanged: (value) => ref
                                    .read(homeProvider.notifier)
                                    .fetchAttendance(value, homeState.date),
                                decoration: InputDecoration(
                                  hintText: "Search student",
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 202, 202, 202),
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  border: InputBorder.none,
                                  icon: SvgPicture.asset(
                                    AppIcons.search,
                                    width: 18.w,
                                    height: 18.h,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Visibility(
                            visible:
                                !homeState.isIndividual &&
                                ref.read(homeProvider.notifier).isSelectAll(),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Checkbox(
                                  value: homeState.isCheckedSelectAll,
                                  onChanged: (v) {
                                    ref
                                        .read(homeProvider.notifier)
                                        .toggleSelectAll(v!);
                                  },
                                  fillColor: MaterialStateProperty.resolveWith(
                                    (_) => Colors.white,
                                  ),
                                  side: MaterialStateBorderSide.resolveWith(
                                    (_) => BorderSide(
                                      color: theme.primaryColor,
                                      width: 1,
                                    ),
                                  ),
                                  checkColor: theme.primaryColor,
                                  visualDensity: VisualDensity.comfortable,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.padded,
                                ),
                                Text(
                                  homeState.isCheckedSelectAll
                                      ? "Unselect All"
                                      : "Select All",
                                  style: theme.textTheme.headlineSmall
                                      ?.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromARGB(
                                          255,
                                          117,
                                          117,
                                          117,
                                        ),
                                        fontSize: 10.sp,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 5.h),

                    // Tabs (All / Individual)
                    Row(
                      children: [
                        InkWell(
                          onTap: () =>
                              ref.read(homeProvider.notifier).changePage(0),
                          child: Card(
                            elevation: !homeState.isIndividual ? 4 : 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.r),
                            ),
                            color: !homeState.isIndividual
                                ? AppColors.primary
                                : Colors.white,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 18.w,
                                vertical: 8.h,
                              ),
                              child: Text(
                                "All",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: !homeState.isIndividual
                                      ? Colors.white
                                      : Color.fromARGB(255, 74, 74, 74),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5.w),
                        InkWell(
                          onTap: () =>
                              ref.read(homeProvider.notifier).changePage(1),
                          child: Card(
                            elevation: homeState.isIndividual ? 4 : 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.r),
                            ),
                            color: homeState.isIndividual
                                ? AppColors.primary
                                : Colors.white,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 18.w,
                                vertical: 8.h,
                              ),
                              child: Text(
                                "Individual",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: homeState.isIndividual
                                      ? Colors.white
                                      : Color.fromARGB(255, 74, 74, 74),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10.h),

                    // PageView
                    Expanded(
                      child: PageView(
                        controller: ref
                            .read(homeProvider.notifier)
                            .pageController,
                        onPageChanged: (index) =>
                            ref.read(homeProvider.notifier).changePage(index),
                        children: [
                          buildStudentList(
                            homeState,
                            theme,
                            ref,
                            isIndividual: false,
                          ),
                          buildStudentList(
                            homeState,
                            theme,
                            ref,
                            isIndividual: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ------------------ Student List Method (UNCHANGED) ------------------
  Widget buildStudentList(
    dynamic homeState,
    ThemeData theme,
    WidgetRef ref, {
    required bool isIndividual,
  }) {
    if (homeState.error != null) {
      return Center(child: Text("Error: ${homeState.error}"));
    }

    final itemCount = homeState.isLoading
        ? 5
        : (homeState.attendanceList?.length ?? 0);

    return ListView.builder(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: itemCount,
      itemBuilder: (context, i) {
        if (homeState.isLoading) {
          return Skeletonizer(
            enabled: true,
            child: StudentCard(
              isIndividual: isIndividual,
              attendanceStatus: "loading",
              name: "Temp",
              id: "Temp",
              imageUrl: "https://i.pravatar.cc/150?img=${i + 1}",
              onPresent: () =>
                  ref.read(homeProvider.notifier).toggleAttendance(i, true),
              onAbsent: () =>
                  ref.read(homeProvider.notifier).toggleAttendance(i, false),
              onCheckboxChanged: (bool? value) =>
                  ref.read(homeProvider.notifier).toggleSelection(""),
              isPresent: true,
              isAbsent: true,
              isChecked: false,
            ),
          );
        }

        final student = homeState.attendanceList![i];
        final isPresent = student.attendanceStatus == "Present";
        final isAbsent = student.attendanceStatus == "Absent";
        final isChecked = student.isChecked;

        final originalStatus =
            homeState.originalAttendanceList != null &&
                homeState.originalAttendanceList!.length > i
            ? homeState.originalAttendanceList![i].attendanceStatus
            : "";

        return StudentCard(
          isIndividual: isIndividual,
          attendanceStatus: originalStatus,
          name: student.studentName,
          id: student.student,
          imageUrl: "https://i.pravatar.cc/150?img=${i + 1}",
          onPresent: () =>
              ref.read(homeProvider.notifier).toggleAttendance(i, true),
          onAbsent: () =>
              ref.read(homeProvider.notifier).toggleAttendance(i, false),
          onCheckboxChanged: (bool? value) =>
              ref.read(homeProvider.notifier).toggleSelection(student.student),
          isPresent: isPresent,
          isAbsent: isAbsent,
          isChecked: isChecked,
        );
      },
    );
  }
}
