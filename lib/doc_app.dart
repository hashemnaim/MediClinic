import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_cubit/core/routing/routes.dart';
import 'package:learn_cubit/core/theme/colors.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
          title: "Doc App",
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.onBordingScreen,
          theme: ThemeData(
            primaryColor: ColorManager.mainBlue,
            scaffoldBackgroundColor: Colors.white,
          )),
    );
  }
}
