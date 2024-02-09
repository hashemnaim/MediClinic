import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_cubit/core/helpers/spacing.dart';
import 'package:learn_cubit/core/theme/styles.dart';
import 'package:learn_cubit/core/widgets/app_text_button.dart';
import 'package:learn_cubit/featuers/login/data/models/login_request_body.dart';
import 'package:learn_cubit/featuers/login/logic/cubit/login_cubit.dart';
import 'package:learn_cubit/featuers/login/ui/widgets/dont_have_account_text.dart';
import 'package:learn_cubit/featuers/login/ui/widgets/email_and_password.dart';
import 'package:learn_cubit/featuers/login/ui/widgets/login_logic_listener.dart';
import 'package:learn_cubit/featuers/login/ui/widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24BlueBold),
                verticalSpace(8),
                SizedBox(
                  width: 330,
                  child: Text(
                      "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                      style: TextStyles.font14GrayRegular),
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    // verticalSpace(18),
                    // AppTextFormField(
                    //   hintText: "Password",
                    //   isObscureText: isObscureText,
                    //   suffixIcon: GestureDetector(
                    //     onTap: () {
                    //       setState(() {
                    //         isObscureText = !isObscureText;
                    //       });
                    //     },
                    //     child: Icon(isObscureText
                    //         ? Icons.visibility_off
                    //         : Icons.visibility),
                    //   ),
                    // ),

                    verticalSpace(24),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forget Password?",
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                        buttonText: "Login",
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {
                          validateThenDoLogin(context);
                        }),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(60),
                    const DontHaveAccountText(),
                    const LoginBlocListener()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
