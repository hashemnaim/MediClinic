import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_cubit/core/theme/styles.dart';
import 'package:learn_cubit/featuers/onBording/widgets/doc_logo_name.dart';
import 'widgets/doctor_image_and_text.dart';
import 'widgets/get_started_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
                  child: Column(children: [
                    const DocLogoAndName(),
                    SizedBox(height: 40.h),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.w),
                        child: const DoctorImageAndText()),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.w),
                        child: Column(children: [
                          Text(
                              'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                              style: TextStyles.font13GrayRegular,
                              textAlign: TextAlign.center),
                          SizedBox(height: 30.h),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.w),
                              child: const GetStartedButton())
                        ]))
                  ])))),
    );
  }
}
