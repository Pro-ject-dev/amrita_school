import 'package:amrita_vidhyalayam_teacher/core/features/my_class/presentation/widgets/test.dart';
import 'package:amrita_vidhyalayam_teacher/core/providers/common_providers.dart';
import 'package:amrita_vidhyalayam_teacher/core/router/router.dart';
import 'package:amrita_vidhyalayam_teacher/core/theme/strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/theme/app_theme.dart' show AppTheme;

void main() {
  runApp(ProviderScope(child: MyApp()));
}

    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
class MyApp extends ConsumerWidget {


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
    );
    final router = ref.read(routerProvider);
    final isDarkMode = ref.watch(isDarkModeProvider);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
      //  return MaterialApp(home: Scaffold(body: Center(child: Column(
      //   mainAxisAlignment: .center,
      //    children: [
      //      CalanderCard(),
      //    ],
      //  )),),);
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: AppStrings.appTitle ,
          themeMode:isDarkMode? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.light(),
          darkTheme: AppTheme.dark(),
          
          
          routerConfig: router,
        );
      },
    );
  }
}
