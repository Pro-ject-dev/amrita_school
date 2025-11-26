import 'package:amrita_vidhyalayam_teacher/core/features/student/presentation/widgets/student_card.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/colors/app_colors.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import '../viewmodel/student_viewmodel.dart';

class StudentPage extends ConsumerStatefulWidget {
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
      backgroundColor: Color(0xffF5F7FA),
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Color(0xffF5F7FA),
        backgroundColor: Color(0xffF5F7FA),
        leading: Icon(LucideIcons.chevronLeft),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Icon(LucideIcons.ellipsisVertical),
          ),
        ],
        title: const Text("Student Page"),
      ),
      body: Column(
        children: [
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: TextField(
                onChanged: (value) {
                  ref.read(studentProvider.notifier).fetchStudent(value);
                },
                decoration: InputDecoration(
                  hintText: 'Search student',
                  // hint: Text('data'),
                  icon: Icon(LucideIcons.search, color: AppColors.grey500),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                // shrinkWrap: BouncingScrollPhysics.,
                // padding: EdgeInsets.all(0),
                itemCount: state.studentList == null
                    ? 0
                    : state.studentList!.length,
                itemBuilder: (BuildContext context, int index) {
                  var student = state.studentList![index];
                  return StudentCard(
                    title: student.studentName,
                    subtitle: student.student,
                    isActiveColor: student.attendanceStatus == "Present"
                        ? Colors.green
                        : Colors.red,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
