import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../viewmodel/home_viewmodel.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: state.isLoading
            ? const CircularProgressIndicator()
            : Text(state.data),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(homeProvider.notifier).load(),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
