// ignore_for_file: unused_local_variable

import 'dart:developer';

import 'package:flash/src/modules/login/service/login_service.dart';
import 'package:flash/src/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../utils/alert/alert_dialog.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final emailCtl = TextEditingController();
  final passwordCtl = TextEditingController();

  final count = 0.obs;

  Future<void> loginRegister(bool isLogin) async {
    if (formKey.currentState!.validate() &&
        GetUtils.isEmail(emailCtl.text) &&
        GetUtils.isPassport(passwordCtl.text)) {
      AppDialog.showLoading();
      final user = isLogin
          ? await LoginService.login(emailCtl.text, passwordCtl.text)
          : await LoginService.register(emailCtl.text, passwordCtl.text);

      Get.back();
      if (user != null) {
        await Get.offAllNamed(Routes.HOME);
      } else {
        AppDialog().alertDialog(
            isLogin
                ? 'Логин же паролдо ката бар'
                : 'Кайрадан регистрация кылыныз',
            'Error');
      }
    } else {
      log('Error');
    }
  }
}
