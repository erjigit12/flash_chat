import 'package:flash/src/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp(
    this.isRegister, {
    super.key,
  });
  final bool isRegister;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: isRegister ? AppPages.FLASH : AppPages.HOME,
      getPages: AppPages.routes,
    );
  }
}
