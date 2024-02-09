import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_cubit/core/routing/app_router.dart';
import 'package:learn_cubit/core/routing/routes.dart';
import 'package:learn_cubit/core/theme/colors.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
          title: "Docdoc App",
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.onBordingScreen,
          onGenerateRoute: appRouter.generateRoute,
          theme: ThemeData(
              primaryColor: ColorsManager.mainBlue,
              scaffoldBackgroundColor: Colors.white)),
    );
  }
}
