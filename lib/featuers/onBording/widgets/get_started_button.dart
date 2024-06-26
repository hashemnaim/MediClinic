import 'package:flutter/material.dart';

import 'package:learn_cubit/core/helpers/extension.dart';
import 'package:learn_cubit/core/theme/colors.dart';

import '../../../core/routing/routes.dart';
import '../../../core/theme/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.all(
            const Size(double.infinity, 52),
          ),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))),
      child: Text('Get Started', style: TextStyles.font16WhiteMedium),
    );
  }
}
