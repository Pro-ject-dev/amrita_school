import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../viewmodel/auth_viewmodel.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authProvider);

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            
            decoration: BoxDecoration(
              gradient: LinearGradient(
                 begin: Alignment(0.50, -0.00),
              end: Alignment(0.50, 1.00),
              colors: [const Color(0xFF0B3160), const Color(0xFF1665C6)],
            ),
          ))
        ],
      )
    );
  }
}
