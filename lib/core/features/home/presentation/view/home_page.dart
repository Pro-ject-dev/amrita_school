import 'package:amrita_vidhyalayam_teacher/core/features/home/presentation/widgets/student_card.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/colors/app_colors.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/icons/app_icons.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/images/app_images.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../data/models/attendance_model.dart';
import '../viewmodel/home_viewmodel.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(homeProvider.notifier)
          .fetchAttendance(
            "",
            DateFormat('dd-MM-yyyy').format(DateTime.now()).toString(),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final homeState = ref.watch(homeProvider);

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images/bg-test2.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.2),
              BlendMode.darken,
            ),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40.h),

                  /// Top Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(AppImages.app_logo, width: 100.w),
                      const Icon(LucideIcons.logOut, color: Colors.white),
                    ],
                  ),

                  SizedBox(height: 22.h),

                  Text(
                    AppStrings.welcome_title,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontSize: 20.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8.h),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Color(0xff254671),
                    ),
                    child: Text(
                      AppStrings.class_txt,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  SizedBox(height: 10.h),

                  Divider(color: Colors.white30, thickness: 0.8.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              onPressed: () {
                                ref.read(homeProvider.notifier).previousDate();
                              },
                              icon: const Icon(
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
                                if (homeState.date.startsWith("Today,")) {
                                  return;
                                } else {
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
                        child: const VerticalDivider(
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
                                : DateFormat(
                                    'dd-MM-yyyy',
                                  ).parse(homeState.date),
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
                              'dd-MM-yyyy',
                            ).format(date);
                            final notifier = ref.read(homeProvider.notifier);
                            final currentFormatted = DateFormat(
                              'dd-MM-yyyy',
                            ).format(notifier.parseCurrentDate());
                            if (formattedDate != currentFormatted) {
                              await notifier.getDate(formattedDate);
                              await notifier.fetchAttendance("", formattedDate);
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

            /// Bottom Sheet
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
                    Text(
                      "Student List (${homeState.attendanceList?.length ?? 0})",
                      style: theme.textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.sp,
                      ),
                    ),

                    /// Bulk action buttons
                    Visibility(
                      visible: homeState.isChecked,
                      child: Column(
                        children: [
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                color: theme.primaryColor,
                                onPressed: () {},
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
                              SizedBox(width: 20.w),
                              MaterialButton(
                                onPressed: () {},
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
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 10.h),

                    /// Search box + select all
                    SizedBox(
                      height: 45.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
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
                                    color: const Color.fromARGB(
                                      255,
                                      202,
                                      202,
                                      202,
                                    ),
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

                          /// Select all
                          Visibility(
                            visible: !homeState.isIndividual,
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
                                  fillColor: WidgetStateProperty.resolveWith((
                                    states,
                                  ) {
                                    return Colors.white;
                                  }),
                                  side: WidgetStateBorderSide.resolveWith((
                                    states,
                                  ) {
                                    return BorderSide(
                                      color: theme.primaryColor,
                                      width: 1,
                                    );
                                  }),
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
                                        color: const Color.fromARGB(
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

                    /// Tabs: All / Individual
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            ref.read(homeProvider.notifier).changePage(0);
                          },
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
                                horizontal: 15.0.w,
                                vertical: 7.0.h,
                              ),
                              child: Text(
                                "All",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: !homeState.isIndividual
                                      ? Colors.white
                                      : const Color.fromARGB(255, 74, 74, 74),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5.w),
                        InkWell(
                          onTap: () {
                            ref.read(homeProvider.notifier).changePage(1);
                          },
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
                                horizontal: 15.0.w,
                                vertical: 7.0.h,
                              ),
                              child: Text(
                                "Individual",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: homeState.isIndividual
                                      ? Colors.white
                                      : const Color.fromARGB(255, 74, 74, 74),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 10.h),

                    /// PageView: All / Individual
                    Expanded(
                      child: PageView(
                        controller: ref
                            .read(homeProvider.notifier)
                            .pageController,
                        onPageChanged: (index) {
                          ref.read(homeProvider.notifier).changePage(index);
                        },
                        children: [
                          /// TAB 1 – ALL
                          if (homeState.error != null)
                            Center(child: Text("Error: ${homeState.error}"))
                          else
                            Skeletonizer(
                              enabled: homeState.isLoading,
                              child: homeState.isLoading
                                  ? ListView.builder(
                                      physics: const BouncingScrollPhysics(),
                                      padding: EdgeInsets.zero,
                                      itemCount: 10,
                                      itemBuilder: (_, i) {
                                        const student = StudentAttendance(
                                          student: "Student Name",
                                          attendanceStatus: "Present",
                                          attendanceOn: "2024-01-01",
                                          studentName: "Student Name",
                                          isChecked: false,
                                        );
                                        return StudentCard(
                                          isIndividual: false,
                                          name: student.studentName,
                                          id: student.student,
                                          imageUrl:
                                              "https://i.pravatar.cc/150?img=${i + 1}",
                                          onPresent: () {},
                                          onAbsent: () {},
                                          onCheckboxChanged: (_) {},
                                          isPresent: true,
                                          isAbsent: false,
                                          isChecked: false,
                                        );
                                      },
                                    )
                                  : (homeState.attendanceList == null ||
                                        homeState.attendanceList!.isEmpty)
                                  ? Expanded(
                                      child: Column(
                                        mainAxisAlignment: .center,
                                        children: [
                                          // LottieBuilder.asset('assets/images/notfound.json',width: 200,),
                                          Image.asset(
                                            'assets/images/new-unscreen.gif',
                                          ),
                                          Text(
                                            "No students found",
                                            style: theme.textTheme.titleMedium
                                                ?.copyWith(
                                                  color: Colors.grey.shade600,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : ListView.builder(
                                      physics: const BouncingScrollPhysics(),
                                      padding: EdgeInsets.zero,
                                      itemCount:
                                          homeState.attendanceList!.length,
                                      itemBuilder: (_, i) {
                                        final student =
                                            homeState.attendanceList![i];
                                        final isPresent =
                                            student.attendanceStatus ==
                                            "Present";
                                        final isAbsent =
                                            student.attendanceStatus ==
                                            "Absent";
                                        final isChecked = student.isChecked;

                                        return StudentCard(
                                          isIndividual: false,
                                          name: student.studentName,
                                          id: student.student,
                                          imageUrl:
                                              "https://i.pravatar.cc/150?img=${i + 1}",
                                          onPresent: () => ref
                                              .read(homeProvider.notifier)
                                              .toggleAttendance(i, true),
                                          onAbsent: () => ref
                                              .read(homeProvider.notifier)
                                              .toggleAttendance(i, false),
                                          onCheckboxChanged: (bool? value) =>
                                              ref
                                                  .read(homeProvider.notifier)
                                                  .toggleSelection(
                                                    student.student,
                                                  ),
                                          isPresent: isPresent,
                                          isAbsent: isAbsent,
                                          isChecked: isChecked,
                                        );
                                      },
                                    ),
                            ),

                          /// TAB 2 – INDIVIDUAL
                          if (homeState.error != null)
                            Center(child: Text("Error: ${homeState.error}"))
                          else
                            Skeletonizer(
                              enabled: homeState.isLoading,
                              child: homeState.isLoading
                                  ? ListView.builder(
                                      physics: const BouncingScrollPhysics(),
                                      padding: EdgeInsets.zero,
                                      itemCount: 10,
                                      itemBuilder: (_, i) {
                                        const student = StudentAttendance(
                                          student: "Student Name",
                                          attendanceStatus: "Present",
                                          attendanceOn: "2024-01-01",
                                          studentName: "Student Name",
                                          isChecked: false,
                                        );
                                        return StudentCard(
                                          isIndividual: true,
                                          name: student.studentName,
                                          id: student.student,
                                          imageUrl:
                                              "https://i.pravatar.cc/150?img=${i + 1}",
                                          onPresent: () {},
                                          onAbsent: () {},
                                          onCheckboxChanged: (_) {},
                                          isPresent: true,
                                          isAbsent: false,
                                          isChecked: false,
                                        );
                                      },
                                    )
                                  : (homeState.attendanceList == null ||
                                        homeState.attendanceList!.isEmpty)
                                  ? Expanded(
                                      child: Column(
                                        mainAxisAlignment: .center,
                                        children: [
                                          // LottieBuilder.asset('assets/images/notfound.json',width: 200,),
                                          Image.asset(
                                            'assets/images/new-unscreen.gif',
                                          ),
                                          Text(
                                            "No students found",
                                            style: theme.textTheme.titleMedium
                                                ?.copyWith(
                                                  color: Colors.grey.shade600,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : ListView.builder(
                                      physics: const BouncingScrollPhysics(),
                                      padding: EdgeInsets.zero,
                                      itemCount:
                                          homeState.attendanceList!.length,
                                      itemBuilder: (_, i) {
                                        final student =
                                            homeState.attendanceList![i];
                                        final isPresent =
                                            student.attendanceStatus ==
                                            "Present";
                                        final isAbsent =
                                            student.attendanceStatus ==
                                            "Absent";
                                        final isChecked = student.isChecked;

                                        return StudentCard(
                                          isIndividual: true,
                                          name: student.studentName,
                                          id: student.student,
                                          imageUrl:
                                              "https://i.pravatar.cc/150?img=${i + 1}",
                                          onPresent: () => ref
                                              .read(homeProvider.notifier)
                                              .toggleAttendance(i, true),
                                          onAbsent: () => ref
                                              .read(homeProvider.notifier)
                                              .toggleAttendance(i, false),
                                          onCheckboxChanged: (bool? value) =>
                                              ref
                                                  .read(homeProvider.notifier)
                                                  .toggleSelection(
                                                    student.student,
                                                  ),
                                          isPresent: isPresent,
                                          isAbsent: isAbsent,
                                          isChecked: isChecked,
                                        );
                                      },
                                    ),
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
}
