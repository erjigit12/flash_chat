import 'package:flash/src/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp(
    this.isAuth, {
    super.key,
  });
  final bool isAuth;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: isAuth ? AppPages.HOME : AppPages.FLASH,
      getPages: AppPages.routes,
    );
  }
}
