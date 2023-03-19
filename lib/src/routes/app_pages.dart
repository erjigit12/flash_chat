// ignore_for_file: constant_identifier_names

import 'package:flash/src/modules/login/bindings/login_binding.dart';
import 'package:flash/src/modules/login/views/login_view.dart';
import 'package:get/get.dart';
import 'package:flash/src/modules/flash/bindings/flash_binding.dart';
import 'package:flash/src/modules/flash/views/flash_view.dart';
import 'package:flash/src/modules/home/bindings/home_binding.dart';
import 'package:flash/src/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const FLASH = Routes.FLASH;
  static const HOME = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FLASH,
      page: () => const FlashView(),
      binding: FlashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(Get.arguments as bool),
      binding: LoginBinding(),
    ),
  ];
}
