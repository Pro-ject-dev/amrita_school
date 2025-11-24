import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
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
            height:500.h,
            width: double.infinity,
            child: MaterialButton(
              child: Text('Go to Home'),
              onPressed: (){
              context.go('/home');
            },),
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
