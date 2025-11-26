import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../viewmodel/student_viewmodel.dart';

class StudentPage extends ConsumerWidget {
  const StudentPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(studentProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Student Page")),
      body: Center(
        child: state.isLoading
            ? const CircularProgressIndicator()
            : Text(state.data),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(studentProvider.notifier).load(),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
