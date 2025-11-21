import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../viewmodel/auth_viewmodel.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Auth Page")),
      body: Center(
        child: state.isLoading
            ? const CircularProgressIndicator()
            : Text(state.data),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(authProvider.notifier).load(),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
