// ignore_for_file: sort_child_properties_last

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash/src/components/button/login_button.dart';
import 'package:flash/src/components/logo/animation_logo.dart';
import 'package:flash/src/constants/app_colors.dart';
import 'package:flash/src/constants/app_text_style.dart';
import 'package:flash/src/modules/flash/controllers/flash_controller.dart';
import 'package:flash/src/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class FlashView extends GetView<FlashController> {
  const FlashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AnimationLogo(),
              DefaultTextStyle(
                style: AppTextStyle.flashChat,
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText('Flash Chat'),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          CustomButton(
            onPressed: () async => Get.toNamed(Routes.LOGIN, arguments: true),
            text: 'login',
            color: AppColors.loginColor,
          ),
          const SizedBox(height: 12),
          CustomButton(
            onPressed: () async => Get.toNamed(Routes.LOGIN, arguments: false),
            text: 'register',
            color: AppColors.registerColor,
          ),
        ],
      ),
    );
  }
}
