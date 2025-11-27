import 'package:amrita_vidhyalayam_teacher/core/features/student/presentation/widgets/student_card.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../viewmodel/student_viewmodel.dart';

class StudentPage extends ConsumerStatefulWidget {
  const StudentPage({super.key});

  @override
  ConsumerState<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends ConsumerState<StudentPage> {
  final searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(studentProvider.notifier).fetchStudent("");
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(studentProvider);
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: const Color(0xffF5F7FA),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffF5F7FA),
  
        title: const Text("Student Page"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: const Icon(LucideIcons.ellipsisVertical),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10.h),

          // Search Bar
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: TextField(
                controller: searchController,
                onChanged: (value) {
                  ref.read(studentProvider.notifier).fetchStudent(value);
                },
                decoration: InputDecoration(
                  hintText: 'Search student',
                  icon: Icon(LucideIcons.search, color: AppColors.grey500),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          SizedBox(height: 20.h),

          // Student List
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Builder(
                builder: (_) {
                  if (state.error != null) {
                    return Center(
                      child: Text(
                        "Error: ${state.error}",
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: Colors.red,
                        ),
                      ),
                    );
                  }

                  // ⛔ No students found
                  if (!state.isLoading &&
                      (state.studentList == null ||
                          state.studentList!.isEmpty)) {
                    return Expanded(
                      child: Column(
                        mainAxisAlignment: .center,
                        children: [
                          // LottieBuilder.asset('assets/images/notfound.json',width: 200,),
                          Image.asset('assets/images/new-unscreen.gif'),
                          Text(
                            "No students found",
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    );
                  }

                  return Skeletonizer(
                    enabled: state.isLoading,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: state.isLoading
                          ? 10
                          : (state.studentList?.length ?? 0),
                      itemBuilder: (context, index) {
                        if (state.isLoading) {
                          return const StudentCard(
                            title: "Student Name",
                            subtitle: "ID",
                            isActiveColor: Colors.green,
                          );
                        }

                        final student = state.studentList![index];

                        return StudentCard(
                          title: student.studentName,
                          subtitle: student.student,
                          isActiveColor: student.attendanceStatus == "Present"
                              ? Colors.green
                              : Colors.red,
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
