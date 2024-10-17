//client app
import 'package:advanced_project/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';
import 'core/theming/colors.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return 
      // MaterialApp(
      //   title: 'Doc App',
      //   theme: ThemeData(
      //     primaryColor: ColorsManager.mainBlue,
      //     scaffoldBackgroundColor: Colors.white
      //   ),
      //   debugShowCheckedModeBanner: false,
      //   initialRoute: Routes.onBoardingScreen,
      //   onGenerateRoute: appRouter.generateRoute,
    //  ),
      ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Doc App',
            theme: ThemeData(
              primaryColor: ColorsManager.mainBlue,
              scaffoldBackgroundColor: Colors.white,
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: Routes.onBoardingScreen,
            onGenerateRoute: appRouter.generateRoute,
             // قد يكون لديك home أو يمكنك تعيين child
          );
        },
        child: const Placeholder(), // يمكنك وضع الصفحة الرئيسية هنا أو تغييرها بصفحتك المطلوبة.
      );
  }
}

