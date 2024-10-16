import 'package:advanced_project/feature/onboarding/widget/doc_logo_and_name.dart';
import 'package:advanced_project/feature/onboarding/widget/doctor_image_text.dart';
import 'package:advanced_project/feature/onboarding/widget/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theming/styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h,
            ),
            child: Column(
              children:  [
                const DocLogoAndName(),
                SizedBox(height: 30.h),
                const DoctorImageAndName(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments',
                        style: TextStyles.font13GrayRegular,
                        textAlign: TextAlign.center,
                      ), // Text
                      SizedBox(height: 30.h),
                      const GetStartedButton(),
                    ],
                  ), // Column
                ), // Padding


              ],
            ),
          ),
        ),
      ),
    );
  }
}
