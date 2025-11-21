import 'package:amrita_vidhyalayam_teacher/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context ,WidgetRef ref) {
    final router = ref.read(routerProvider);
    return  ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Amrita Vidhyalayam Teacher App',
          theme: ThemeData(
            colorScheme: .fromSeed(seedColor: Colors.deepPurple),
          ),
          routerConfig: router,
        );
      }
    );
  }
}

