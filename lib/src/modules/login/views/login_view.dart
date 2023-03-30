import 'package:flash/src/components/button/login_button.dart';
import 'package:flash/src/components/logo/animation_logo.dart';
import 'package:flash/src/constants/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../components/text_from_field.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView(this.isLogin, {super.key});
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const AnimationLogo(
              size: 200,
            ),
            Column(
              children: [
                CustomTextField(
                  controller: controller.emailCtl,
                  hintText: 'enter your email',
                  labelText: 'Email',
                ),
                const SizedBox(height: 12),
                CustomTextField(
                  controller: controller.passwordCtl,
                  hintText: 'enter your password',
                  labelText: 'Password',
                ),
              ],
            ),
            CustomButton(
              onPressed: () async {
                await controller.loginRegister(isLogin);
              },
              text: isLogin ? 'Login' : 'Register',
              color: AppColors.loginColor,
            ),
          ],
        ),
      ),
    );
  }
}
