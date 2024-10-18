import 'package:advanced_project/core/di/dependency_injection.dart';
import 'package:advanced_project/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'doc_app.dart';

void main() async{
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter : AppRouter(),)); //act as client app
}
